
(cl:in-package :asdf)

(defsystem "osrf_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "JointCommands" :depends-on ("_package_JointCommands"))
    (:file "_package_JointCommands" :depends-on ("_package"))
  ))