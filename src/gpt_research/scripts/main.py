#!/usr/bin/python3
import sys
import cv2
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import rospy
from gpt_server.srv import GPTGenerate, GPTGenerateResponse, GPTGenerateRequest  # Import GPT service definition
from emotion_server.srv import EmotionGenerate, EmotionGenerateResponse, EmotionGenerateRequest
from hri_msgs.msg import LiveSpeech
from actionlib import SimpleActionClient
from pal_interaction_msgs.msg import TtsAction, TtsGoal
from sensor_msgs.msg import Image
import numpy as np
from audio_common_msgs.msg import AudioData     # /audio/speech
from std_msgs.msg import Bool, String                   # /audio/voice_detected
from pyhri import HRIListener
import wave
import os
from openai import OpenAI
import message_filters
from pal_interaction_msgs.srv import GetSpeechDuration, GetSpeechDurationRequest, GetSpeechDurationResponse
from rospy import Duration

from multiprocessing import Process

DUMMY_WAVE = '/home/robocupathome/workspace/eddy_code/src/DummyFiles/0_0.wav'
DUMMY_TXT= '/home/robocupathome/workspace/eddy_code/src/DummyFiles/0_0.txt'
DUMMY_VIDEO= '/home/robocupathome/workspace/eddy_code/src/DummyFiles/0_0.mp4'




client = OpenAI(api_key="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")

