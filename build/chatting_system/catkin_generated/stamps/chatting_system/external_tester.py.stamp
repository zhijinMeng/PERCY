#!/usr/bin/python3

import rospy
from audio_common_msgs.msg import AudioData
import sounddevice as sd
import numpy as np
import webrtcvad
import wave

# Parameters
SAMPLE_RATE = 16000  # Sample rate in Hz
CHANNELS = 1  # Number of audio channels (1 for mono)
FRAME_DURATION = 30  # Duration of each frame in ms
FRAME_SIZE = int(SAMPLE_RATE * FRAME_DURATION / 1000)  # Frame size in samples

# Initialize VAD
vad = webrtcvad.Vad()
vad.set_mode(1)  # Set VAD aggressiveness (0-3)

# Initialize buffer and recording state
buffer = []
recording = False

def save_audio(buffer):
    filename = f"speech_segment_{rospy.Time.now().to_sec()}.wav"
    with wave.open(filename, "wb") as wf:
        wf.setnchannels(CHANNELS)
        wf.setsampwidth(2)  # Assuming 16-bit PCM
        wf.setframerate(SAMPLE_RATE)
        wf.writeframes(b''.join(buffer))
    rospy.loginfo(f"Saved audio to {filename}")

def audio_callback(msg):
    global buffer, recording
    
    # Convert message data to numpy array
    audio_data = np.frombuffer(msg.data, dtype=np.int16)
    
    # Detect speech using VAD
    is_speech = vad.is_speech(audio_data.tobytes(), SAMPLE_RATE)
    
    if is_speech:
        if not recording:
            rospy.loginfo("Speech detected, starting recording.")
        recording = True
        buffer.append(audio_data.tobytes())
    else:
        if recording:
            rospy.loginfo("Speech ended, saving recording.")
            save_audio(buffer)
            buffer = []
        recording = False

def listener():
    # Initialize ROS node
    rospy.init_node('audio_listener', anonymous=True)
    
    # Subscribe to audio topic
    rospy.Subscriber('external_microphone', AudioData, audio_callback)
    
    rospy.loginfo("Listening for audio...")
    rospy.spin()

if __name__ == '__main__':
    try:
        listener()
    except rospy.ROSInterruptException:
        pass
