#!/usr/bin/env python3
import sys
import os
import rospy
from audio_common_msgs.msg import AudioData
import wave


AUDIO_RATE = 16000
AUDIO_CHANNELS = 1
AUDIO_WIDTH = 2


def create_folder(folder_path):
    if not os.path.exists(folder_path):
        # Create the folder if it doesn't exist
        os.makedirs(folder_path)


def channel_callback(msg, wf):
    wf.writeframes(msg.data)


if __name__ == '__main__':
    # call the relevant service
    rospy.init_node('enrollment_voice')

    # Get the output file name from the parameter
    base_path = '/home/robocupathome/workspace/eddy_code/src/DATA'
    print(base_path)
    id = rospy.get_param('~id', 'test')
    folder_path = os.path.join(base_path, id)  # Folder path for the user ID
    create_folder(folder_path)
    print(folder_path)

    file_name = 'mfcc.wav'
    # output_file_path = "./src/DATA/" +file_name  # Set the correct path
    output_file_path = folder_path+'/'+file_name  # Set the correct path

    print(output_file_path)
    wf = wave.open(output_file_path, 'wb')  # Change output directory as desired
    wf.setnchannels(AUDIO_CHANNELS)
    wf.setsampwidth(AUDIO_WIDTH)
    wf.setframerate(AUDIO_RATE)

    # Record processed audio, corresponding to channel 0
    rospy.Subscriber('/audio/channel0', AudioData, channel_callback, wf)

    print("Recording...")
    rospy.spin()  # Keep the script running to receive audio data
    print("Saving...")
    wf.close()  # Close the WAV file after recording is finished
