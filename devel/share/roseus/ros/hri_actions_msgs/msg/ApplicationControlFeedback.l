;; Auto-generated. Do not edit!


(when (boundp 'hri_actions_msgs::ApplicationControlFeedback)
  (if (not (find-package "HRI_ACTIONS_MSGS"))
    (make-package "HRI_ACTIONS_MSGS"))
  (shadow 'ApplicationControlFeedback (find-package "HRI_ACTIONS_MSGS")))
(unless (find-package "HRI_ACTIONS_MSGS::APPLICATIONCONTROLFEEDBACK")
  (make-package "HRI_ACTIONS_MSGS::APPLICATIONCONTROLFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude ApplicationControlFeedback.msg.html


(defclass hri_actions_msgs::ApplicationControlFeedback
  :super ros::object
  :slots ())

(defmethod hri_actions_msgs::ApplicationControlFeedback
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

(setf (get hri_actions_msgs::ApplicationControlFeedback :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get hri_actions_msgs::ApplicationControlFeedback :datatype-) "hri_actions_msgs/ApplicationControlFeedback")
(setf (get hri_actions_msgs::ApplicationControlFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======



")



(provide :hri_actions_msgs/ApplicationControlFeedback "d41d8cd98f00b204e9800998ecf8427e")


