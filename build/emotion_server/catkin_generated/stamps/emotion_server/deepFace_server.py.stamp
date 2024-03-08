#!/usr/bin/env python3

import rospy
from emotion_server.srv import *

from deepface import DeepFace
from std_msgs.msg import String

from sensor_msgs.msg import Image
import numpy as np


class Server:

    def __init__(self):
        rospy.init_node('deepFace_emotion_recognition')
        self.service = rospy.Service('emotion_generate', EmotionGenerate, self.OnRequest)

        print('Server is ready')


    def OnRequest(self, data:EmotionGenerateRequest):

        im = np.frombuffer(data.image.data, dtype=float, count=-1)
        demography = DeepFace.analyze(img_path=im, actions=['emotion'], enforce_detection=False)
        result = demography[0]
        emotion = result['dominant_emotion']
        print(emotion)
        return emotion



if __name__ == '__main__':
    server = Server()
    rospy.spin()