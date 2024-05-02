#!/usr/bin/python3

import rospy
import cv2
import wave
from sensor_msgs.msg import Image
from audio_common_msgs.msg import AudioData
from cv_bridge import CvBridge
import os
import atexit

AUDIO_RATE = 16000
AUDIO_CHANNELS = 1
AUDIO_WIDTH = 2

class AudioVideoRecorder:
    def __init__(self, audio_output_path, video_output_path):
        self.audio_output_path = audio_output_path
        self.video_output_path = video_output_path
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

if __name__ == '__main__':
    rospy.init_node('audio_video_recorder', anonymous=True)

    id = rospy.get_param('~id', '0')
    audio_output_path = "/home/robocupathome/workspace/eddy_code/src/DATA/" + str(id) + '.wav'
    video_output_path = "/home/robocupathome/workspace/eddy_code/src/DATA/" + str(id) + '.mp4'

    recorder = AudioVideoRecorder(audio_output_path, video_output_path)
    recorder.run()
