#!/usr/bin/env python

import rospy
# from pal_interaction_msgs.msg import TtsActionGoal
from pal_interaction_msgs.msg import *
from std_msgs.msg import String

class SpeechRecognition:
    def __init__(self):
        rospy.init_node('speech_recognition_node', anonymous=True)
        rospy.loginfo('Speech Recognition node started')

        # Create a publisher for recognized text
        self.text_publisher = rospy.Publisher('recognized_text', String, queue_size=10)

        # Subscribe to the PAL Speech recognition topic
        # rospy.Subscriber('/pal_interaction/tts/goal', TtsActionGoal, self.speech_callback)
        # from zhijin
        rospy.Subscriber('/humans/voices/anonymous_speaker/speech', TtsActionGoal, self.speech_callback)

    def speech_callback(self, msg):
        # Extract recognized text from the PAL Speech message
        recognized_text = msg.goal.text

        # Publish the recognized text
        self.text_publisher.publish(String(data=recognized_text))
        rospy.loginfo(f"Recognized text: {recognized_text}")

    def run(self):
        rospy.spin()

if __name__ == '__main__':
    speech_recognition_node = SpeechRecognition()
    speech_recognition_node.run()
