; Auto-generated. Do not edit!


(cl:in-package hri_actions_msgs-msg)


;//! \htmlinclude FaceOverlayFeedback.msg.html

(cl:defclass <FaceOverlayFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass FaceOverlayFeedback (<FaceOverlayFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaceOverlayFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaceOverlayFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hri_actions_msgs-msg:<FaceOverlayFeedback> is deprecated: use hri_actions_msgs-msg:FaceOverlayFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaceOverlayFeedback>) ostream)
  "Serializes a message object of type '<FaceOverlayFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaceOverlayFeedback>) istream)
  "Deserializes a message object of type '<FaceOverlayFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaceOverlayFeedback>)))
  "Returns string type for a message object of type '<FaceOverlayFeedback>"
  "hri_actions_msgs/FaceOverlayFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceOverlayFeedback)))
  "Returns string type for a message object of type 'FaceOverlayFeedback"
  "hri_actions_msgs/FaceOverlayFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaceOverlayFeedback>)))
  "Returns md5sum for a message object of type '<FaceOverlayFeedback>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaceOverlayFeedback)))
  "Returns md5sum for a message object of type 'FaceOverlayFeedback"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaceOverlayFeedback>)))
  "Returns full string definition for message of type '<FaceOverlayFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaceOverlayFeedback)))
  "Returns full string definition for message of type 'FaceOverlayFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaceOverlayFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaceOverlayFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'FaceOverlayFeedback
))
