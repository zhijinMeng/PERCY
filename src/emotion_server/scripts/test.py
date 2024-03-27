from emotion_server.srv.prediction_module import bigModel
import torch
from transformers import AutoTokenizer
import numpy as np
import cv2
import librosa


# Define paths
one_path_mp4 = '/home/robocupathome/workspace/eddy_code/src/DATA/angry_1.mp4'
one_path_wav = '/home/robocupathome/workspace/eddy_code/src/DATA/angry_1.wav'
one_path_text = '/home/robocupathome/workspace/eddy_code/src/DATA/test_1.txt'
model_path = '/home/robocupathome/workspace/eddy_code/src/emotion_server/scripts/model.pth'
name_list = ['anger', 'joy', 'neutral', 'surprise']


# load tokenizer
text_max_len = 50
model_name = "google-bert/bert-base-uncased"
tokenizer = AutoTokenizer.from_pretrained(model_name)
voc_size = tokenizer.vocab_size
# parameters definition for wave file
sr = 16000  # 采样率
win_length = int(0.025 * sr)  # 窗口大小,25ms
hop_length = int(0.01 * sr)  # 步长,10ms
n_mfcc = 40  # MFCC系数数量
max_len = 500  # 目标时间维度长度

device =  "cpu"
print(f"Using {device} device")
def load_model(model_path):
    model = bigModel()
    model.load_state_dict(torch.load(model_path, map_location=torch.device('cpu')))
    model.eval()
    return model

def bigModel():


# Get predictions
def data_process(video_path, audio_path, text_path,tokenizer):

    # video processing

    one_video_array = get_one_video_array(video_path)
    one_video = torch.tensor(one_video_array).float()
    one_video = one_video.permute(2,0,1)

    # text processing
    with open(text_path, 'r', encoding='utf-8') as f:
        one_text = f.read()
    one_text = tokenizer(one_text, padding='max_length', max_length=text_max_len, truncation=True, return_tensors="pt")['input_ids'][0]
    one_text = torch.tensor(one_text).long()

    # audio processing
    one_audio = extract_mfcc(audio_path)
    one_audio = torch.tensor(one_audio).float()

    return one_video, one_text, one_audio


def get_one_video_array(video_path):
  # read video
  # video_path = one_mp4_path_eg
  cap = cv2.VideoCapture(video_path)

  # extract video information
  fps = cap.get(cv2.CAP_PROP_FPS)
  total_frames = int(cap.get(cv2.CAP_PROP_FRAME_COUNT))

  # claculation for the interval
  interval = total_frames // 2 #4+1为5帧
  # print(interval,total_frames)

  # initialize the frames list
  frames = []

  # extract frames
  num = 0
  for i in range(0, total_frames, 1):
      cap.set(cv2.CAP_PROP_POS_FRAMES, i)
      ret, frame = cap.read()
      if ret:
          # 使用 torchvision 的 read_image 函数将帧转换为 Tensor 格式
          frame_array = cv2.resize(frame,(224,224))
          frames.append(frame_array)
      num = num + 1
      if num>1:
        break

  # convert the frames to a single array
  one_video_array = np.concatenate(frames,axis=2)
  # one_video_array.shape
  # 释放视频资源
  cap.release()
  cv2.destroyAllWindows()
  return one_video_array


def extract_mfcc(file_path):
    # load wav
    y, _ = librosa.load(file_path, sr=sr)

    # extract mfcc information
    mfcc = librosa.feature.mfcc(y=y, sr=sr, n_mfcc=n_mfcc, hop_length=hop_length, win_length=win_length)

    # polishing the mfcc
    if mfcc.shape[1] < max_len:
        mfcc = np.pad(mfcc, ((0, 0), (0, max_len - mfcc.shape[1])), mode='constant')
    else:
        mfcc = mfcc[:, :max_len]


    return mfcc

def get_predictions(one_path_mp4, one_path_wav, one_path_text, model):
    # Your original data_process function can be called here directly
    one_video, one_text, one_audio = data_process(one_path_mp4, one_path_wav, one_path_text, tokenizer)

    # Add a batch dimension to inputs
    one_video = one_video.unsqueeze(0)
    one_text = one_text.unsqueeze(0)
    one_audio = one_audio.unsqueeze(0)

    # Perform prediction
    with torch.no_grad():
        output = model(one_video, one_text, one_audio)
        probabilities = torch.softmax(output, dim=1).numpy()[0]
        pred_index = np.argmax(probabilities)
        pred_name = name_list[pred_index]
    return pred_name

# Load the model
model = load_model(model_path)

# Predict and print the emotion
emotion = get_predictions(one_path_mp4, one_path_wav, one_path_text, model)
print(f"Predicted Emotion: {emotion}")
