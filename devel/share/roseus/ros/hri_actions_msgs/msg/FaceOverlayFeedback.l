;; Auto-generated. Do not edit!


(when (boundp 'hri_actions_msgs::FaceOverlayFeedback)
  (if (not (find-package "HRI_ACTIONS_MSGS"))
    (make-package "HRI_ACTIONS_MSGS"))
  (shadow 'FaceOverlayFeedback (find-package "HRI_ACTIONS_MSGS")))
(unless (find-package "HRI_ACTIONS_MSGS::FACEOVERLAYFEEDBACK")
  (make-package "HRI_ACTIONS_MSGS::FACEOVERLAYFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude FaceOverlayFeedback.msg.html


(defclass hri_actions_msgs::FaceOverlayFeedback
  :super ros::object
  :slots ())

(defmethod hri_actions_msgs::FaceOverlayFeedback
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

(setf (get hri_actions_msgs::FaceOverlayFeedback :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get hri_actions_msgs::FaceOverlayFeedback :datatype-) "hri_actions_msgs/FaceOverlayFeedback")
(setf (get hri_actions_msgs::FaceOverlayFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======



")



(provide :hri_actions_msgs/FaceOverlayFeedback "d41d8cd98f00b204e9800998ecf8427e")


