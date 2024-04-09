;; Auto-generated. Do not edit!


(when (boundp 'gpt_server::GPTGenerate)
  (if (not (find-package "GPT_SERVER"))
    (make-package "GPT_SERVER"))
  (shadow 'GPTGenerate (find-package "GPT_SERVER")))
(unless (find-package "GPT_SERVER::GPTGENERATE")
  (make-package "GPT_SERVER::GPTGENERATE"))
(unless (find-package "GPT_SERVER::GPTGENERATEREQUEST")
  (make-package "GPT_SERVER::GPTGENERATEREQUEST"))
(unless (find-package "GPT_SERVER::GPTGENERATERESPONSE")
  (make-package "GPT_SERVER::GPTGENERATERESPONSE"))

(in-package "ROS")





(defclass gpt_server::GPTGenerateRequest
  :super ros::object
  :slots (_request _initialEmotion _finalEmotion _manual_mode _is_question ))

(defmethod gpt_server::GPTGenerateRequest
  (:init
   (&key
    ((:request __request) "")
    ((:initialEmotion __initialEmotion) "")
    ((:finalEmotion __finalEmotion) "")
    ((:manual_mode __manual_mode) nil)
    ((:is_question __is_question) nil)
    )
   (send-super :init)
   (setq _request (string __request))
   (setq _initialEmotion (string __initialEmotion))
   (setq _finalEmotion (string __finalEmotion))
   (setq _manual_mode __manual_mode)
   (setq _is_question __is_question)
   self)
  (:request
   (&optional __request)
   (if __request (setq _request __request)) _request)
  (:initialEmotion
   (&optional __initialEmotion)
   (if __initialEmotion (setq _initialEmotion __initialEmotion)) _initialEmotion)
  (:finalEmotion
   (&optional __finalEmotion)
   (if __finalEmotion (setq _finalEmotion __finalEmotion)) _finalEmotion)
  (:manual_mode
   (&optional (__manual_mode :null))
   (if (not (eq __manual_mode :null)) (setq _manual_mode __manual_mode)) _manual_mode)
  (:is_question
   (&optional (__is_question :null))
   (if (not (eq __is_question :null)) (setq _is_question __is_question)) _is_question)
  (:serialization-length
   ()
   (+
    ;; string _request
    4 (length _request)
    ;; string _initialEmotion
    4 (length _initialEmotion)
    ;; string _finalEmotion
    4 (length _finalEmotion)
    ;; bool _manual_mode
    1
    ;; bool _is_question
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _request
       (write-long (length _request) s) (princ _request s)
     ;; string _initialEmotion
       (write-long (length _initialEmotion) s) (princ _initialEmotion s)
     ;; string _finalEmotion
       (write-long (length _finalEmotion) s) (princ _finalEmotion s)
     ;; bool _manual_mode
       (if _manual_mode (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_question
       (if _is_question (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _request
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _request (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _initialEmotion
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _initialEmotion (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _finalEmotion
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _finalEmotion (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _manual_mode
     (setq _manual_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_question
     (setq _is_question (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass gpt_server::GPTGenerateResponse
  :super ros::object
  :slots (_response ))

(defmethod gpt_server::GPTGenerateResponse
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

(defclass gpt_server::GPTGenerate
  :super ros::object
  :slots ())

(setf (get gpt_server::GPTGenerate :md5sum-) "6a3016ec943c4b1e9b46a9b5305c9cf6")
(setf (get gpt_server::GPTGenerate :datatype-) "gpt_server/GPTGenerate")
(setf (get gpt_server::GPTGenerate :request) gpt_server::GPTGenerateRequest)
(setf (get gpt_server::GPTGenerate :response) gpt_server::GPTGenerateResponse)

(defmethod gpt_server::GPTGenerateRequest
  (:response () (instance gpt_server::GPTGenerateResponse :init)))

(setf (get gpt_server::GPTGenerateRequest :md5sum-) "6a3016ec943c4b1e9b46a9b5305c9cf6")
(setf (get gpt_server::GPTGenerateRequest :datatype-) "gpt_server/GPTGenerateRequest")
(setf (get gpt_server::GPTGenerateRequest :definition-)
      "string request
string initialEmotion
string finalEmotion
bool manual_mode
bool is_question
---
string response

")

(setf (get gpt_server::GPTGenerateResponse :md5sum-) "6a3016ec943c4b1e9b46a9b5305c9cf6")
(setf (get gpt_server::GPTGenerateResponse :datatype-) "gpt_server/GPTGenerateResponse")
(setf (get gpt_server::GPTGenerateResponse :definition-)
      "string request
string initialEmotion
string finalEmotion
bool manual_mode
bool is_question
---
string response

")



(provide :gpt_server/GPTGenerate "6a3016ec943c4b1e9b46a9b5305c9cf6")


