import subprocess

def get_duration(file_path):
    command = f"ffprobe -i {file_path} -show_entries format=duration -v quiet -of csv='p=0'"
    output = subprocess.check_output(command, shell=True)
    return float(output.strip())

def extend_video_to_match_audio(input_video_path, input_audio_path, output_video_path):
    audio_duration = get_duration(input_audio_path)

    command = [
        "ffmpeg",
        "-y",  # Overwrite output file without prompting
        "-i", input_video_path,
        "-i", input_audio_path,
        "-c:v", "copy",
        "-c:a", "aac",
        "-strict", "experimental",
        "-t", str(audio_duration),  # Set the duration of the output to match the duration of the audio
        output_video_path
    ]
    subprocess.run(command)

# Example usage:
input_video_path = "/home/robocupathome/workspace/eddy_code/src/DATA/0.mp4"
input_audio_path = "/home/robocupathome/workspace/eddy_code/src/DATA/0.wav"
output_video_path = "/home/robocupathome/workspace/eddy_code/src/DATA/output_video.mp4"

extend_video_to_match_audio(input_video_path, input_audio_path, output_video_path)
