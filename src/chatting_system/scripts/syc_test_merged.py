#!/usr/bin/env python3
import rospy
import numpy as np
import wave
import os
from sensor_msgs.msg import Image
import message_filters
from chatting_system.msg import AudioStamped
from cv_bridge import CvBridge
import cv2

# Constants for audio
AUDIO_RATE = 16000
AUDIO_CHANNELS = 1
AUDIO_WIDTH = 2

# Global variables for the WAV file handler and video writer
wf = None
video_writer = None

# Initialize the WAV file for audio recording
def initialize_wav_file(filename, sample_width=2, channels=1, sample_rate=16000):
    directory = os.path.dirname(filename)
    if not os.path.exists(directory):
        os.makedirs(directory)
    
    global wf
    wf = wave.open(filename, 'wb')
    wf.setnchannels(channels)
    wf.setsampwidth(sample_width)
    wf.setframerate(sample_rate)

    rospy.loginfo("Initialized .wav file: %s", filename)

# Initialize the video writer for video recording
def initialize_video_writer(filename, width=640, height=480, fps=30):
    global video_writer
    fourcc = cv2.VideoWriter_fourcc(*'mp4v')
    video_writer = cv2.VideoWriter(filename, fourcc, fps, (width, height))
    rospy.loginfo("Initialized video file: %s", filename)

# Save audio data to the WAV file
def save_audio_to_wav(data):
    global wf
    if wf is not None:
        wf.writeframes(data)
        rospy.loginfo("Recording audio -> reminder")
    else:
        rospy.logwarn("Wave file handler is not initialized.")

# Save video frame to the video file
def save_video_frame(image_msg, bridge):
    global video_writer
    if video_writer is not None:
        try:
            cv_image = bridge.imgmsg_to_cv2(image_msg, "bgr8")
            video_writer.write(cv_image)
        except Exception as e:
            rospy.logerr("Error converting or saving video frame: %s", str(e))
    else:
        rospy.logwarn("Video writer is not initialized.")

# Handle shutdown process
def shutdown_hook():
    global wf, video_writer
    if wf is not None:
        wf.close()
        rospy.loginfo("Closed .wav file.")
    if video_writer is not None:
        video_writer.release()
        rospy.loginfo("Closed video file.")

# Callback function for synchronized messages
def callback(audio_msg, image_msg):
    try:
        # Log timestamps
        rospy.loginfo("Audio Timestamp: %s.%s", audio_msg.header.stamp.secs, audio_msg.header.stamp.nsecs)
        rospy.loginfo("Image Timestamp: %s.%s", image_msg.header.stamp.secs, image_msg.header.stamp.nsecs)
        
        # Save the audio and video data
        save_audio_to_wav(audio_msg.data)
        save_video_frame(image_msg, bridge)
    except Exception as e:
        rospy.logerr("Error in callback: %s", str(e))

# Main listener function
def listener():
    global wf, video_writer, bridge

    rospy.init_node('message_filter_example', anonymous=True)

    # Get the parameter ID and create save paths
    id = rospy.get_param('~id', '0')
    AUDIO_SAVE_PATH = "/home/ari/ros_ws/eddy_code/src/DATA/" + str(id) + "/audio.wav"
    VIDEO_SAVE_PATH = "/home/ari/ros_ws/eddy_code/src/DATA/" + str(id) + "/whole_video.mp4"

    # Initialize the WAV file and video writer
    initialize_wav_file(AUDIO_SAVE_PATH, AUDIO_WIDTH, AUDIO_CHANNELS, AUDIO_RATE)
    initialize_video_writer(VIDEO_SAVE_PATH, 640, 480, 30)

    # Initialize the CvBridge for converting ROS Image messages to OpenCV images
    bridge = CvBridge()

    # Create subscribers for the two topics
    audio_sub = message_filters.Subscriber('external_microphone', AudioStamped)
    image_sub = message_filters.Subscriber('fixed_video', Image)
    
    # Synchronize the messages
    # sync = message_filters.TimeSynchronizer([audio_sub, image_sub], queue_size=10000)
    sync = message_filters.ApproximateTimeSynchronizer([audio_sub, image_sub], queue_size=10, slop=0.1, allow_headerless=True)
    sync.registerCallback(callback)
    
    rospy.loginfo("Synchronization node started, waiting for messages...")
    
    rospy.on_shutdown(shutdown_hook)
    
    try:
        rospy.spin()
    except rospy.ROSInterruptException:
        rospy.loginfo("Shutting down synchronization node...")

if __name__ == '__main__':
    listener()
