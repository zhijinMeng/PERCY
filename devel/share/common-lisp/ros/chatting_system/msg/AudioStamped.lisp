; Auto-generated. Do not edit!


(cl:in-package chatting_system-msg)


;//! \htmlinclude AudioStamped.msg.html

(cl:defclass <AudioStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass AudioStamped (<AudioStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AudioStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AudioStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name chatting_system-msg:<AudioStamped> is deprecated: use chatting_system-msg:AudioStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AudioStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chatting_system-msg:header-val is deprecated.  Use chatting_system-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <AudioStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chatting_system-msg:data-val is deprecated.  Use chatting_system-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AudioStamped>) ostream)
  "Serializes a message object of type '<AudioStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AudioStamped>) istream)
  "Deserializes a message object of type '<AudioStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AudioStamped>)))
  "Returns string type for a message object of type '<AudioStamped>"
  "chatting_system/AudioStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AudioStamped)))
  "Returns string type for a message object of type 'AudioStamped"
  "chatting_system/AudioStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AudioStamped>)))
  "Returns md5sum for a message object of type '<AudioStamped>"
  "8903b686ebe5db3477e83c6d0bb149f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AudioStamped)))
  "Returns md5sum for a message object of type 'AudioStamped"
  "8903b686ebe5db3477e83c6d0bb149f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AudioStamped>)))
  "Returns full string definition for message of type '<AudioStamped>"
  (cl:format cl:nil "# AudioStamped.msg~%std_msgs/Header header  # Standard ROS header with timestamp~%uint8[] data            # Raw audio data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AudioStamped)))
  "Returns full string definition for message of type 'AudioStamped"
  (cl:format cl:nil "# AudioStamped.msg~%std_msgs/Header header  # Standard ROS header with timestamp~%uint8[] data            # Raw audio data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AudioStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AudioStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'AudioStamped
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
))
