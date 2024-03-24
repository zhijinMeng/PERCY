#!/usr/bin/env python3
import wave
import rospy
from audio_common_msgs.msg import AudioData
import os

AUDIO_RATE = 16000
AUDIO_CHANNELS = 1
AUDIO_WIDTH = 2


def channel_callback(msg, wf):
    wf.writeframes(msg.data)

if __name__ == '__main__':
    # call the relevant service
    rospy.init_node('record_audio')

    # Get the output file name from the parameter
    id = rospy.get_param('~id', '0')
    file_name = str(id) + '.wav'
    # output_file_path = "./src/DATA/" +file_name  # Set the correct path
    output_file_path = "/home/ubuntu/pt0/src/DATA/" +file_name  # Set the correct path
    
    print('here')
    print(os.getcwd())
    print('hello')
    
    wf = wave.open(output_file_path, 'wb') #change output directory as desired
    wf.setnchannels(AUDIO_CHANNELS)
    wf.setsampwidth(AUDIO_WIDTH)
    wf.setframerate(AUDIO_RATE)

    #Record processed audio, corresponding to channel 0
    rospy.Subscriber('/audio/channel0', AudioData, channel_callback, wf)

    print("recording...")
    rospy.spin()
    print("saving...")
    wf.close()