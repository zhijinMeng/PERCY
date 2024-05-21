import json
import subprocess

def clip_video(input_file, output_file, start_ms, end_ms):
    try:
        cmd = [
            "ffmpeg",
            "-ss", str(start_ms / 1000),  # Start time in seconds
            "-i", input_file,
            "-to", str((end_ms - start_ms) / 1000),  # Duration in seconds
            "-c:v", "libx264", "-c:a", "aac",
            "-strict", "experimental", "-b:a", "192k",
            output_file
        ]
        subprocess.run(cmd, check=True)
    except subprocess.CalledProcessError as e:
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
