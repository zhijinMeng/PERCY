
(cl:in-package :asdf)

(defsystem "gpt_server-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GPTGenerate" :depends-on ("_package_GPTGenerate"))
    (:file "_package_GPTGenerate" :depends-on ("_package"))
  ))