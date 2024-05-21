; Auto-generated. Do not edit!


(cl:in-package attention_manager_msgs-srv)


;//! \htmlinclude SetPolicy-request.msg.html

(cl:defclass <SetPolicy-request> (roslisp-msg-protocol:ros-message)
  ((policy
    :reader policy
    :initarg :policy
    :type cl:fixnum
    :initform 0)
   (frame
    :reader frame
    :initarg :frame
    :type cl:string
    :initform ""))
)

(cl:defclass SetPolicy-request (<SetPolicy-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPolicy-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPolicy-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name attention_manager_msgs-srv:<SetPolicy-request> is deprecated: use attention_manager_msgs-srv:SetPolicy-request instead.")))

(cl:ensure-generic-function 'policy-val :lambda-list '(m))
(cl:defmethod policy-val ((m <SetPolicy-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader attention_manager_msgs-srv:policy-val is deprecated.  Use attention_manager_msgs-srv:policy instead.")
  (policy m))

(cl:ensure-generic-function 'frame-val :lambda-list '(m))
(cl:defmethod frame-val ((m <SetPolicy-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader attention_manager_msgs-srv:frame-val is deprecated.  Use attention_manager_msgs-srv:frame instead.")
  (frame m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SetPolicy-request>)))
    "Constants for message type '<SetPolicy-request>"
  '((:DISABLED . 0)
    (:RANDOM . 1)
    (:IDLE_SOCIAL . 2)
    (:FOCUSED_SOCIAL . 3)
    (:STATUS . "status"))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SetPolicy-request)))
    "Constants for message type 'SetPolicy-request"
  '((:DISABLED . 0)
    (:RANDOM . 1)
    (:IDLE_SOCIAL . 2)
    (:FOCUSED_SOCIAL . 3)
    (:STATUS . "status"))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPolicy-request>) ostream)
  "Serializes a message object of type '<SetPolicy-request>"
  (cl:let* ((signed (cl:slot-value msg 'policy)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPolicy-request>) istream)
  "Deserializes a message object of type '<SetPolicy-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'policy) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPolicy-request>)))
  "Returns string type for a service object of type '<SetPolicy-request>"
  "attention_manager_msgs/SetPolicyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPolicy-request)))
  "Returns string type for a service object of type 'SetPolicy-request"
  "attention_manager_msgs/SetPolicyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPolicy-request>)))
  "Returns md5sum for a message object of type '<SetPolicy-request>"
  "0f86d129016b02b119d57fd98d1af8fc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPolicy-request)))
  "Returns md5sum for a message object of type 'SetPolicy-request"
  "0f86d129016b02b119d57fd98d1af8fc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPolicy-request>)))
  "Returns full string definition for message of type '<SetPolicy-request>"
  (cl:format cl:nil "# the attention manager will not control the robot's focus of attention~%int8 DISABLED=0~%~%# randomly look around, with short fixations~%int8 RANDOM=1~%~%# the robot will look around for faces, with fixations on detected faces~%int8 IDLE_SOCIAL=2~%~%# focus the robot's attention on a specific frame (typically, a person),~%# provided as the `frame` parameter. If not `frame` parameter is set, the~%# attention manager will focus on the last tracked frame (if any)~%int8 FOCUSED_SOCIAL=3~%~%string STATUS=status~%~%int8 policy~%~%# only used for policies that expect a specific focus on attention~%string frame~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPolicy-request)))
  "Returns full string definition for message of type 'SetPolicy-request"
  (cl:format cl:nil "# the attention manager will not control the robot's focus of attention~%int8 DISABLED=0~%~%# randomly look around, with short fixations~%int8 RANDOM=1~%~%# the robot will look around for faces, with fixations on detected faces~%int8 IDLE_SOCIAL=2~%~%# focus the robot's attention on a specific frame (typically, a person),~%# provided as the `frame` parameter. If not `frame` parameter is set, the~%# attention manager will focus on the last tracked frame (if any)~%int8 FOCUSED_SOCIAL=3~%~%string STATUS=status~%~%int8 policy~%~%# only used for policies that expect a specific focus on attention~%string frame~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPolicy-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'frame))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPolicy-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPolicy-request
    (cl:cons ':policy (policy msg))
    (cl:cons ':frame (frame msg))
))
;//! \htmlinclude SetPolicy-response.msg.html

(cl:defclass <SetPolicy-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (error_msg
    :reader error_msg
    :initarg :error_msg
    :type cl:string
    :initform ""))
)

(cl:defclass SetPolicy-response (<SetPolicy-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPolicy-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPolicy-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name attention_manager_msgs-srv:<SetPolicy-response> is deprecated: use attention_manager_msgs-srv:SetPolicy-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetPolicy-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader attention_manager_msgs-srv:success-val is deprecated.  Use attention_manager_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_msg-val :lambda-list '(m))
(cl:defmethod error_msg-val ((m <SetPolicy-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader attention_manager_msgs-srv:error_msg-val is deprecated.  Use attention_manager_msgs-srv:error_msg instead.")
  (error_msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPolicy-response>) ostream)
  "Serializes a message object of type '<SetPolicy-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPolicy-response>) istream)
  "Deserializes a message object of type '<SetPolicy-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPolicy-response>)))
  "Returns string type for a service object of type '<SetPolicy-response>"
  "attention_manager_msgs/SetPolicyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPolicy-response)))
  "Returns string type for a service object of type 'SetPolicy-response"
  "attention_manager_msgs/SetPolicyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPolicy-response>)))
  "Returns md5sum for a message object of type '<SetPolicy-response>"
  "0f86d129016b02b119d57fd98d1af8fc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPolicy-response)))
  "Returns md5sum for a message object of type 'SetPolicy-response"
  "0f86d129016b02b119d57fd98d1af8fc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPolicy-response>)))
  "Returns full string definition for message of type '<SetPolicy-response>"
  (cl:format cl:nil "# Result:~%~%# true if the action was successfully performed~%bool success~%~%# if success = False, error_msg might contain additional information about the~%# failure.~%string error_msg~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPolicy-response)))
  "Returns full string definition for message of type 'SetPolicy-response"
  (cl:format cl:nil "# Result:~%~%# true if the action was successfully performed~%bool success~%~%# if success = False, error_msg might contain additional information about the~%# failure.~%string error_msg~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPolicy-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'error_msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPolicy-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPolicy-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_msg (error_msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetPolicy)))
  'SetPolicy-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetPolicy)))
  'SetPolicy-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPolicy)))
  "Returns string type for a service object of type '<SetPolicy>"
  "attention_manager_msgs/SetPolicy")