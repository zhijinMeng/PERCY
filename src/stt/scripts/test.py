#!/usr/bin/python3


import rospy
# from std_msgs.msg import UInt8MultiArray
from audio_common_msgs.msg import AudioData

def audio_callback(msg):
    rospy.loginfo("Received data: %s", msg.data)

def main():
    rospy.init_node("audio_subscriber")
    rospy.Subscriber("/audio/channel0", AudioData, audio_callback)
    rospy.spin()

if __name__ == "__main__":
    main()
