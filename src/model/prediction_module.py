# -*- coding: utf-8 -*-
#! /usr/bin/python3
"""240323 单个py文件预测


"""


# 导入python包
import numpy as np
import torch
import torch.nn as nn
import torch.nn.functional as F
# from torchvision import datasets,models
import librosa
from transformers import AutoTokenizer

import cv2
import json


# 超参数定义
one_path_mp4 = '/home/robocupathome/workspace/eddy_code/src/DATA/txt_0.mp4'
one_path_wav = '/home/robocupathome/workspace/eddy_code/src/DATA/txt_0.wav'
one_path_text = '/home/robocupathome/workspace/eddy_code/src/DATA/txt_1.txt'
n_class = 4
name_list = ['anger', 'joy', 'neutral', 'surprise']

# 加载tokenizer
text_max_len = 50
model_name = "google-bert/bert-base-uncased"
tokenizer = AutoTokenizer.from_pretrained(model_name)
voc_size = tokenizer.vocab_size
# 音频设置参数
sr = 16000  # 采样率
win_length = int(0.025 * sr)  # 窗口大小,25ms
hop_length = int(0.01 * sr)  # 步长,10ms
n_mfcc = 40  # MFCC系数数量
max_len = 500  # 目标时间维度长度

model_path = '/home/robocupathome/workspace/eddy_code/src/emotion_server/scripts/model.pth'


# Get cpu or gpu device for training.
# device = "cuda" if torch.cuda.is_available() else "mps" if torch.backends.mps.is_available() else "cpu"
device =  "cpu"
print(f"Using {device} device")


def get_one_video_array(video_path):
  # 打开视频文件
  # video_path = one_mp4_path_eg
  cap = cv2.VideoCapture(video_path)

  # 获取视频信息
  fps = cap.get(cv2.CAP_PROP_FPS)
  total_frames = int(cap.get(cv2.CAP_PROP_FRAME_COUNT))

  # 计算每隔多少帧取一帧
  interval = total_frames // 2 #4+1为5帧
  # print(interval,total_frames)

  # 初始化一个列表来存储抽取的帧
  frames = []

  # 循环遍历视频,每隔一定帧数抽取一帧
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

  # 将抽取的帧转换为 numpy 数组
  one_video_array = np.concatenate(frames,axis=2)
  # one_video_array.shape
  # 释放视频资源
  cap.release()
  cv2.destroyAllWindows()
  return one_video_array


def extract_mfcc(file_path):
    # 加载WAV文件并重采样
    y, _ = librosa.load(file_path, sr=sr)

    # 计算MFCC特征
    mfcc = librosa.feature.mfcc(y=y, sr=sr, n_mfcc=n_mfcc, hop_length=hop_length, win_length=win_length)

    # 填充或截断MFCC特征
    if mfcc.shape[1] < max_len:
        mfcc = np.pad(mfcc, ((0, 0), (0, max_len - mfcc.shape[1])), mode='constant')
    else:
        mfcc = mfcc[:, :max_len]

    # 转换为三维数组
    # mfcc = np.expand_dims(mfcc, axis=2)

    return mfcc


def data_process(video_path, audio_path, text_path,tokenizer):

    # 图像数据处理

    one_video_array = get_one_video_array(video_path)
    one_video = torch.tensor(one_video_array).float()
    one_video = one_video.permute(2,0,1)

    # 文本数据处理
    with open(text_path, 'r', encoding='utf-8') as f:
        one_text = f.read()
    one_text = tokenizer(one_text, padding='max_length', max_length=text_max_len, truncation=True, return_tensors="pt")['input_ids'][0]
    one_text = torch.tensor(one_text).long()

    # 语音数据处理
    one_audio = extract_mfcc(audio_path)
    one_audio = torch.tensor(one_audio).float()

    return one_video, one_text, one_audio

