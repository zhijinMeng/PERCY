; Auto-generated. Do not edit!


(cl:in-package emotion_server-srv)


;//! \htmlinclude EmotionGenerate-request.msg.html

(cl:defclass <EmotionGenerate-request> (roslisp-msg-protocol:ros-message)
  ((image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass EmotionGenerate-request (<EmotionGenerate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmotionGenerate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmotionGenerate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name emotion_server-srv:<EmotionGenerate-request> is deprecated: use emotion_server-srv:EmotionGenerate-request instead.")))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <EmotionGenerate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader emotion_server-srv:image-val is deprecated.  Use emotion_server-srv:image instead.")
  (image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmotionGenerate-request>) ostream)
  "Serializes a message object of type '<EmotionGenerate-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmotionGenerate-request>) istream)
  "Deserializes a message object of type '<EmotionGenerate-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmotionGenerate-request>)))
  "Returns string type for a service object of type '<EmotionGenerate-request>"
  "emotion_server/EmotionGenerateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmotionGenerate-request)))
  "Returns string type for a service object of type 'EmotionGenerate-request"
  "emotion_server/EmotionGenerateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmotionGenerate-request>)))
  "Returns md5sum for a message object of type '<EmotionGenerate-request>"
  "6cfd3401d9cf70ad4f76f96cd7ac1c9b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmotionGenerate-request)))
  "Returns md5sum for a message object of type 'EmotionGenerate-request"
  "6cfd3401d9cf70ad4f76f96cd7ac1c9b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmotionGenerate-request>)))
  "Returns full string definition for message of type '<EmotionGenerate-request>"
  (cl:format cl:nil "~%sensor_msgs/Image image~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmotionGenerate-request)))
  "Returns full string definition for message of type 'EmotionGenerate-request"
  (cl:format cl:nil "~%sensor_msgs/Image image~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmotionGenerate-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmotionGenerate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EmotionGenerate-request
    (cl:cons ':image (image msg))
))
;//! \htmlinclude EmotionGenerate-response.msg.html

(cl:defclass <EmotionGenerate-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:string
    :initform ""))
)

(cl:defclass EmotionGenerate-response (<EmotionGenerate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmotionGenerate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmotionGenerate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name emotion_server-srv:<EmotionGenerate-response> is deprecated: use emotion_server-srv:EmotionGenerate-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <EmotionGenerate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader emotion_server-srv:response-val is deprecated.  Use emotion_server-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmotionGenerate-response>) ostream)
  "Serializes a message object of type '<EmotionGenerate-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'response))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'response))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmotionGenerate-response>) istream)
  "Deserializes a message object of type '<EmotionGenerate-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'response) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'response) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmotionGenerate-response>)))
  "Returns string type for a service object of type '<EmotionGenerate-response>"
  "emotion_server/EmotionGenerateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmotionGenerate-response)))
  "Returns string type for a service object of type 'EmotionGenerate-response"
  "emotion_server/EmotionGenerateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmotionGenerate-response>)))
  "Returns md5sum for a message object of type '<EmotionGenerate-response>"
  "6cfd3401d9cf70ad4f76f96cd7ac1c9b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmotionGenerate-response)))
  "Returns md5sum for a message object of type 'EmotionGenerate-response"
  "6cfd3401d9cf70ad4f76f96cd7ac1c9b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmotionGenerate-response>)))
  "Returns full string definition for message of type '<EmotionGenerate-response>"
  (cl:format cl:nil "string response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmotionGenerate-response)))
  "Returns full string definition for message of type 'EmotionGenerate-response"
  (cl:format cl:nil "string response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmotionGenerate-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmotionGenerate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EmotionGenerate-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EmotionGenerate)))
  'EmotionGenerate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EmotionGenerate)))
  'EmotionGenerate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmotionGenerate)))
  "Returns string type for a service object of type '<EmotionGenerate>"
  "emotion_server/EmotionGenerate")