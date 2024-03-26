; Auto-generated. Do not edit!


(cl:in-package pal_web_msgs-srv)


;//! \htmlinclude GetLastTouchWeb-request.msg.html

(cl:defclass <GetLastTouchWeb-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetLastTouchWeb-request (<GetLastTouchWeb-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLastTouchWeb-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLastTouchWeb-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_web_msgs-srv:<GetLastTouchWeb-request> is deprecated: use pal_web_msgs-srv:GetLastTouchWeb-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLastTouchWeb-request>) ostream)
  "Serializes a message object of type '<GetLastTouchWeb-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLastTouchWeb-request>) istream)
  "Deserializes a message object of type '<GetLastTouchWeb-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLastTouchWeb-request>)))
  "Returns string type for a service object of type '<GetLastTouchWeb-request>"
  "pal_web_msgs/GetLastTouchWebRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLastTouchWeb-request)))
  "Returns string type for a service object of type 'GetLastTouchWeb-request"
  "pal_web_msgs/GetLastTouchWebRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLastTouchWeb-request>)))
  "Returns md5sum for a message object of type '<GetLastTouchWeb-request>"
  "f9395367802b9132f5764b023404f09b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLastTouchWeb-request)))
  "Returns md5sum for a message object of type 'GetLastTouchWeb-request"
  "f9395367802b9132f5764b023404f09b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLastTouchWeb-request>)))
  "Returns full string definition for message of type '<GetLastTouchWeb-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLastTouchWeb-request)))
  "Returns full string definition for message of type 'GetLastTouchWeb-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLastTouchWeb-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLastTouchWeb-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLastTouchWeb-request
))
;//! \htmlinclude GetLastTouchWeb-response.msg.html

(cl:defclass <GetLastTouchWeb-response> (roslisp-msg-protocol:ros-message)
  ((project
    :reader project
    :initarg :project
    :type cl:string
    :initform "")
   (page
    :reader page
    :initarg :page
    :type cl:string
    :initform ""))
)

(cl:defclass GetLastTouchWeb-response (<GetLastTouchWeb-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLastTouchWeb-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLastTouchWeb-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_web_msgs-srv:<GetLastTouchWeb-response> is deprecated: use pal_web_msgs-srv:GetLastTouchWeb-response instead.")))

(cl:ensure-generic-function 'project-val :lambda-list '(m))
(cl:defmethod project-val ((m <GetLastTouchWeb-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_web_msgs-srv:project-val is deprecated.  Use pal_web_msgs-srv:project instead.")
  (project m))

(cl:ensure-generic-function 'page-val :lambda-list '(m))
(cl:defmethod page-val ((m <GetLastTouchWeb-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_web_msgs-srv:page-val is deprecated.  Use pal_web_msgs-srv:page instead.")
  (page m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLastTouchWeb-response>) ostream)
  "Serializes a message object of type '<GetLastTouchWeb-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'project))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'project))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'page))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'page))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLastTouchWeb-response>) istream)
  "Deserializes a message object of type '<GetLastTouchWeb-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'project) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'project) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'page) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'page) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLastTouchWeb-response>)))
  "Returns string type for a service object of type '<GetLastTouchWeb-response>"
  "pal_web_msgs/GetLastTouchWebResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLastTouchWeb-response)))
  "Returns string type for a service object of type 'GetLastTouchWeb-response"
  "pal_web_msgs/GetLastTouchWebResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLastTouchWeb-response>)))
  "Returns md5sum for a message object of type '<GetLastTouchWeb-response>"
  "f9395367802b9132f5764b023404f09b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLastTouchWeb-response)))
  "Returns md5sum for a message object of type 'GetLastTouchWeb-response"
  "f9395367802b9132f5764b023404f09b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLastTouchWeb-response>)))
  "Returns full string definition for message of type '<GetLastTouchWeb-response>"
  (cl:format cl:nil "string project~%string page~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLastTouchWeb-response)))
  "Returns full string definition for message of type 'GetLastTouchWeb-response"
  (cl:format cl:nil "string project~%string page~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLastTouchWeb-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'project))
     4 (cl:length (cl:slot-value msg 'page))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLastTouchWeb-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLastTouchWeb-response
    (cl:cons ':project (project msg))
    (cl:cons ':page (page msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetLastTouchWeb)))
  'GetLastTouchWeb-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetLastTouchWeb)))
  'GetLastTouchWeb-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLastTouchWeb)))
  "Returns string type for a service object of type '<GetLastTouchWeb>"
  "pal_web_msgs/GetLastTouchWeb")