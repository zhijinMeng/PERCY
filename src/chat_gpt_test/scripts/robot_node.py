#!/usr/bin/env python

import rospy

class RobotNode:
    def __init__(self):
        rospy.init_node('robot_node', anonymous=True)
        rospy.loginfo('Robot node started')
    
    def run(self):
        rospy.spin()

if __name__ == '__main__':
    node = RobotNode()
    node.run()


    
