#!/usr/bin/env python3
import rospy
import numpy as np
import wave
from sensor_msgs.msg import Image
import message_filters
from chatting_system.msg import AudioStamped

ID = rospy.get_param('~id','1354')
WHOLE_AUDIO_SAVE_PATH = f'/home/ari/ros_ws/eddy_code/src/DATA/{ID}/audio.wav'


def save_audio_to_wav(data, filename, sample_width=2, channels=1, sample_rate=44100):
    # Convert the byte data to numpy array
    audio_data = np.frombuffer(data, dtype=np.int16)
    
    # Open a .wav file
    with wave.open(filename, 'wb') as wf:
        wf.setnchannels(channels)         # Set mono or stereo
        wf.setsampwidth(sample_width)     # Sample width in bytes
        wf.setframerate(sample_rate)      # Set the sample rate
        wf.writeframes(audio_data.tobytes())  # Write audio data to the file

    rospy.loginfo("Saved audio to %s", filename)



def callback(audio_msg, image_msg):
    try:
        # Log the timestamps of both messages
        rospy.loginfo("Audio Timestamp: %s.%s", audio_msg.header.stamp.secs, audio_msg.header.stamp.nsecs)
        rospy.loginfo("Image Timestamp: %s.%s", image_msg.header.stamp.secs, image_msg.header.stamp.nsecs)
        save_audio_to_wav(audio_msg.data, WHOLE_AUDIO_SAVE_PATH)
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
