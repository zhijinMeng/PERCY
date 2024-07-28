import sys
sys.path.insert(0, '/home/robocupathome/workspace/eddy_code/src/chatting_system/scripts')
from pickle_test import VoiceVerification # import the voice verification class


voice_verification = VoiceVerification()


print(voice_verification.SAMPLE_RATE)