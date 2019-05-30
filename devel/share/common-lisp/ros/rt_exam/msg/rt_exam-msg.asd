
(cl:in-package :asdf)

(defsystem "rt_exam-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "rotate" :depends-on ("_package_rotate"))
    (:file "_package_rotate" :depends-on ("_package"))
  ))