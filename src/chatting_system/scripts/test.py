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
import json
import wave
# define the openai api key, which is for OpenAI API verfication
client = OpenAI(api_key="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")

AUDIO_RATE = 16000
AUDIO_CHANNELS = 1
AUDIO_WIDTH = 2


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
        self.folder_path = os.path.join(self.base_path, self.id) # the folder path for a specific particant with name as 'ID'
        self.create_folder(self.folder_path) # create the folder for the user
        
        print(self.folder_path)
        self.txt_file = 'test.txt'
        # here we define the start and end time for each utterance
        self.time_stamp_monitoring = False
        self.start_time = 0
        self.end_time = 0
        self.counter = 0
        self.time_stamp_file = os.path.join(self.base_path, self.id,'time_stamp.json')



        # here we define the whole video and audio recording
        self.audio_output_path = os.path.join(self.folder_path, 'audio.wav')
        print(self.audio_output_path)
        self.video_output_path = os.path.join(self.folder_path,'video.mp4')
        self.bridge = CvBridge()
        self.audio_file = wave.open(self.audio_output_path, 'wb')
        self.audio_file.setnchannels(AUDIO_CHANNELS)
        self.audio_file.setsampwidth(AUDIO_WIDTH)
        self.audio_file.setframerate(AUDIO_RATE)
        self.video_writer = None
        self.audio_sub = rospy.Subscriber('/audio/channel0', AudioData, self.audio_callback)
        self.start_time_audio = rospy.Time.now()  # Record the start time
        rospy.loginfo("audio starts at: %s", self.start_time_audio)


        self.image_sub = rospy.Subscriber('/head_front_camera/color/image_raw', Image, self.video_callback)
        self.start_time_image = rospy.Time.now()  # Record the start time
        rospy.loginfo("video starts at: %s", self.start_time_image)



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

                if self.time_stamp_monitoring == False:
                    self.time_stamp_monitoring = True
                    # self.audio_video_writer.set_start_time(rospy.Time.now().to_sec())
                # the starting point, where we need to record timestamp for this timestamp as well
                    self.start_time = rospy.Time.now().to_sec() - self.start_time_audio.to_sec() -1.5
                    print(f'buffer length is {len(self.buffer)/self.SAMPLE_RATE}')
                

                
                self.audio_video_writer.append_buffer(self.get_buffer(),self.folder_path) # append buffer to the wav file
                print('start recording')
                self.audio_video_writer.set_path(self.folder_path)
                self.audio_video_writer.write_frame_audio(audio_data.data)
            else:
                pass
        else:
            # is recording -> if nothing comes in, stop recording, else put data to it
            if self.is_speaking == False:

                if self.time_stamp_monitoring == True:
                    self.time_stamp_monitoring = False
                    # the ending point, where we need to record timestamp for this timestamp as well
                    self.end_time = rospy.Time.now().to_sec() - self.start_time_audio.to_sec()
                    time_difference = self.end_time - self.start_time
                    rospy.logwarn(f"Recording time is: {time_difference}")
            
                    data = {
                                "index": self.counter,
                                "starting_time": self.start_time,
                                "ending_time": self.end_time,

                                
                            }
                    self.append_to_json(data, self.time_stamp_file)



                print('end recording')
                transcription,emotion,is_human = self.audio_video_writer.close()
                self.counter += 1
               
                
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
    

    def append_to_json(self, data, file_path):
        # Check if the JSON file exists
        if os.path.exists(file_path):
            # If file exists, read existing JSON data
            with open(file_path, 'r') as json_file:
                existing_data = json.load(json_file)
        else:
            # If file doesn't exist, initialize with an empty list
            existing_data = []

        # Append new data to the existing data
        existing_data.append(data)

        # Write the updated data back to the JSON file
        with open(file_path, 'w') as json_file:
            json.dump(existing_data, json_file, indent=4)




    # here we define the whole video/audio recording
    def audio_callback(self, msg):
        self.audio_file.writeframes(msg.data)

    def video_callback(self, msg):
        try:
            cv_image = self.bridge.imgmsg_to_cv2(msg, "bgr8")
        except CvBridgeError as e:
            rospy.logerr(e)
            return

        cv2.imshow('Camera Feed', cv_image)
        cv2.waitKey(1)

        if self.video_writer is not None:
            self.video_writer.write(cv_image)

    def on_exit(self):
        rospy.loginfo("ROS terminated. Recording finished.")
        end_time = rospy.Time.now()  # Record the end time
        rospy.loginfo("Recording ended at: %s", end_time)

        # Calculate time difference in seconds
        start_time_sec = self.start_time_image.to_sec()
        end_time_sec = end_time.to_sec()
        time_difference_sec_image = end_time_sec - start_time_sec


        start_time_sec_audio = self.start_time_audio.to_sec()
        time_difference_sec_audio = end_time_sec - start_time_sec_audio
        rospy.loginfo("Time difference for image is: %.2f seconds", time_difference_sec_image)
        rospy.loginfo("Time difference for wav is: %.2f seconds", time_difference_sec_audio)

        if self.audio_file is not None:
            self.audio_file.close()
        if self.video_writer is not None:
            self.video_writer.release()

    def run(self):
        fourcc = cv2.VideoWriter_fourcc(*'mp4v')
        self.video_writer = cv2.VideoWriter(self.video_output_path, fourcc, 30.0, (640, 480))
        rospy.on_shutdown(self.on_exit)
        rospy.spin()

    def merge_json(self, file1, file2, output_file):
        # Read data from the first JSON file
        with open(file1, "r") as f:
            data1 = json.load(f)
        
        # Read data from the second JSON file
        with open(file2, "r") as f:
            data2 = json.load(f)
        
        # Combine the data
        combined_data = []
        for record1, record2 in zip(data1, data2):
            combined_record = {**record1, **record2}  # Merge the records
            combined_data.append(combined_record)
        
        # Write the combined data to the output file
        with open(output_file, "w") as f:
            json.dump(combined_data, f, indent=4)

    def merge(self):
        chat_history_path = os.path.join(self.base_path, self.id,"chat_history.json")
        rospy.on_shutdown(self.merge_json(self.time_stamp_file,chat_history_path, os.path.join(self.folder_path, 'final.json')))

if __name__ == '__main__':
    a = Node()
    a.set_is_speaking()
    a.run()
    a.merge()

    rospy.spin()
