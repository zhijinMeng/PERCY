; Auto-generated. Do not edit!


(cl:in-package emotion_server-srv)


;//! \htmlinclude EmotionGenerate-request.msg.html

(cl:defclass <EmotionGenerate-request> (roslisp-msg-protocol:ros-message)
  ((wavPath
    :reader wavPath
    :initarg :wavPath
    :type cl:string
    :initform "")
   (videoPath
    :reader videoPath
    :initarg :videoPath
    :type cl:string
    :initform "")
   (textPath
    :reader textPath
    :initarg :textPath
    :type cl:string
    :initform ""))
)

(cl:defclass EmotionGenerate-request (<EmotionGenerate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmotionGenerate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmotionGenerate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name emotion_server-srv:<EmotionGenerate-request> is deprecated: use emotion_server-srv:EmotionGenerate-request instead.")))

(cl:ensure-generic-function 'wavPath-val :lambda-list '(m))
(cl:defmethod wavPath-val ((m <EmotionGenerate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader emotion_server-srv:wavPath-val is deprecated.  Use emotion_server-srv:wavPath instead.")
  (wavPath m))

(cl:ensure-generic-function 'videoPath-val :lambda-list '(m))
(cl:defmethod videoPath-val ((m <EmotionGenerate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader emotion_server-srv:videoPath-val is deprecated.  Use emotion_server-srv:videoPath instead.")
  (videoPath m))

(cl:ensure-generic-function 'textPath-val :lambda-list '(m))
(cl:defmethod textPath-val ((m <EmotionGenerate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader emotion_server-srv:textPath-val is deprecated.  Use emotion_server-srv:textPath instead.")
  (textPath m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmotionGenerate-request>) ostream)
  "Serializes a message object of type '<EmotionGenerate-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'wavPath))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'wavPath))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'videoPath))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'videoPath))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'textPath))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'textPath))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmotionGenerate-request>) istream)
  "Deserializes a message object of type '<EmotionGenerate-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wavPath) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'wavPath) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'videoPath) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'videoPath) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'textPath) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'textPath) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
  "82bcd62a338b6421f3f91564dfc93990")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmotionGenerate-request)))
  "Returns md5sum for a message object of type 'EmotionGenerate-request"
  "82bcd62a338b6421f3f91564dfc93990")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmotionGenerate-request>)))
  "Returns full string definition for message of type '<EmotionGenerate-request>"
  (cl:format cl:nil "string wavPath~%string videoPath~%string textPath~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmotionGenerate-request)))
  "Returns full string definition for message of type 'EmotionGenerate-request"
  (cl:format cl:nil "string wavPath~%string videoPath~%string textPath~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmotionGenerate-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'wavPath))
     4 (cl:length (cl:slot-value msg 'videoPath))
     4 (cl:length (cl:slot-value msg 'textPath))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmotionGenerate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EmotionGenerate-request
    (cl:cons ':wavPath (wavPath msg))
    (cl:cons ':videoPath (videoPath msg))
    (cl:cons ':textPath (textPath msg))
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
  "82bcd62a338b6421f3f91564dfc93990")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmotionGenerate-response)))
  "Returns md5sum for a message object of type 'EmotionGenerate-response"
  "82bcd62a338b6421f3f91564dfc93990")
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