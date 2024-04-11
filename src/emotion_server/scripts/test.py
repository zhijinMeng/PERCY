#!/usr/bin/python3
import rospy
import time
from std_msgs.msg import Bool

class AudioDetector:
    def __init__(self):
        rospy.init_node('audio_detector')
        self.sad = rospy.Subscriber('/audio/voice_detected', Bool, self.newDetected)
        self.is_speaking = False
        self.startTime = time.time()
        
    def newDetected(self, data: Bool):
        print('waiting for new sentence')
        if data.data:
            self.is_speaking = True
            
            

        else:
            currentTime = time.time()
            lasting_time = currentTime - self.startTime
            if lasting_time >= 3:
                self.is_speaking = False
                self.startTime = time.time()
                print('end of sentence, waiting for new sentence')

    # def print_is_speaking(self):
    #     rate = rospy.Rate(1)  # Print every second
    #     while not rospy.is_shutdown():
    #         print("is_speaking:", self.is_speaking)
    #         rate.sleep()


if __name__ == '__main__':
    a = AudioDetector()
    # a.print_is_speaking()
    rospy.spin()
