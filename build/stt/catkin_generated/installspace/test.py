#!/usr/bin/python3

import rospy

# Initialize ROS node
rospy.init_node('my_node')

# Log information
rospy.loginfo("This is an information message.")

# Spin to keep the node alive
rospy.spin()
