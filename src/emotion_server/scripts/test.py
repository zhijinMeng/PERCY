#!/usr/bin/python3
import rospy
import time
from std_msgs.msg import Bool
from audio_video_writter_class import FrameWriter
from audio_common_msgs.msg import AudioData
from sensor_msgs.msg import Image
import message_filters
import cv2
from cv_bridge import CvBridge


class Node:
    def __init__(self):
        rospy.init_node('sensor_recorder')
        self.speechdetector = rospy.Subscriber('/audio/voice_detected', Bool, self.newDetected)
        self.is_speaking = False
        self.startTime = time.time()
        self.bridge = CvBridge()
      
        self.audio_inComing = False

        # here we subscribe to the audio and video topics
        self.audio_writter= rospy.Subscriber('/audio/channel0', AudioData, self.record_callback_audio )
        self.video_writter = rospy.Subscriber('/head_front_camera/color/image_raw', Image, self.record_callback_video)
        self.audio_video_writer = FrameWriter()
        
        
    def newDetected(self, data: Bool):
        self.audio_inComing = data.data
    
    def print_is_speaking(self):
        rate = rospy.Rate(1)
        while not rospy.is_shutdown():
            print("is_speaking:", self.is_speaking)
            currentTime = time.time()
            if self.audio_inComing == True:
                self.is_speaking = True
                self.startTime = currentTime
            else:
                lasting_time = currentTime - self.startTime
                if lasting_time >= 3: # here we define 
                    self.is_speaking = False
                    self.startTime = currentTime

            rate.sleep()

    def record_callback_audio(self, audio_data: AudioData):

        if self.audio_video_writer.get_is_recording() == False:
            # not recording. -> start recording if heard anything
            if self.is_speaking:
                print('start recording')
                self.audio_video_writer.set_path("/home/robocupathome/workspace/eddy_code/src/DATA/test")
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


    # now we add video recorder and audio recorder
    def Sensor_Active(self):
        # keep detecting if there's a sound
        while not rospy.is_shutdown():
            if self.is_speaking: # If speech is detected like human being starts to talk
                if not self.recording:
                    self.start_recording()
            else: # no one is speaking
                if self.recording: # If the writer is active
                    self.stop_recording()


if __name__ == '__main__':
    a = Node()
    a.print_is_speaking()
    rospy.spin()
