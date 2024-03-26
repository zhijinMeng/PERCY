; Auto-generated. Do not edit!


(cl:in-package pal_web_msgs-msg)


;//! \htmlinclude Subtitles.msg.html

(cl:defclass <Subtitles> (roslisp-msg-protocol:ros-message)
  ((text
    :reader text
    :initarg :text
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (new
    :reader new
    :initarg :new
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Subtitles (<Subtitles>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Subtitles>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Subtitles)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_web_msgs-msg:<Subtitles> is deprecated: use pal_web_msgs-msg:Subtitles instead.")))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <Subtitles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_web_msgs-msg:text-val is deprecated.  Use pal_web_msgs-msg:text instead.")
  (text m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Subtitles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_web_msgs-msg:type-val is deprecated.  Use pal_web_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'new-val :lambda-list '(m))
(cl:defmethod new-val ((m <Subtitles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_web_msgs-msg:new-val is deprecated.  Use pal_web_msgs-msg:new instead.")
  (new m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Subtitles>)))
    "Constants for message type '<Subtitles>"
  '((:TTS_TYPE . "tts")
    (:ASR_TYPE . "asr"))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Subtitles)))
    "Constants for message type 'Subtitles"
  '((:TTS_TYPE . "tts")
    (:ASR_TYPE . "asr"))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Subtitles>) ostream)
  "Serializes a message object of type '<Subtitles>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'new) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Subtitles>) istream)
  "Deserializes a message object of type '<Subtitles>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'new) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Subtitles>)))
  "Returns string type for a message object of type '<Subtitles>"
  "pal_web_msgs/Subtitles")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Subtitles)))
  "Returns string type for a message object of type 'Subtitles"
  "pal_web_msgs/Subtitles")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Subtitles>)))
  "Returns md5sum for a message object of type '<Subtitles>"
  "564a1471f4beddb38c913b4bd30baba4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Subtitles)))
  "Returns md5sum for a message object of type 'Subtitles"
  "564a1471f4beddb38c913b4bd30baba4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Subtitles>)))
  "Returns full string definition for message of type '<Subtitles>"
  (cl:format cl:nil "string TTS_TYPE=tts~%string ASR_TYPE=asr~%~%string text~%string type~%bool new~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Subtitles)))
  "Returns full string definition for message of type 'Subtitles"
  (cl:format cl:nil "string TTS_TYPE=tts~%string ASR_TYPE=asr~%~%string text~%string type~%bool new~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Subtitles>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'text))
     4 (cl:length (cl:slot-value msg 'type))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Subtitles>))
  "Converts a ROS message object to a list"
  (cl:list 'Subtitles
    (cl:cons ':text (text msg))
    (cl:cons ':type (type msg))
    (cl:cons ':new (new msg))
))
