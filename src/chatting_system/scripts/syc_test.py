#!/usr/bin/env python3

import rospy
from sensor_msgs.msg import Image
import message_filters
from chatting_system.msg import AudioStamped

def callback(audio_msg, image_msg):
    try:
        # Log the timestamps of both messages
        rospy.loginfo("Audio Timestamp: %s.%s", audio_msg.header.stamp.secs, audio_msg.header.stamp.nsecs)
        rospy.loginfo("Image Timestamp: %s.%s", image_msg.header.stamp.secs, image_msg.header.stamp.nsecs)
    except Exception as e:
        rospy.logerr("Error in callback: %s", str(e))

def listener():
    rospy.init_node('message_filter_example', anonymous=True)
    
    # Create subscribers for the two topics with descriptive names
    audio_sub = message_filters.Subscriber('external_microphone', AudioStamped)
    image_sub = message_filters.Subscriber('fixed_video', Image)
    
    # Synchronize the messages
    sync = message_filters.ApproximateTimeSynchronizer([audio_sub, image_sub], queue_size=10, slop=0.1, allow_headerless=True)
    sync.registerCallback(callback)
    
    rospy.loginfo("Synchronization node started, waiting for messages...")
    
    try:
        rospy.spin()
    except rospy.ROSInterruptException:
        rospy.loginfo("Shutting down synchronization node...")

if __name__ == '__main__':
    listener()
