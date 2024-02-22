#!/usr/bin/env python
import rospy
from actionlib import SimpleActionClient
from pal_interaction_msgs.msg import TtsAction, TtsGoal

if __name__ == "__main__":
    rospy.init_node("tts_example")
    client = SimpleActionClient("/tts", TtsAction)
    print("waiting for the tts server to be available.")
    client.wait_for_server()

    # Create a TTS goal with your desired sentence
    s = "Hello, I am ARI. How can I assist you?"


    # Create an object of TtsGoal
    goal = TtsGoal()
    goal.rawtext.lang_id = 'en_EN'  # Set the language to English
    goal.rawtext.text = s           # Set the speech


    client.send_goal(goal)          # Make the robot speak
    client.wait_for_result()        # Wait until the robot finishes the speech

    rospy.loginfo("Speech completed: %s" % s)
