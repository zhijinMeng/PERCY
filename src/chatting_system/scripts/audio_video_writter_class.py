#!/usr/bin/python3
import wave
import rospy
from audio_common_msgs.msg import AudioData
import os
import cv2 
from cv_bridge import CvBridge
from openai import OpenAI
import sys
sys.path.insert(0, '/home/robocupathome/workspace/eddy_code/src/chatting_system/scripts')
from pickle_test import VoiceVerification # import the voice verification class
from gpt_server.srv import GPTGenerate, GPTGenerateResponse, GPTGenerateRequest  # Import GPT service definition
from actionlib import SimpleActionClient
from pal_interaction_msgs.msg import TtsAction, TtsGoal
from emotion_server.srv import EmotionGenerate, EmotionGenerateResponse, EmotionGenerateRequest


AUDIO_RATE = 16000
AUDIO_CHANNELS = 1
AUDIO_WIDTH = 2
client = OpenAI(api_key="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")


class FrameWriter:
    def __init__(self):
       
        self.wf = None
        self.fourcc = cv2.VideoWriter_fourcc(*'mp4v')
        self.is_recording = False
        self.bridge = CvBridge()
        self.video_writer = None
        self.counter = 0
        self.audio_name = 'test'
        self.video_name = 'test'
        self.txt_name = 'test'
        self.voice_verification = VoiceVerification() # init the voice verificator
        self.is_enrolled = False

        # here we init the connection with gpt_server
        print('Waiting for GPT server to be availale')
        self.gptServer = rospy.ServiceProxy('/gpt_generate', GPTGenerate)
        self.gptServer.wait_for_service()
        print('Successfully connected to /gpt_generate')


        # Publish to /tts when we want the robot to say something
        self.tts = SimpleActionClient('/tts', TtsAction)
        self.tts.wait_for_server()

        # connect to the emotion server
        print('Waiting for Emotion server to be availale')
        self.emotionServer = rospy.ServiceProxy('/emotion_generate', EmotionGenerate)
        self.emotionServer.wait_for_service()
        print('Successfully connected to /emotion_generate')


    def set_path(self, path):
        if self.is_recording:
            self.close()
        # self.wf = wave.open(f"{path}{self.counter}.wav", 'wb') # path of audio 
        self.output_path = f"{path}/{self.counter}.mp4"
        # update audio/video names to check if it is recording
        self.audio_name = f"{path}/{self.counter}.wav"
        self.video_name = f"{path}/{self.counter}.mp4"
        self.txt_name = f"{path}/{self.counter}.txt"
        self.mfcc_wav_name = f"{path}/mfcc.wav"
        self.pkl_path = f'{path}/user.pkl'
        print(self.mfcc_wav_name)
        self.video_writer = cv2.VideoWriter(self.output_path, self.fourcc, 30.0, (640, 480)) # path to video
        self.is_recording = True
        # enroll the user
        if not self.is_enrolled:
            self.voice_verification.enroll_new_user('user', self.mfcc_wav_name, self.pkl_path)
            self.is_enrolled = True
            print('user enrolled')
        rospy.logwarn(f"Recording to {path}")
    
    def write_frame_audio(self, data: AudioData):
        if self.wf is None:
            
            print("No path set, cannot write")
            return
        
        self.wf.writeframes(data)

    # receive the buffer from main server and append to the wav file, this function should only be excuted once for each utterance
    def append_buffer(self, data: AudioData, path):
        self.wf = wave.open(f"{path}/{self.counter}.wav", 'wb') # path of audio
        self.wf.setnchannels(AUDIO_CHANNELS)
        self.wf.setsampwidth(AUDIO_WIDTH)
        self.wf.setframerate(AUDIO_RATE)
        self.wf.writeframes(data)
        print("Buffer appended")

    def write_frame_video(self, data):
        # write to the file with img 
        
        self.video_writer.write(data)
        
    def get_is_recording(self):
        return self.is_recording
    
    def set_is_recording(self, value):
        self.is_recording = value

    # heere we define the OpenAi API to get the text from the audio file
    def whisper_translate(self,wav_file,txt_file):
        audio_file= open(wav_file, "rb")
        transcription = client.audio.transcriptions.create(
        model="whisper-1", 
        file=audio_file)

        # write the transcription to a txt file for emotion analysis
        with open(txt_file, "w") as output:
            output.write(str(transcription.text))
            print(f'Saved transcription as txt file: {txt_file}')
        # set the flag to get text
        print(transcription.text)
        return transcription.text

    # here we define the function to call the GPT server to generate the response
    def GPTgenerate(self,transcription):
        # transcription = []
        # with open(txt_file, "r") as file:
        #     transcription = file.read() # read the transcription from the txt file as the input for GPT server
        request = GPTGenerateRequest()
        request.request = transcription
        request.initialEmotion = self.emotion # here to pass the emotion
        request.finalEmotion = 'happy' # here to pass the emotion
        # we get the response here
        response: GPTGenerateResponse = self.gptServer(request)
        output = response.response
        # publish the output to /tts
        goal = TtsGoal()
        goal.rawtext.lang_id = 'en_GB'
        goal.rawtext.text = output
        self.tts.send_goal(goal)
        print(f'Generated response: {output}')


    def close(self):
        if self.wf is not None:
            self.is_recording = False
            rospy.logwarn(f"Audio Saved to {self.audio_name}")
            self.wf.close()
        else:
            print("No path set, cannot close audio file")
        if self.video_writer is not None:
            rospy.sleep(1)
            self.video_writer.release()
            rospy.logwarn(f"Video Saved to {self.video_name}")
            self.video_writer = None
        else:
            print("No path set, cannot close video file")
        self.counter += 1
        # reset the buffer and buffer_appended, ready for next sentence
        self.buffer_appended=False
        self.buffer = b''
        # 1. call whisper to generate the txt file
        transcription = self.whisper_translate(self.audio_name,self.txt_name)
        # 2. get the emotion state
     
        print(self.video_name, self.audio_name, self.txt_name)
        request = EmotionGenerateRequest()
        request.videoPath = self.video_name
        request.wavPath = self.audio_name
        request.textPath = self.txt_name
        emotionResponse: EmotionGenerateResponse
        emotionResponse = self.emotionServer(request)
        self.emotion = emotionResponse.response
        # 2. tell the voice_verification, if humnan then call emotion server and chatgpt
        score = self.voice_verification.verify_user('user', self.audio_name)
        print(score)
        if score <0.85:
            print('Human detected')
            self.GPTgenerate(transcription)
            # 3. call the emotion analysis and chatgpt
        else:
            print('Not human detected')
        

        print ('---------------------------------------------------------------------------------')
        return 



        

 
