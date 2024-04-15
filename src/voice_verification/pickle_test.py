import pickle
import numpy as np
from rescnn_model import DeepSpeakerModel
from audio import NUM_FRAMES, SAMPLE_RATE, read_mfcc, sample_from_mfcc
class VoiceVerification:
    def __init__(self):
        self.pickle_files = {}
        self.MODEL_PATH = 'model.h5'
        self.model = DeepSpeakerModel()
        self.model.rescnn.load_weights(self.MODEL_PATH, by_name=True)
        self.baseline = None
        self.SAMPLE_RATE = 16000
        self.NUM_FRAMES = 300
        self.NUM_FBANKS = 64

    def run_model_evaluation(self, audio_input, model, raw_audio=False):
        """run_model_evaluation.

        Parameters
        ----------
        audio_input : str, Path-like
            Path to audio input for evaluation on prediction value.
        model : DeepSpeakerModel
            Instantiated model with required weights for speaker verification.
        raw_audio : bool
            Boolean value on whether the input audio path is mfcc or raw wav/flac.
        """
        if raw_audio is True:
            mfcc = sample_from_mfcc(read_mfcc(audio_input, SAMPLE_RATE), NUM_FRAMES)
        else:
            mfcc = audio_input
        prediction = model.rescnn.predict(np.expand_dims(mfcc, axis=0))
        return prediction


    def enroll_new_user(self, id, enroll_wav_path):
        file_path = f'{id}.pkl'
        mfcc = sample_from_mfcc(read_mfcc(enroll_wav_path, SAMPLE_RATE), NUM_FRAMES)
        with open(file_path, 'wb') as f:
            pickle.dump(mfcc, f)
        self.pickle_files[id] = file_path

    def load_mfcc(self, id):
        file_path = self.pickle_files.get(id)
        if file_path:
            with open(file_path, 'rb') as f:
                mfcc = pickle.load(f)
            return mfcc
        else:
            print(f"No MFCC found for ID {id}")
            return None
        
    def verify_user(self, id, verify_wav_path):
        mfcc = sample_from_mfcc(read_mfcc(verify_wav_path, SAMPLE_RATE), NUM_FRAMES) # heard MFCC
        loaded_mfcc = self.load_mfcc(id) # enrollment MFCC
        if loaded_mfcc is not None:
            prediction = self.run_model_evaluation(loaded_mfcc, self.model, raw_audio=False)
            verify_prediction = self.run_model_evaluation(mfcc, self.model, raw_audio=False)
            return prediction, verify_prediction
        else:
            return None
        
        
    def batch_cosine_similarity(x1, x2):
        """ https://en.wikipedia.org/wiki/Cosine_similarity """

        mul = np.multiply(x1, x2)
        s = np.sum(mul, axis=1)
        return s

if __name__ == "__main__":
    # Example usage
    voice_verification = VoiceVerification()
    id = 123
    mfcc = np.random.rand(10, 10)
    voice_verification.enroll_new_user(123, 'test0.wav')

    # Later, when you want to load the MFCC array
    loaded_mfcc = voice_verification.load_mfcc(id)
    if loaded_mfcc is not None:
        print(f"MFCC loaded successfully for ID {id}")
        print(loaded_mfcc)
    # Verify user
    verify_wav_path = 'test0.wav'
    prediction, verify_prediction = voice_verification.verify_user(id, verify_wav_path)
    if prediction is not None:
        print(f"Prediction: {prediction}")
        print(f"Verify Prediction: {verify_prediction}")
    else:
        print("No prediction found for", id)

    score=VoiceVerification.batch_cosine_similarity(prediction, verify_prediction)
    print(score)