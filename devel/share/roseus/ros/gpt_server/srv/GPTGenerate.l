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
  :slots (_request ))

(defmethod gpt_server::GPTGenerateRequest
  (:init
   (&key
    ((:request __request) "")
    )
   (send-super :init)
   (setq _request (string __request))
   self)
  (:request
   (&optional __request)
   (if __request (setq _request __request)) _request)
  (:serialization-length
   ()
   (+
    ;; string _request
    4 (length _request)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _request
       (write-long (length _request) s) (princ _request s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _request
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _request (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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

(setf (get gpt_server::GPTGenerate :md5sum-) "33ea4e5aeb30f5913da681ca459d55f3")
(setf (get gpt_server::GPTGenerate :datatype-) "gpt_server/GPTGenerate")
(setf (get gpt_server::GPTGenerate :request) gpt_server::GPTGenerateRequest)
(setf (get gpt_server::GPTGenerate :response) gpt_server::GPTGenerateResponse)

(defmethod gpt_server::GPTGenerateRequest
  (:response () (instance gpt_server::GPTGenerateResponse :init)))

(setf (get gpt_server::GPTGenerateRequest :md5sum-) "33ea4e5aeb30f5913da681ca459d55f3")
(setf (get gpt_server::GPTGenerateRequest :datatype-) "gpt_server/GPTGenerateRequest")
(setf (get gpt_server::GPTGenerateRequest :definition-)
      "string request
---
string response

")

(setf (get gpt_server::GPTGenerateResponse :md5sum-) "33ea4e5aeb30f5913da681ca459d55f3")
(setf (get gpt_server::GPTGenerateResponse :datatype-) "gpt_server/GPTGenerateResponse")
(setf (get gpt_server::GPTGenerateResponse :definition-)
      "string request
---
string response

")



(provide :gpt_server/GPTGenerate "33ea4e5aeb30f5913da681ca459d55f3")


