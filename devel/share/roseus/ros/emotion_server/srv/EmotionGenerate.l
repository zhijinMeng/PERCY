;; Auto-generated. Do not edit!


(when (boundp 'emotion_server::EmotionGenerate)
  (if (not (find-package "EMOTION_SERVER"))
    (make-package "EMOTION_SERVER"))
  (shadow 'EmotionGenerate (find-package "EMOTION_SERVER")))
(unless (find-package "EMOTION_SERVER::EMOTIONGENERATE")
  (make-package "EMOTION_SERVER::EMOTIONGENERATE"))
(unless (find-package "EMOTION_SERVER::EMOTIONGENERATEREQUEST")
  (make-package "EMOTION_SERVER::EMOTIONGENERATEREQUEST"))
(unless (find-package "EMOTION_SERVER::EMOTIONGENERATERESPONSE")
  (make-package "EMOTION_SERVER::EMOTIONGENERATERESPONSE"))

(in-package "ROS")





(defclass emotion_server::EmotionGenerateRequest
  :super ros::object
  :slots (_wavPath _videoPath _textPath ))

(defmethod emotion_server::EmotionGenerateRequest
  (:init
   (&key
    ((:wavPath __wavPath) "")
    ((:videoPath __videoPath) "")
    ((:textPath __textPath) "")
    )
   (send-super :init)
   (setq _wavPath (string __wavPath))
   (setq _videoPath (string __videoPath))
   (setq _textPath (string __textPath))
   self)
  (:wavPath
   (&optional __wavPath)
   (if __wavPath (setq _wavPath __wavPath)) _wavPath)
  (:videoPath
   (&optional __videoPath)
   (if __videoPath (setq _videoPath __videoPath)) _videoPath)
  (:textPath
   (&optional __textPath)
   (if __textPath (setq _textPath __textPath)) _textPath)
  (:serialization-length
   ()
   (+
    ;; string _wavPath
    4 (length _wavPath)
    ;; string _videoPath
    4 (length _videoPath)
    ;; string _textPath
    4 (length _textPath)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _wavPath
       (write-long (length _wavPath) s) (princ _wavPath s)
     ;; string _videoPath
       (write-long (length _videoPath) s) (princ _videoPath s)
     ;; string _textPath
       (write-long (length _textPath) s) (princ _textPath s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _wavPath
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _wavPath (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _videoPath
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _videoPath (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _textPath
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _textPath (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass emotion_server::EmotionGenerateResponse
  :super ros::object
  :slots (_response ))

(defmethod emotion_server::EmotionGenerateResponse
  (:init
   (&key
    ((:response __response) "")
    )
   (send-super :init)
   (setq _response (string __response))
   self)
  (:response
   (&optional __response)
   (if __response (setq _response __response)) _response)
  (:serialization-length
   ()
   (+
    ;; string _response
    4 (length _response)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _response
       (write-long (length _response) s) (princ _response s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _response
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _response (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass emotion_server::EmotionGenerate
  :super ros::object
  :slots ())

(setf (get emotion_server::EmotionGenerate :md5sum-) "82bcd62a338b6421f3f91564dfc93990")
(setf (get emotion_server::EmotionGenerate :datatype-) "emotion_server/EmotionGenerate")
(setf (get emotion_server::EmotionGenerate :request) emotion_server::EmotionGenerateRequest)
(setf (get emotion_server::EmotionGenerate :response) emotion_server::EmotionGenerateResponse)

(defmethod emotion_server::EmotionGenerateRequest
  (:response () (instance emotion_server::EmotionGenerateResponse :init)))

(setf (get emotion_server::EmotionGenerateRequest :md5sum-) "82bcd62a338b6421f3f91564dfc93990")
(setf (get emotion_server::EmotionGenerateRequest :datatype-) "emotion_server/EmotionGenerateRequest")
(setf (get emotion_server::EmotionGenerateRequest :definition-)
      "string wavPath
string videoPath
string textPath
---
string response

")

(setf (get emotion_server::EmotionGenerateResponse :md5sum-) "82bcd62a338b6421f3f91564dfc93990")
(setf (get emotion_server::EmotionGenerateResponse :datatype-) "emotion_server/EmotionGenerateResponse")
(setf (get emotion_server::EmotionGenerateResponse :definition-)
      "string wavPath
string videoPath
string textPath
---
string response

")



(provide :emotion_server/EmotionGenerate "82bcd62a338b6421f3f91564dfc93990")


