; Auto-generated. Do not edit!


(cl:in-package gpt_server-srv)


;//! \htmlinclude GPTGenerate-request.msg.html

(cl:defclass <GPTGenerate-request> (roslisp-msg-protocol:ros-message)
  ((request
    :reader request
    :initarg :request
    :type cl:string
    :initform "")
   (initialEmotion
    :reader initialEmotion
    :initarg :initialEmotion
    :type cl:string
    :initform "")
   (finalEmotion
    :reader finalEmotion
    :initarg :finalEmotion
    :type cl:string
    :initform "")
   (manual_mode
    :reader manual_mode
    :initarg :manual_mode
    :type cl:boolean
    :initform cl:nil)
   (is_question
    :reader is_question
    :initarg :is_question
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GPTGenerate-request (<GPTGenerate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GPTGenerate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GPTGenerate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gpt_server-srv:<GPTGenerate-request> is deprecated: use gpt_server-srv:GPTGenerate-request instead.")))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <GPTGenerate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gpt_server-srv:request-val is deprecated.  Use gpt_server-srv:request instead.")
  (request m))

(cl:ensure-generic-function 'initialEmotion-val :lambda-list '(m))
(cl:defmethod initialEmotion-val ((m <GPTGenerate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gpt_server-srv:initialEmotion-val is deprecated.  Use gpt_server-srv:initialEmotion instead.")
  (initialEmotion m))

(cl:ensure-generic-function 'finalEmotion-val :lambda-list '(m))
(cl:defmethod finalEmotion-val ((m <GPTGenerate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gpt_server-srv:finalEmotion-val is deprecated.  Use gpt_server-srv:finalEmotion instead.")
  (finalEmotion m))

(cl:ensure-generic-function 'manual_mode-val :lambda-list '(m))
(cl:defmethod manual_mode-val ((m <GPTGenerate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gpt_server-srv:manual_mode-val is deprecated.  Use gpt_server-srv:manual_mode instead.")
  (manual_mode m))

(cl:ensure-generic-function 'is_question-val :lambda-list '(m))
(cl:defmethod is_question-val ((m <GPTGenerate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gpt_server-srv:is_question-val is deprecated.  Use gpt_server-srv:is_question instead.")
  (is_question m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GPTGenerate-request>) ostream)
  "Serializes a message object of type '<GPTGenerate-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'request))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'request))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'initialEmotion))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'initialEmotion))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'finalEmotion))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'finalEmotion))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'manual_mode) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_question) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GPTGenerate-request>) istream)
  "Deserializes a message object of type '<GPTGenerate-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'request) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'request) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'initialEmotion) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'initialEmotion) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'finalEmotion) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'finalEmotion) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'manual_mode) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_question) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GPTGenerate-request>)))
  "Returns string type for a service object of type '<GPTGenerate-request>"
  "gpt_server/GPTGenerateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GPTGenerate-request)))
  "Returns string type for a service object of type 'GPTGenerate-request"
  "gpt_server/GPTGenerateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GPTGenerate-request>)))
  "Returns md5sum for a message object of type '<GPTGenerate-request>"
  "6a3016ec943c4b1e9b46a9b5305c9cf6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GPTGenerate-request)))
  "Returns md5sum for a message object of type 'GPTGenerate-request"
  "6a3016ec943c4b1e9b46a9b5305c9cf6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GPTGenerate-request>)))
  "Returns full string definition for message of type '<GPTGenerate-request>"
  (cl:format cl:nil "string request~%string initialEmotion~%string finalEmotion~%bool manual_mode~%bool is_question~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GPTGenerate-request)))
  "Returns full string definition for message of type 'GPTGenerate-request"
  (cl:format cl:nil "string request~%string initialEmotion~%string finalEmotion~%bool manual_mode~%bool is_question~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GPTGenerate-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'request))
     4 (cl:length (cl:slot-value msg 'initialEmotion))
     4 (cl:length (cl:slot-value msg 'finalEmotion))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GPTGenerate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GPTGenerate-request
    (cl:cons ':request (request msg))
    (cl:cons ':initialEmotion (initialEmotion msg))
    (cl:cons ':finalEmotion (finalEmotion msg))
    (cl:cons ':manual_mode (manual_mode msg))
    (cl:cons ':is_question (is_question msg))
))
;//! \htmlinclude GPTGenerate-response.msg.html

(cl:defclass <GPTGenerate-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:string
    :initform ""))
)

(cl:defclass GPTGenerate-response (<GPTGenerate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GPTGenerate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GPTGenerate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gpt_server-srv:<GPTGenerate-response> is deprecated: use gpt_server-srv:GPTGenerate-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <GPTGenerate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gpt_server-srv:response-val is deprecated.  Use gpt_server-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GPTGenerate-response>) ostream)
  "Serializes a message object of type '<GPTGenerate-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'response))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'response))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GPTGenerate-response>) istream)
  "Deserializes a message object of type '<GPTGenerate-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GPTGenerate-response>)))
  "Returns string type for a service object of type '<GPTGenerate-response>"
  "gpt_server/GPTGenerateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GPTGenerate-response)))
  "Returns string type for a service object of type 'GPTGenerate-response"
  "gpt_server/GPTGenerateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GPTGenerate-response>)))
  "Returns md5sum for a message object of type '<GPTGenerate-response>"
  "6a3016ec943c4b1e9b46a9b5305c9cf6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GPTGenerate-response)))
  "Returns md5sum for a message object of type 'GPTGenerate-response"
  "6a3016ec943c4b1e9b46a9b5305c9cf6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GPTGenerate-response>)))
  "Returns full string definition for message of type '<GPTGenerate-response>"
  (cl:format cl:nil "string response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GPTGenerate-response)))
  "Returns full string definition for message of type 'GPTGenerate-response"
  (cl:format cl:nil "string response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GPTGenerate-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GPTGenerate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GPTGenerate-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GPTGenerate)))
  'GPTGenerate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GPTGenerate)))
  'GPTGenerate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GPTGenerate)))
  "Returns string type for a service object of type '<GPTGenerate>"
  "gpt_server/GPTGenerate")