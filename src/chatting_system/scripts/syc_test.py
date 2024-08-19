#!/usr/bin/env python3
import rospy
import numpy as np
import wave
import os
from sensor_msgs.msg import Image
import message_filters
from chatting_system.msg import AudioStamped
import sys
sys.path.insert(0, '/home/ari/ros_ws/eddy_code/src/chatting_system/scripts')

# Constants for audio
AUDIO_RATE = 16000
AUDIO_CHANNELS = 1
AUDIO_WIDTH = 2

# Global variable for the WAV file handler
wf = None

def initialize_wav_file(filename, sample_width=2, channels=1, sample_rate=16000):
    # Ensure the directory exists
    directory = os.path.dirname(filename)
    if not os.path.exists(directory):
        os.makedirs(directory)
    
    # Initialize the .wav file
    global wf
    wf = wave.open(filename, 'wb')
    wf.setnchannels(channels)
    wf.setsampwidth(sample_width)
    wf.setframerate(sample_rate)

    rospy.loginfo("Initialized .wav file: %s", filename)

def save_audio_to_wav(data):
    global wf
    if wf is not None:
        wf.writeframes(data)
    else:
        rospy.logwarn("Wave file handler is not initialized.")

def shutdown_hook():
    global wf
    if wf is not None:
        wf.close()
        rospy.loginfo("Closed .wav file.")

def callback(audio_msg, image_msg):
    try:
        # Log the timestamps of both messages
        rospy.loginfo("Audio Timestamp: %s.%s", audio_msg.header.stamp.secs, audio_msg.header.stamp.nsecs)
        rospy.loginfo("Image Timestamp: %s.%s", image_msg.header.stamp.secs, image_msg.header.stamp.nsecs)
        save_audio_to_wav(audio_msg.data)
    except Exception as e:
        rospy.logerr("Error in callback: %s", str(e))

def listener():
    global wf

    rospy.init_node('message_filter_example', anonymous=True)

    # Get the parameter ID and create save path
    id = rospy.get_param('~id', '0')
    WHOLE_AUDIO_SAVE_PATH = "/home/ari/ros_ws/eddy_code/src/DATA/" + str(id) +"/audio.wav"
    print(WHOLE_AUDIO_SAVE_PATH)
    
    # Initialize the WAV file
    initialize_wav_file(WHOLE_AUDIO_SAVE_PATH, AUDIO_WIDTH, AUDIO_CHANNELS, AUDIO_RATE)
    
    # Create subscribers for the two topics
    audio_sub = message_filters.Subscriber('external_microphone', AudioStamped)
    image_sub = message_filters.Subscriber('fixed_video', Image)
    
    # Synchronize the messages
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
