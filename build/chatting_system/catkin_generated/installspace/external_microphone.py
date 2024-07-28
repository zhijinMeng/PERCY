#!/usr/bin/python3

import rospy
import pyaudio
import numpy as np
from std_msgs.msg import Header
from audio_common_msgs.msg import AudioData

# Parameters
SAMPLE_RATE = 16000  # Sample rate in Hz
CHANNELS = 1  # Number of audio channels (1 for mono)
CHUNK = 1024  # Number of frames per buffer

def audio_publisher():
    rospy.init_node('external_microphone_publisher', anonymous=True)
    pub = rospy.Publisher('external_microphone', AudioData, queue_size=10)

    # Initialize PyAudio
    audio = pyaudio.PyAudio()

    # Open the microphone stream
    stream = audio.open(format=pyaudio.paInt16, channels=CHANNELS,
                        rate=SAMPLE_RATE, input=True,
                        frames_per_buffer=CHUNK)

    rospy.loginfo("Microphone streaming started")

    try:
        while not rospy.is_shutdown():
            # Read audio data from the stream
            data = stream.read(CHUNK)

            # Create a header with the current time
            header = Header()
            header.stamp = rospy.Time.now()

            # Create the AudioData message
            audio_msg = AudioData()
            audio_msg.header = header
            audio_msg.data = np.frombuffer(data, dtype=np.uint8).tolist()
            
            pub.publish(audio_msg)

    except rospy.ROSInterruptException:
        pass
    finally:
        stream.stop_stream()
        stream.close()
        audio.terminate()
        rospy.loginfo("Microphone streaming stopped")

if __name__ == '__main__':
    try:
        audio_publisher()
    except rospy.ROSInterruptException:
        pass
