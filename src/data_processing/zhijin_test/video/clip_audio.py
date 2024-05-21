import json
from pydub import AudioSegment

def clip_audio(input_file, output_file, start_ms, end_ms):
    audio = AudioSegment.from_wav(input_file)
    clipped_audio = audio[start_ms:end_ms]
    clipped_audio.export(output_file, format="wav")

def main():
    # Load JSON data
    with open("final.json", "r") as json_file:
        data = json.load(json_file)

    # Process each entry in the JSON data
    for entry in data:
        index = entry["index"]
        starting_time = int(entry["starting_time"] * 1000)  # Convert to milliseconds
        ending_time = int(entry["ending_time"] * 1000)  # Convert to milliseconds
        content = entry["content"]
        output_file = f"clipped_audio_{index}.wav"

        # Clip audio
        clip_audio("audio.wav", output_file, starting_time, ending_time)

        print(f"Clipped audio for index {index}: {content}")

if __name__ == "__main__":
    main()
