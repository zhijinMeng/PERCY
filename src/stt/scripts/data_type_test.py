import numpy as np

# Example raw audio data (uint8[])
raw_audio_uint8 = np.random.randint(0, 256, size=100, dtype=np.uint8)

# Convert raw audio data to int16 (assuming it's 8-bit PCM)
audio_data_int16 = raw_audio_uint8.astype(np.int16)

# Convert audio data to LINEAR16 byte string
audio_bytes = audio_data_int16.tobytes()

# Print the original raw audio data and the LINEAR16 byte string
print("Original raw audio data (uint8[]):", raw_audio_uint8)
print("LINEAR16 byte string:", audio_bytes)