class Node:

    def __init__(self):
        print(":)")

        rospy.init_node('gpt_research')
        self.id = rospy.get_param('~id', '0')
        self.initialEmotion = ''
        self.finalEmotion = ''
        # Connect to the GPT server.
        # From now one, when you want to receive response from chatgpt, you can do:
        # response = self.gptServer(prompt)

        # Raw audio stream of user's speech data
        self.audioStream = rospy.Subscriber('/audio/speech', AudioData, self.OnAudioStream)
        # init a counter, used to save .wav files with incremental counter
        self.counter = 0

        self.isSpeechDetectedSub = rospy.Subscriber('/audio/voice_detected', Bool, self.OnUserSpeechDetected)


        self.speechBeginTime = -1   # -1 to indicate that speech has not started yet.
        self.speechEndTime = -1
        self.recordStarted = False
        # initialize the parameters for the camera
        self.bridge = CvBridge()
        self.cv_image = None
        self.record_sub = rospy.Subscriber('/head_front_camera/color/image_raw', Image, self.record_callback)
        self.video_writer = None  # Initialize video_writer to None
        self.fourcc = cv2.VideoWriter_fourcc(*'mp4v')
        
        self.record_sub = None

        # Three flags to indicate what data to get for emotion analysis
        self.get_video = False
        self.get_audio = False
        self.get_text = False
        self.emotion = 'happy'
        self.wav_file_path = None
        self.video_file_path = '/home/robocupathome/workspace/eddy_code/src/DATA/0_0.mp4'
        self.txt_file_path = None
        self.robot_speech = False
        self.recording = False
        self.speech_detected = False



        print('Waiting for GPT server to be availale')
        self.gptServer = rospy.ServiceProxy('/gpt_generate', GPTGenerate)
        self.gptServer.wait_for_service()
        print('Successfully connected to /gpt_generate')

        # connect to the emotion server
        print('Waiting for Emotion server to be availale')
        self.emotionServer = rospy.ServiceProxy('/emotion_generate', EmotionGenerate)
        self.emotionServer.wait_for_service()
        print('Successfully connected to /emotion_generate')

        # initiazlie gpt_speech_duration in case the robot take it's own words as input
        self.speech_duration = rospy.ServiceProxy('/get_speech_duration',GetSpeechDuration)

        self.hri = HRIListener()

        # # Subscribe to speech recognition topic. Whenever speech is received, OnSpeechReceived() is invoked.
        # self.humanSpeech = rospy.Subscriber('/humans/voices/anonymous_speaker/speech', LiveSpeech, self.OnSpeechReceived)

        # Publish to /tts
        self.tts = SimpleActionClient('/tts', TtsAction)
        self.tts.wait_for_server()

        # Manual Control
        self.man_control = rospy.Subscriber('/manual_control', String, self.OnKeyReceived)
        self.is_manual = False

        print('Successfully connected to /tts')
        
      
        #ts = message_filters.TimeSynchronizer(['/head_front_camera/color/image_raw', '/humans/voices/anonymous_speaker/speech'], 10)
        #ts.registerCallback("")




    def OnKeyReceived(self, data):
        if(data.data == 'c'):
            self.is_manual = False if self.is_manual else True # Toggle between on/off
            print(f'GetInput set to {self.is_manual}')
        elif self.is_manual:
            self.audioStream.unregister()
            rospy.sleep(2)
            self.GPTgenerate(is_question=True, is_manual=self.is_manual, txt_file_path= data.data)

    def OnUserSpeechDetected(self, data):
        self.speech_detected = data.data
        if self.speech_detected:
            if not self.recording:
                self.start_recording()
        else:
            if self.recording:
                self.stop_recording()
  
    def record_callback(self, msg):
        if self.recording:
            img = self.bridge.imgmsg_to_cv2(msg, "bgr8")
            #print('A ',img)
            self.video_writer.write(img)
            #print('B',self.video_writer)

    def start_recording(self):
        self.recording = True
        counter_index = str(self.counter)
        video_filename = str(self.id) +'_'+counter_index+ '.mp4'
        self.video_file_path = f'/home/robocupathome/workspace/eddy_code/src/DATA/{video_filename}'
        self.video_writer = cv2.VideoWriter(self.video_file_path, self.fourcc, 30.0, (640, 480))
        rospy.loginfo(f"MP4 saved as {self.video_file_path}")

    def stop_recording(self):
        self.recording = False
        rospy.sleep(2)
        self.video_writer.release()
        rospy.loginfo('Video writer closed')

    def OnAudioStream(self, data:AudioData):

        # stream = data.data
        self.robot_speech = True
        counter_index = str(self.counter)
        wave_filename = str(self.id) +'_'+counter_index+ '.wav'
        
        # This is all copilot generated.
        self.wave_file_path = '/home/robocupathome/workspace/eddy_code/src/DATA/'+wave_filename
        self.txt_file_path = '/home/robocupathome/workspace/eddy_code/src/DATA/'+wave_filename.replace('.wav', '.txt')
        supposed_video_path = '/home/robocupathome/workspace/eddy_code/src/DATA/'+wave_filename.replace('.wav', '.mp4')

        
        with wave.open(self.wave_file_path, 'wb') as wave_file:
            wave_file.setnchannels(1)  # Mono audio 
            wave_file.setsampwidth(2)  # 2 bytes per sample
            wave_file.setframerate(16000)  # Sample rate of 16000 Hz
            wave_file.writeframes(data.data)
        # set the flag to get audio
        self.get_audio = True
        print(f'Saved audio stream as wave file: {self.wave_file_path}')

        

        # From here, call whisper so it can generate text from the audio file.
        audio_file= open(self.wave_file_path, "rb")
        transcription = client.audio.transcriptions.create(
        model="whisper-1", 
        file=audio_file)

        # write the transcription to a txt file for emotion analysis
        with open(self.txt_file_path, "w") as output:
            output.write(str(transcription.text))
            print(f'Saved transcription as txt file: {self.txt_file_path}')
        # set the flag to get text
        self.get_text = True   
        print(transcription.text)
        self.audioStream.unregister()
        rospy.sleep(2)

    
        # if self.get_audio == True and self.get_text == True and self.get_video == True:
      

        self.GPTgenerate(False, self.is_manual, self.video_file_path,self.wave_file_path,self.txt_file_path)
        print('\n\nGenerated.')
         

    def GPTgenerate(self, is_question, is_manual, video_file_path= DUMMY_VIDEO, wav_file_path= DUMMY_WAVE,txt_file_path= DUMMY_TXT):
        if(is_question):
            print('Question detected')
            # Manual question detected
            request = GPTGenerateRequest()
            request.request = txt_file_path # txt_file_path is the question
            request.initialEmotion = ''
            request.finalEmotion = ''
            request.is_question = True
            request.manual_mode = is_manual

            print(self.gptServer(request))
            # Make the robot speak out the question
            msg = TtsGoal()
            msg.rawtext.lang_id = 'en_GB'
            msg.rawtext.text = txt_file_path
            
            self.tts.send_goal_and_wait(msg)
            rospy.sleep(2)
            # Reconnect to /audio/speech to get audio stream
            self.audioStream = rospy.Subscriber('/audio/speech', AudioData, self.OnAudioStream)
            return


        self.counter = self.counter + 1
        # step 1: get the emotion from the emotion server 
        # request = EmotionGenerateRequest()
        # request.videoPath = video_file_path
        # request.wavPath = wav_file_path
        # request.textPath = txt_file_path
        # emotionResponse: EmotionGenerateResponse
        # emotionResponse = self.emotionServer(request)
        # self.emotion = emotionResponse.response
        self.emotion = 'happy'

        # step 2: communicate with the GPT server
        # Get the transcription from the txt file and make it a list
        transcription = []
        with open(self.txt_file_path, 'r') as file:
            # Read the contents of the file and split them into lines
            transcription = file.read()
            
            # Optionally, you may want to remove any trailing whitespace characters
            # transcription = [line.strip() for line in transcription]

        request = GPTGenerateRequest()
        request.request = transcription
        request.initialEmotion = self.emotion
        # request.finalEmotion = self.finalEmotion
        request.is_question = False
        request.manual_mode = is_manual

        response:GPTGenerateResponse
        response = self.gptServer(request)

        output = response.response  # The actual string generated by GPT

        # Publish to /tts, make the robot speak.
        msg = TtsGoal()
        msg.rawtext.lang_id = 'en_GB'
        msg.rawtext.text = output
        start_time = rospy.Time.now()

        self.tts.send_goal_and_wait(msg)
        
        print('setp 3')
        print(self.robot_speech)
        end_time = rospy.Time.now()

        print('Generated Response:')
        print(output)
        # response_time = self.speech_duration(GetSpeechDurationRequest(text=msg.rawtext.text))

        time_difference = end_time - start_time
        print('time difference: ', (end_time - start_time).to_sec())
        print('done')
        # print(f"response time: {response_time.duration}")
        print('---------------------------------------')
        print('here')
        # rospy.sleep(time_difference.to_sec())
        rospy.sleep(2)
        self.audioStream = rospy.Subscriber('/audio/speech', AudioData, self.OnAudioStream)
        self.get_audio = False
        self.get_text = False
        self.get_video = False

        return time_difference.to_sec()
 

if __name__ == '__main__':
    node = Node()
    rospy.spin()