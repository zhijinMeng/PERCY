#!/usr/bin/python3
import rospy
import time
from std_msgs.msg import Bool
# from audio_video_writter_class import *
# import audio_video_writter_class
from audio_common_msgs.msg import AudioData
from sensor_msgs.msg import Image
import message_filters
import cv2
from cv_bridge import CvBridge
import sys
sys.path.insert(0, '/home/robocupathome/workspace/eddy_code/src/chatting_system/scripts')
from audio_video_writter_class import FrameWriter
from openai import OpenAI
import os 

# define the openai api key, which is for OpenAI API verfication
client = OpenAI(api_key="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")

class Node:
    def __init__(self):
        rospy.init_node('multimodal_dataset_main_server')
        
        self.speechdetector = rospy.Subscriber('/audio/voice_detected', Bool, self.vocie_detected_callback)
        self.is_speaking = False
        self.startTime = time.time()
        self.bridge = CvBridge()
      
        self.audio_inComing = False

        # here we subscribe to the audio and video topics
        self.audio_writter= rospy.Subscriber('/audio/channel0', AudioData, self.record_callback_audio )
        self.video_writter = rospy.Subscriber('/head_front_camera/color/image_raw', Image, self.record_callback_video)
        self.audio_video_writer = FrameWriter()

        
        self.SAMPLE_RATE = 16000
        self.NUM_FRAMES = 300
        self.NUM_FBANKS = 64

        # set buffer
        self.buffer_appended = False
        # init buffer
        self.buffer = b''
        # reccive data for buffer
        self.buffer_writter = rospy.Subscriber('/audio/channel0', AudioData, self.set_buffer)
        self.buffer_duration = 3 # here we define the buffer duration 
        self.buffer_size = self.buffer_duration * self.SAMPLE_RATE # 3 seconds of audio as buffer
        self.sentence_gap = 1 # define the maximun gap between two sentences  

        # here we define the file paths for audio, video and text
        self.id = rospy.get_param('~id', 'test') # get the id of the user, with default value of 'test'
        # first use the id to generate a directory under DATA
        self.base_path = '/home/robocupathome/workspace/eddy_code/src/DATA' # the database path
        self.folder_path = os.path.join(self.base_path, self.id,) # the folder path for a specific particant with name as 'ID'
        self.create_folder(self.folder_path) # create the folder for the user
        print(self.folder_path)
        self.txt_file = 'test.txt'



    def create_folder(self,folder_path):
        if not os.path.exists(folder_path):
            # Create the folder if it doesn't exist
            os.makedirs(folder_path)
            print(f"Folder '{self.id}' created successfully at {folder_path}")
        else:
            print(f"Folder '{self.id}' already exists at {folder_path}")

    def vocie_detected_callback(self, data: Bool):
        self.audio_inComing = data.data
    
    def set_is_speaking(self): # important function that we define the gap between two sentences, served for prequest for stt
        rate = rospy.Rate(1)
        while not rospy.is_shutdown():
            print("is_speaking:", self.is_speaking)
            currentTime = time.time()
            if self.audio_inComing == True:
                self.is_speaking = True
                self.startTime = currentTime
            else:
                lasting_time = currentTime - self.startTime
                if lasting_time >= self.sentence_gap: # here we define 
                    self.is_speaking = False
                    self.startTime = currentTime
            rate.sleep()

    def record_callback_audio(self, audio_data: AudioData):
        if self.audio_video_writer.get_is_recording() == False:
            # not recording. -> start recording if heard anything
            if self.is_speaking:
                
                self.audio_video_writer.append_buffer(self.get_buffer(),self.folder_path) # append buffer to the wav file
                print('start recording')
                self.audio_video_writer.set_path(self.folder_path)
                self.audio_video_writer.write_frame_audio(audio_data.data)
            else:
                pass
        else:
            # is recording -> if nothing comes in, stop recording, else put data to it
            if self.is_speaking == False:
                print('end recording')
                self.audio_video_writer.close()
                
            else:
                self.audio_video_writer.write_frame_audio(audio_data.data)
            

    def record_callback_video(self, image_data: Image):
        cv_image = self.bridge.imgmsg_to_cv2(image_data, "bgr8")
        if self.audio_video_writer.get_is_recording():
            self.audio_video_writer.write_frame_video(cv_image)


    # set buffer_related functions for audio_video_writer_class
    def set_buffer(self, data):
        # Convert the array of uint8 to bytes
        audio_bytes = bytes(data.data)
        
        # Keep the buffer size fixed
        self.buffer += audio_bytes
        if len(self.buffer) > self.buffer_size:
            # Trim excess data from the beginning of the buffer
            self.buffer = self.buffer[-self.buffer_size:]

    def get_buffer(self):
        return self.buffer
    


if __name__ == '__main__':
    a = Node()
    a.set_is_speaking()
    rospy.spin()
