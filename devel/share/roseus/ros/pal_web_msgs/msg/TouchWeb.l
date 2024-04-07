;; Auto-generated. Do not edit!


(when (boundp 'pal_web_msgs::TouchWeb)
  (if (not (find-package "PAL_WEB_MSGS"))
    (make-package "PAL_WEB_MSGS"))
  (shadow 'TouchWeb (find-package "PAL_WEB_MSGS")))
(unless (find-package "PAL_WEB_MSGS::TOUCHWEB")
  (make-package "PAL_WEB_MSGS::TOUCHWEB"))

(in-package "ROS")
;;//! \htmlinclude TouchWeb.msg.html


(defclass pal_web_msgs::TouchWeb
  :super ros::object
  :slots (_touch_web _touch_project _parameters _success _message ))

(defmethod pal_web_msgs::TouchWeb
  (:init
   (&key
    ((:touch_web __touch_web) "")
    ((:touch_project __touch_project) "")
    ((:parameters __parameters) "")
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _touch_web (string __touch_web))
   (setq _touch_project (string __touch_project))
   (setq _parameters (string __parameters))
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:touch_web
   (&optional __touch_web)
   (if __touch_web (setq _touch_web __touch_web)) _touch_web)
  (:touch_project
   (&optional __touch_project)
   (if __touch_project (setq _touch_project __touch_project)) _touch_project)
  (:parameters
   (&optional __parameters)
   (if __parameters (setq _parameters __parameters)) _parameters)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _touch_web
    4 (length _touch_web)
    ;; string _touch_project
    4 (length _touch_project)
    ;; string _parameters
    4 (length _parameters)
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _touch_web
       (write-long (length _touch_web) s) (princ _touch_web s)
     ;; string _touch_project
       (write-long (length _touch_project) s) (princ _touch_project s)
     ;; string _parameters
       (write-long (length _parameters) s) (princ _parameters s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _touch_web
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _touch_web (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _touch_project
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _touch_project (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _parameters
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _parameters (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get pal_web_msgs::TouchWeb :md5sum-) "e5d87a5338aad48717af83218b03759b")
(setf (get pal_web_msgs::TouchWeb :datatype-) "pal_web_msgs/TouchWeb")
(setf (get pal_web_msgs::TouchWeb :definition-)
      "string touch_web
string touch_project
string parameters

# Optional fields for error messages
bool success
string message

")



(provide :pal_web_msgs/TouchWeb "e5d87a5338aad48717af83218b03759b")


