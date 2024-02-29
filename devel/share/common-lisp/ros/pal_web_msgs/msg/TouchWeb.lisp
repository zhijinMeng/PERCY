; Auto-generated. Do not edit!


(cl:in-package pal_web_msgs-msg)


;//! \htmlinclude TouchWeb.msg.html

(cl:defclass <TouchWeb> (roslisp-msg-protocol:ros-message)
  ((touch_web
    :reader touch_web
    :initarg :touch_web
    :type cl:string
    :initform "")
   (touch_project
    :reader touch_project
    :initarg :touch_project
    :type cl:string
    :initform "")
   (parameters
    :reader parameters
    :initarg :parameters
    :type cl:string
    :initform "")
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass TouchWeb (<TouchWeb>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TouchWeb>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TouchWeb)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_web_msgs-msg:<TouchWeb> is deprecated: use pal_web_msgs-msg:TouchWeb instead.")))

(cl:ensure-generic-function 'touch_web-val :lambda-list '(m))
(cl:defmethod touch_web-val ((m <TouchWeb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_web_msgs-msg:touch_web-val is deprecated.  Use pal_web_msgs-msg:touch_web instead.")
  (touch_web m))

(cl:ensure-generic-function 'touch_project-val :lambda-list '(m))
(cl:defmethod touch_project-val ((m <TouchWeb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_web_msgs-msg:touch_project-val is deprecated.  Use pal_web_msgs-msg:touch_project instead.")
  (touch_project m))

(cl:ensure-generic-function 'parameters-val :lambda-list '(m))
(cl:defmethod parameters-val ((m <TouchWeb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_web_msgs-msg:parameters-val is deprecated.  Use pal_web_msgs-msg:parameters instead.")
  (parameters m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <TouchWeb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_web_msgs-msg:success-val is deprecated.  Use pal_web_msgs-msg:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <TouchWeb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_web_msgs-msg:message-val is deprecated.  Use pal_web_msgs-msg:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TouchWeb>) ostream)
  "Serializes a message object of type '<TouchWeb>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'touch_web))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'touch_web))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'touch_project))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'touch_project))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'parameters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'parameters))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TouchWeb>) istream)
  "Deserializes a message object of type '<TouchWeb>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'touch_web) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'touch_web) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'touch_project) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'touch_project) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parameters) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'parameters) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TouchWeb>)))
  "Returns string type for a message object of type '<TouchWeb>"
  "pal_web_msgs/TouchWeb")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TouchWeb)))
  "Returns string type for a message object of type 'TouchWeb"
  "pal_web_msgs/TouchWeb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TouchWeb>)))
  "Returns md5sum for a message object of type '<TouchWeb>"
  "e5d87a5338aad48717af83218b03759b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TouchWeb)))
  "Returns md5sum for a message object of type 'TouchWeb"
  "e5d87a5338aad48717af83218b03759b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TouchWeb>)))
  "Returns full string definition for message of type '<TouchWeb>"
  (cl:format cl:nil "string touch_web~%string touch_project~%string parameters~%~%# Optional fields for error messages~%bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TouchWeb)))
  "Returns full string definition for message of type 'TouchWeb"
  (cl:format cl:nil "string touch_web~%string touch_project~%string parameters~%~%# Optional fields for error messages~%bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TouchWeb>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'touch_web))
     4 (cl:length (cl:slot-value msg 'touch_project))
     4 (cl:length (cl:slot-value msg 'parameters))
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TouchWeb>))
  "Converts a ROS message object to a list"
  (cl:list 'TouchWeb
    (cl:cons ':touch_web (touch_web msg))
    (cl:cons ':touch_project (touch_project msg))
    (cl:cons ':parameters (parameters msg))
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
