#!/usr/bin/python3
import wave
import rospy
from audio_common_msgs.msg import AudioData
import os
import cv2 
from cv_bridge import CvBridge

AUDIO_RATE = 16000
AUDIO_CHANNELS = 1
AUDIO_WIDTH = 2


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
        


    def set_path(self, path):
        if self.is_recording:
            self.close()
        # self.wf = wave.open(f"{path}{self.counter}.wav", 'wb') # path of audio 
        self.output_path = f"{path}{self.counter}.mp4"
        # update audio/video names to check if it is recording
        self.audio_name = f"{path}{self.counter}.wav"
        self.video_name = f"{path}{self.counter}.mp4"
        self.video_writer = cv2.VideoWriter(self.output_path, self.fourcc, 30.0, (640, 480)) # path to video
        # self.wf.setnchannels(AUDIO_CHANNELS)
        # self.wf.setsampwidth(AUDIO_WIDTH)
        # self.wf.setframerate(AUDIO_RATE)
        self.is_recording = True
        rospy.logwarn(f"Recording to {path}")
    
    def write_frame_audio(self, data: AudioData):
        if self.wf is None:
            
            print("No path set, cannot write")
            return
        
        self.wf.writeframes(data)

    # receive the buffer from main server and append to the wav file, this function should only be excuted once for each utterance
    def append_buffer(self, data: AudioData, path):
        self.wf = wave.open(f"{path}{self.counter}.wav", 'wb') # path of audio
        self.wf.setnchannels(AUDIO_CHANNELS)
        self.wf.setsampwidth(AUDIO_WIDTH)
        self.wf.setframerate(AUDIO_RATE)
        self.wf.writeframes(data)
        print("Buffer appended")


    def write_frame_video(self, data):
        # write to the file with img 
        
        self.video_writer.write(data)
        
    
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

    def get_is_recording(self):
        return self.is_recording
    
    def set_is_recording(self, value):
        self.is_recording = value
