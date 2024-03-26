#!/usr/bin/env python3

import rospy
from deepface import DeepFace
from pyhri import HRIListener
from std_msgs.msg import String

from sensor_msgs.msg import Image



class FaceDetect:

    def __init__(self):
        rospy.init_node('gpt_face_recognition')
        hri = HRIListener()

        # For test, just republish the cropped test
        # Make a publisher to republish recognised face
        self.pub = rospy.Publisher('emotion',String, queue_size=10)
        while not rospy.is_shutdown():
            for id, person in hri.tracked_persons.items():
                if person.face:
                    if person.face.aligned is not None and person.face.aligned.any():
                        demography = DeepFace.analyze(img_path=person.face.aligned,actions=['emotion'], enforce_detection=False)
                        result = demography[0]
                        emotion = result['dominant_emotion']
                        print(emotion)
                        self.pub.publish("Person %s is bound to face %s" % (id, emotion))
                        rospy.sleep(3.0)




if __name__ == '__main__':
    try:
        a = FaceDetect()
    except rospy.ROSInterruptException:
        pass 





# # input the numpy array between '' of analyze function.
# demography = DeepFace.analyze('',actions=['emotion'])

# # the result is a list, where emotion is one of the element
# result = demography[0]
# # select the emotion from the list
# emotion = result['dominant_emotion']
