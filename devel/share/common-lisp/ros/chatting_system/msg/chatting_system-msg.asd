
(cl:in-package :asdf)

(defsystem "chatting_system-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "AudioStamped" :depends-on ("_package_AudioStamped"))
    (:file "_package_AudioStamped" :depends-on ("_package"))
  ))