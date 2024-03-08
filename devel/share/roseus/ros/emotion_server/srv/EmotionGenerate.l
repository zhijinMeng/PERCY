;; Auto-generated. Do not edit!


(when (boundp 'emotion_server::EmotionGenerate)
  (if (not (find-package "EMOTION_SERVER"))
    (make-package "EMOTION_SERVER"))
  (shadow 'EmotionGenerate (find-package "EMOTION_SERVER")))
(unless (find-package "EMOTION_SERVER::EMOTIONGENERATE")
  (make-package "EMOTION_SERVER::EMOTIONGENERATE"))
(unless (find-package "EMOTION_SERVER::EMOTIONGENERATEREQUEST")
  (make-package "EMOTION_SERVER::EMOTIONGENERATEREQUEST"))
(unless (find-package "EMOTION_SERVER::EMOTIONGENERATERESPONSE")
  (make-package "EMOTION_SERVER::EMOTIONGENERATERESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass emotion_server::EmotionGenerateRequest
  :super ros::object
  :slots (_image ))

(defmethod emotion_server::EmotionGenerateRequest
  (:init
   (&key
    ((:image __image) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _image __image)
   self)
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _image
    (send _image :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _image
       (send _image :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;;
   self)
  )

(defclass emotion_server::EmotionGenerateResponse
  :super ros::object
  :slots (_response ))

(defmethod emotion_server::EmotionGenerateResponse
  (:init
   (&key
    ((:response __response) "")
    )
   (send-super :init)
   (setq _response (string __response))
   self)
  (:response
   (&optional __response)
   (if __response (setq _response __response)) _response)
  (:serialization-length
   ()
   (+
    ;; string _response
    4 (length _response)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _response
       (write-long (length _response) s) (princ _response s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _response
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _response (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass emotion_server::EmotionGenerate
  :super ros::object
  :slots ())

(setf (get emotion_server::EmotionGenerate :md5sum-) "6cfd3401d9cf70ad4f76f96cd7ac1c9b")
(setf (get emotion_server::EmotionGenerate :datatype-) "emotion_server/EmotionGenerate")
(setf (get emotion_server::EmotionGenerate :request) emotion_server::EmotionGenerateRequest)
(setf (get emotion_server::EmotionGenerate :response) emotion_server::EmotionGenerateResponse)

(defmethod emotion_server::EmotionGenerateRequest
  (:response () (instance emotion_server::EmotionGenerateResponse :init)))

(setf (get emotion_server::EmotionGenerateRequest :md5sum-) "6cfd3401d9cf70ad4f76f96cd7ac1c9b")
(setf (get emotion_server::EmotionGenerateRequest :datatype-) "emotion_server/EmotionGenerateRequest")
(setf (get emotion_server::EmotionGenerateRequest :definition-)
      "
sensor_msgs/Image image

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
---
string response

")

(setf (get emotion_server::EmotionGenerateResponse :md5sum-) "6cfd3401d9cf70ad4f76f96cd7ac1c9b")
(setf (get emotion_server::EmotionGenerateResponse :datatype-) "emotion_server/EmotionGenerateResponse")
(setf (get emotion_server::EmotionGenerateResponse :definition-)
      "
sensor_msgs/Image image

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
---
string response

")



(provide :emotion_server/EmotionGenerate "6cfd3401d9cf70ad4f76f96cd7ac1c9b")


