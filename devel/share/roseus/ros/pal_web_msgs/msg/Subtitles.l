;; Auto-generated. Do not edit!


(when (boundp 'pal_web_msgs::Subtitles)
  (if (not (find-package "PAL_WEB_MSGS"))
    (make-package "PAL_WEB_MSGS"))
  (shadow 'Subtitles (find-package "PAL_WEB_MSGS")))
(unless (find-package "PAL_WEB_MSGS::SUBTITLES")
  (make-package "PAL_WEB_MSGS::SUBTITLES"))

(in-package "ROS")
;;//! \htmlinclude Subtitles.msg.html


(intern "*TTS_TYPE*" (find-package "PAL_WEB_MSGS::SUBTITLES"))
(shadow '*TTS_TYPE* (find-package "PAL_WEB_MSGS::SUBTITLES"))
(defconstant pal_web_msgs::Subtitles::*TTS_TYPE* "tts")
(intern "*ASR_TYPE*" (find-package "PAL_WEB_MSGS::SUBTITLES"))
(shadow '*ASR_TYPE* (find-package "PAL_WEB_MSGS::SUBTITLES"))
(defconstant pal_web_msgs::Subtitles::*ASR_TYPE* "asr")

(defun pal_web_msgs::Subtitles-to-symbol (const)
  (cond
        (t nil)))

(defclass pal_web_msgs::Subtitles
  :super ros::object
  :slots (_text _type _new ))

(defmethod pal_web_msgs::Subtitles
  (:init
   (&key
    ((:text __text) "")
    ((:type __type) "")
    ((:new __new) nil)
    )
   (send-super :init)
   (setq _text (string __text))
   (setq _type (string __type))
   (setq _new __new)
   self)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:new
   (&optional (__new :null))
   (if (not (eq __new :null)) (setq _new __new)) _new)
  (:serialization-length
   ()
   (+
    ;; string _text
    4 (length _text)
    ;; string _type
    4 (length _type)
    ;; bool _new
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; bool _new
       (if _new (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _new
     (setq _new (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pal_web_msgs::Subtitles :md5sum-) "564a1471f4beddb38c913b4bd30baba4")
(setf (get pal_web_msgs::Subtitles :datatype-) "pal_web_msgs/Subtitles")
(setf (get pal_web_msgs::Subtitles :definition-)
      "string TTS_TYPE=tts
string ASR_TYPE=asr

string text
string type
bool new
")



(provide :pal_web_msgs/Subtitles "564a1471f4beddb38c913b4bd30baba4")


