
#!/usr/bin/python3

import rospy
from attention_manager.srv import SetPolicy, SetPolicyRequest
from hri_msgs.msg import Expression

if __name__ == "__main__":
    rospy.init_node('robot_head')
    rospy.wait_for_service("/attention_manager/set_policy")

    try:
        proxy = rospy.ServiceProxy("/attention_manager/set_policy", SetPolicy)
        p = SetPolicyRequest()
        p.policy = SetPolicyRequest.IDLE_SOCIAL    # Idle social
        p.frame = ''
        response = proxy()
        print('Reset the neck position; make the robot track a face')
        rospy.loginfo(response)

        print('Making the robot open the eyes')
        eyePub = rospy.Publisher('/robot_face/expression', Expression, queue_size=10)
        e = Expression()
        e.expression = Expression.NEUTRAL
        eyePub.publish()


        

    except rospy.ServiceException as e:
        rospy.logerror("Service call failed: %s" % e)