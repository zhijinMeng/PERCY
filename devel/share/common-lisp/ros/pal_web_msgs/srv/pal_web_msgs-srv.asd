
(cl:in-package :asdf)

(defsystem "pal_web_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GetLastTouchWeb" :depends-on ("_package_GetLastTouchWeb"))
    (:file "_package_GetLastTouchWeb" :depends-on ("_package"))
  ))