class ImageBlock(nn.Module):
    def __init__(self):
        super().__init__()
        self.conv1 = nn.Conv2d(6, 32, 3)
        self.pool = nn.MaxPool2d(3, 3)
        self.conv2 = nn.Conv2d(32, 64, 3)
        self.conv3 = nn.Conv2d(64, 128, 3)
        self.fc1 = nn.Linear(6272, 120)
        self.fc2 = nn.Linear(120, 100)

    def forward(self, x):
        x = self.pool(F.relu(self.conv1(x)))
        x = self.pool(F.relu(self.conv2(x)))
        x = self.pool(F.relu(self.conv3(x)))
        x = torch.flatten(x, 1) # flatten all dimensions except batch
        x = F.relu(self.fc1(x))
        x = F.relu(self.fc2(x))
        return x
class textCNN(nn.Module):
    def __init__(self,):
        super().__init__()
        emb_dim = 100
        # n_class = 4
        kernels=[3,4,5]
        kernel_number=[150,150,150]
        self.embd = nn.Embedding(voc_size, emb_dim)
        self.convs = nn.ModuleList([nn.Conv1d(text_max_len, number, size,padding=size) for (size,number) in zip(kernels,kernel_number)])
        self.dropout=nn.Dropout(0.1)
        self.out = nn.Linear(sum(kernel_number), 100)

    def forward(self, x):
        x = self.embd(x)
        x = [F.relu(conv(x)) for conv in self.convs]
        x = [F.max_pool1d(i, i.size(2)).squeeze(2) for i in x]
        x = torch.cat(x, 1)
        x = self.dropout(x)
        x = self.out(x)
        return x

class AudioBlock(nn.Module):
    def __init__(self,):
        super().__init__()
        self.lstm = nn.LSTM(500,50,num_layers=2)

        self.fc1 = nn.Linear(2000, 500)
        self.fc2 = nn.Linear(500, 100)

    def forward(self, x):
        x,_ = self.lstm(x)
        x = torch.flatten(x, 1) # flatten all dimensions except batch
        x = F.relu(self.fc1(x))
        x = F.relu(self.fc2(x))
        return x

class bigModel(nn.Module):
    def __init__(self):
        super().__init__()
        self.flatten = nn.Flatten()
        self.img_block = ImageBlock()
        self.text_block = textCNN()
        self.audio_block = AudioBlock()
        self.relu = nn.ReLU()
        self.lin1 = nn.Linear(300, 50)
        self.lin2 = nn.Linear(50, n_class)


    def forward(self, img,text,audio):
        # print(img.shape, text.shape, audio.shape)
        x1 = self.img_block(img)
        x2 = self.text_block(text)
        x3 = self.audio_block(audio)
        x = torch.cat([x1,x2,x3],dim=1)
        x = self.flatten(x)
        x = self.lin1(x)
        x = self.lin2(x)
        # x =
        return x

model_load = bigModel()
model_load.load_state_dict(torch.load(model_path,map_location=torch.device('cpu')))

def get_predict_result(one_path_mp4, one_path_wav, one_path_text, tokenizer, model_load):

  one_video, one_text, one_audio = data_process(one_path_mp4, one_path_wav, one_path_text,tokenizer)
  # Tensor增加一个维度
  b_video = one_video.unsqueeze(0)
  b_text = one_text.unsqueeze(0)
  b_audio = one_audio.unsqueeze(0)
  model_load.eval()
  with torch.no_grad():
      output = model_load(b_video.to(device),b_text.to(device),b_audio.to(device))
      # output = output.cpu().numpy()
      # print(output)
  # 获取预测概率分布
  prob_dist = list(F.softmax(output, dim=1).cpu().numpy()[0])

  # 获取index
  index = np.argmax(prob_dist)

  # 获取name
  name = name_list[index]

  result_dict = {'prob_dist':str(prob_dist), 'pred_index':str(index), 'pred_name':name}
  # 改成json字符串
  str_json = json.dumps(result_dict)

  return str_json

result_str = get_predict_result(one_path_mp4, one_path_wav, one_path_text, tokenizer, model_load)
print(result_str)
