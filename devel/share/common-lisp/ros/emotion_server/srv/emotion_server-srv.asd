
(cl:in-package :asdf)

(defsystem "emotion_server-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "EmotionGenerate" :depends-on ("_package_EmotionGenerate"))
    (:file "_package_EmotionGenerate" :depends-on ("_package"))
  ))