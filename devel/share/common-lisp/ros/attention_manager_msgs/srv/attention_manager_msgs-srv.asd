
(cl:in-package :asdf)

(defsystem "attention_manager_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SetPolicy" :depends-on ("_package_SetPolicy"))
    (:file "_package_SetPolicy" :depends-on ("_package"))
  ))