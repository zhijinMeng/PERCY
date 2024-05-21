import json
from moviepy.video.io.VideoFileClip import VideoFileClip

def clip_video(input_file, output_file, start_ms, end_ms):
    try:
        clip = VideoFileClip(input_file)
        clipped = clip.subclip(start_ms / 1000, end_ms / 1000)
        clipped.write_videofile(output_file, codec="libx264", audio_codec="aac")
        clip.close()
        clipped.close()
    except Exception as e:
        print(f"Error clipping video: {e}")

def main():
    # Load JSON data
    try:
        with open("final.json", "r") as json_file:
            data = json.load(json_file)
    except FileNotFoundError:
        print("Error: JSON file not found.")
        return
    except json.JSONDecodeError:
        print("Error: Invalid JSON format.")
        return

    # Process each entry in the JSON data
    for entry in data:
        try:
            index = entry["index"]
            starting_time = int(entry["starting_time"] * 1000)  # Convert to milliseconds
            ending_time = int(entry["ending_time"] * 1000)  # Convert to milliseconds
            content = entry["content"]
            output_file = f"clipped_video_{index}.mp4"

            # Clip video
            clip_video("video.mp4", output_file, starting_time, ending_time)

            print(f"Clipped video for index {index}: {content}")
        except KeyError:
            print("Error: Missing required keys in JSON entry.")
            continue

if __name__ == "__main__":
    main()
