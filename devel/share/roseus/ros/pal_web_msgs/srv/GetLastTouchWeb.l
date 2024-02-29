;; Auto-generated. Do not edit!


(when (boundp 'pal_web_msgs::GetLastTouchWeb)
  (if (not (find-package "PAL_WEB_MSGS"))
    (make-package "PAL_WEB_MSGS"))
  (shadow 'GetLastTouchWeb (find-package "PAL_WEB_MSGS")))
(unless (find-package "PAL_WEB_MSGS::GETLASTTOUCHWEB")
  (make-package "PAL_WEB_MSGS::GETLASTTOUCHWEB"))
(unless (find-package "PAL_WEB_MSGS::GETLASTTOUCHWEBREQUEST")
  (make-package "PAL_WEB_MSGS::GETLASTTOUCHWEBREQUEST"))
(unless (find-package "PAL_WEB_MSGS::GETLASTTOUCHWEBRESPONSE")
  (make-package "PAL_WEB_MSGS::GETLASTTOUCHWEBRESPONSE"))

(in-package "ROS")





(defclass pal_web_msgs::GetLastTouchWebRequest
  :super ros::object
  :slots ())

(defmethod pal_web_msgs::GetLastTouchWebRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass pal_web_msgs::GetLastTouchWebResponse
  :super ros::object
  :slots (_project _page ))

(defmethod pal_web_msgs::GetLastTouchWebResponse
  (:init
   (&key
    ((:project __project) "")
    ((:page __page) "")
    )
   (send-super :init)
   (setq _project (string __project))
   (setq _page (string __page))
   self)
  (:project
   (&optional __project)
   (if __project (setq _project __project)) _project)
  (:page
   (&optional __page)
   (if __page (setq _page __page)) _page)
  (:serialization-length
   ()
   (+
    ;; string _project
    4 (length _project)
    ;; string _page
    4 (length _page)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _project
       (write-long (length _project) s) (princ _project s)
     ;; string _page
       (write-long (length _page) s) (princ _page s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _project
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _project (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _page
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _page (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass pal_web_msgs::GetLastTouchWeb
  :super ros::object
  :slots ())

(setf (get pal_web_msgs::GetLastTouchWeb :md5sum-) "f9395367802b9132f5764b023404f09b")
(setf (get pal_web_msgs::GetLastTouchWeb :datatype-) "pal_web_msgs/GetLastTouchWeb")
(setf (get pal_web_msgs::GetLastTouchWeb :request) pal_web_msgs::GetLastTouchWebRequest)
(setf (get pal_web_msgs::GetLastTouchWeb :response) pal_web_msgs::GetLastTouchWebResponse)

(defmethod pal_web_msgs::GetLastTouchWebRequest
  (:response () (instance pal_web_msgs::GetLastTouchWebResponse :init)))

(setf (get pal_web_msgs::GetLastTouchWebRequest :md5sum-) "f9395367802b9132f5764b023404f09b")
(setf (get pal_web_msgs::GetLastTouchWebRequest :datatype-) "pal_web_msgs/GetLastTouchWebRequest")
(setf (get pal_web_msgs::GetLastTouchWebRequest :definition-)
      "---
string project
string page
")

(setf (get pal_web_msgs::GetLastTouchWebResponse :md5sum-) "f9395367802b9132f5764b023404f09b")
(setf (get pal_web_msgs::GetLastTouchWebResponse :datatype-) "pal_web_msgs/GetLastTouchWebResponse")
(setf (get pal_web_msgs::GetLastTouchWebResponse :definition-)
      "---
string project
string page
")



(provide :pal_web_msgs/GetLastTouchWeb "f9395367802b9132f5764b023404f09b")


