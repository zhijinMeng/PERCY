import rospy
from std_msgs.msg import String

class manual_control:

    def __init__(self):
        rospy.init_node('manual_control')




if __name__ == '__main__':
    rospy.init_node('manual_control')
    pub = rospy.Publisher('manual_control', String ,queue_size=10)

    while(not rospy.is_shutdown()):
        p = input()
        print(f'publishing: {p}')
        pub.publish(p)



