#!/usr/bin/env python3
import rospy
from std_msgs.msg import String
from std_msgs.msg import Bool


if __name__ == '__main__':
    rospy.init_node('manual_control')

    pub = rospy.Publisher('manual_control', String ,queue_size=10)
    op_mode = rospy.Publisher('is_automatic_mode', Bool, queue_size=10)

    automatic_mode = True

    op_mode.publish(automatic_mode) # Initial operation mode is automatic
    

    while(not rospy.is_shutdown()):
        p = input()

        print(f'publishing to manual_control: {p}')
        pub.publish(p)



