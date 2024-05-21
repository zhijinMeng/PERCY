
#!/usr/bin/ python

import rospy
from attention_manager.srv import *


if __name__ == "__main__":

    rospy.wait_for_service("/attention_manager/set_policy")

    try:
        proxy = rospy.ServiceProxy("/attention_manager/set_policy", SetPolicy)
        response = proxy(args...) # check the attention_manager/SetPolicy message type for the expected arguments
        rospy.loginfo(response)

    except rospy.ServiceException as e:
        rospy.logerror("Service call failed: %s" % e)