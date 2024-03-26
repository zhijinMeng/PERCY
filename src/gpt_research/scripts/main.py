#!/usr/bin/python3
import sys

import cv2
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import rospy
from gpt_server.srv import GPTGenerate, GPTGenerateResponse, GPTGenerateRequest  # Import GPT service definition
from emotion_server.srv import EmotionGenerate, EmotionGenerateResponse
from hri_msgs.msg import LiveSpeech
from actionlib import SimpleActionClient
from pal_interaction_msgs.msg import TtsAction, TtsGoal
from sensor_msgs.msg import Image
import numpy as np
from audio_common_msgs.msg import AudioData     # /audio/speech
from std_msgs.msg import Bool                   # /audio/voice_detected
from pyhri import HRIListener
import wave
import os
from openai import OpenAI
import message_filters

client = OpenAI(api_key="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")

class Node:

    def __init__(self):
        rospy.init_node('gpt_research')
        self.id = rospy.get_param('~id', '0')
        self.initialConversation = True
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
        self.image_sub = rospy.Subscriber('/head_front_camera/color/image_raw', Image, self.image_callback)
        self.record_sub = rospy.Subscriber('/head_front_camera/color/image_raw', Image, self.record_callback)


        self.video_writer = None  # Initialize video_writer to None
        self.fourcc = cv2.VideoWriter_fourcc(*'mp4v')
        
        self.record_sub = None



        print('Waiting for GPT server to be availale')
        self.gptServer = rospy.ServiceProxy('/gpt_generate', GPTGenerate)
        self.gptServer.wait_for_service()
        print('Successfully connected to /gpt_generate')

        #print('Waiting for Emotion server to be availale')
        #self.emotionServer = rospy.ServiceProxy('/emotion_generate', EmotionGenerate)
        #self.emotionServer.wait_for_service()
        #print('Successfully connected to /emotion_generate')

        self.hri = HRIListener()

        # Subscribe to speech recognition topic. Whenever speech is received, OnSpeechReceived() is invoked.
        self.humanSpeech = rospy.Subscriber('/humans/voices/anonymous_speaker/speech', LiveSpeech, self.OnSpeechReceived)

        # Publish to /tts
        self.tts = SimpleActionClient('/tts', TtsAction)
        self.tts.wait_for_server()
        

        print('Successfully connected to /tts')
        ts = message_filters.TimeSynchronizer(['/head_front_camera/color/image_raw', '/humans/voices/anonymous_speaker/speech'], 10)
        ts.registerCallback("")


    def OnUserSpeechDetected(self, data:Bool, ):
        rospy.loginfo("we are in the speech detected callback")
        

        if data.data == True:
            self.recordStarted = True
            counter_index = str(self.counter)
            video_filename = str(self.id) + '_'+counter_index+ '.mp4'
            mp4_file_path = '/home/robocupathome/workspace/eddy_code/src/DATA/'+video_filename
            rospy.loginfo(f"mp4_file_path {mp4_file_path}")
            self.video_writer = cv2.VideoWriter(mp4_file_path, self.fourcc, 30.0, (640, 480))
            rospy.loginfo("we started recording")
            self.speechBeginTime = rospy.get_time()
        elif data.data == False and self.recordStarted == True:
            self.recordStarted = False
            rospy.loginfo("we stop recording")
            self.video_writer.release()

        # if self.recordStarted:
        #     if data.data == True:
        #         return
        #     else:
        #         # we are recoding, but nothing received, we stop recording
        #         self.recordStarted = False
        #         record_sub.unregister()

        #         rospy.loginfo("we stop recording")
        #         self.video_writer.release()

        # else:
        #     # in this case, no record started
        #     if data.data == True:
        #         # start
        #         self.recordStarted = True
        #         counter_index = str(self.counter)
        #         video_filename = str(self.id) + '_'+counter_index+ '.mp4'
        #         mp4_file_path = '/home/robocupathome/workspace/eddy_code/src/DATA/'+video_filename
        #         self.video_writer = cv2.VideoWriter(mp4_file_path, self.fourcc, 30.0, (640, 480))
        #         record_sub = rospy.Subscriber('/head_front_camera/color/image_raw', Image, self.record_callback_callback)
        #         rospy.loginfo("we started recording")
        #         self.speechBeginTime = rospy.get_time()
        #     else:
        #         return
                
        

        # If the user is not speaking, implying that they finished speaking
        # if data.data == False:
        #     self.speechEndTime = rospy.get_time()

        #     # Check if the range of speech is valid.
        #     if self.speechBeginTime != -1 and self.speechEndTime - self.speechBeginTime > 0:
    
        #         counter_index = str(self.counter)
        #         video_filename = str(self.id) + '_'+counter_index+ '.mp4'
        #         mp4_file_path = '/home/robocupathome/workspace/eddy_code/src/DATA/'+video_filename
                
        #         # if self.video_writer is not None:
        #         #     self.video_writer.write(self.cv_image)
               

        #         # make a subscriber to record callback 
        #         record_sub = rospy.Subscriber('/head_front_camera/color/image_raw', Image, self.record_callback_callback)

        #         pass    # To do: trim the video data to the range of speech.
            
        #     # Reset the speech begin time. Make sure we do not get false positive.
        #     self.speechBeginTime = -1

        # else:
        #     # If the user is speaking, record the start time of the speech.
        #     self.speechBeginTime = rospy.get_time()
        #     # Check if the video writer is closed. If not, close it.
        #     if self.video_writer is not None:
        #         self.video_writer = cv2.VideoWriter(mp4_file_path, self.fourcc, 30.0, (640, 480))
        #         self.video_writer.release()
        #         record_sub.unregister()
        #         print(f'Saved video stream as mp4 file: {mp4_file_path}')

    def image_callback(self, msg):
        rospy.loginfo("we are in the image callback")
        return
        self.cv_image = self.bridge.imgmsg_to_cv2(msg, "bgr8")
    
    def record_callback(self, msg):
        rospy.loginfo(f"record_callback")
        
        if self.recordStarted and self.video_writer is not None:
            rospy.loginfo("we are recording, adding sometrhing to it")
            img =self.bridge.imgmsg_to_cv2(msg, "bgr8")
            rospy.loginfo(f"img ")
            self.video_writer.write(img)
        

    def OnAudioStream(self, data:AudioData):
        stream = data.data

     
        
        counter_index = str(self.counter)
        wave_filename = str(self.id) +'_'+counter_index+ '.wav'
        
        # This is all copilot generated.
        wave_file_path = '/home/robocupathome/workspace/eddy_code/src/DATA/'+wave_filename
        
        with wave.open(wave_file_path, 'wb') as wave_file:
            wave_file.setnchannels(1)  # Mono audio
            wave_file.setsampwidth(2)  # 2 bytes per sample
            wave_file.setframerate(16000)  # Sample rate of 16000 Hz
            wave_file.writeframes(data.data)
        print(f'Saved audio stream as wave file: {wave_file_path}')

        self.counter = self.counter + 1

        # From here, call whisper so it can generate text from the audio file.
        audio_file= open(wave_file_path, "rb")
        transcription = client.audio.transcriptions.create(
        model="whisper-1", 
        file=audio_file)
        print(transcription.text)

    def OnSpeechReceived(self, data:LiveSpeech):

        if self.initialConversation and len(data.incremental) > 0:
            self.initialConversation = False

            # Get a new emotion
            self.initialEmotion = ''

            # Extract and receive the emotion, assumed there is only one person and the face is visible throughout the conversation.
            for id, person in self.hri.tracked_persons.items():
                if person.face:
                    if person.face.aligned is not None and person.face.aligned.any():
                        demography = DeepFace.analyze(img_path=person.face.aligned,actions=['emotion'], enforce_detection=False)
                        result = demography[0]
                        emotion = result['dominant_emotion']

                        self.initialEmotion = emotion

        # Only process when the user finished speaking.
        if len(data.final) > 0:
            # Get a new emotion
            self.finalEmotion = ''

            # Extract emotion
            for id, person in self.hri.tracked_persons.items():
                if person.face:
                    if person.face.aligned is not None and person.face.aligned.any():
                        demography = DeepFace.analyze(img_path=person.face.aligned,actions=['emotion'], enforce_detection=False)
                        result = demography[0]
                        emotion = result['dominant_emotion']

                        self.finalEmotion = emotion
            
            rospy.sleep(duration=rospy.Duration(secs = 0.5))

            print(f'Obtained Emotions: Init - {self.initialEmotion}, Final - {self.finalEmotion}')

            print('Generating response for the following sentence:')
            print(data.final)
            # Generate response from ChatGPT and make the robot speak.

            request = GPTGenerateRequest()
            request.request = data.final
            request.initialEmotion = self.initialEmotion
            request.finalEmotion = self.finalEmotion

            response:GPTGenerateResponse
            response = self.gptServer(request)

            output = response.response  # The actual string generated by GPT

            # Publish to /tts, make the robot speak.
            msg = TtsGoal()
            msg.rawtext.lang_id = 'en_GB'
            msg.rawtext.text = output

            self.tts.send_goal_and_wait(msg)

            print('Generated Response:')
            print(output)

            print('done')
            self.initialConversation = True

 

if __name__ == '__main__':
    node = Node()
    rospy.spin()