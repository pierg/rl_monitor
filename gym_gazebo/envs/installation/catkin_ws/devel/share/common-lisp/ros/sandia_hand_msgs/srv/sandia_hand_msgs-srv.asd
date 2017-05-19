
(cl:in-package :asdf)

(defsystem "sandia_hand_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sandia_hand_msgs-msg
)
  :components ((:file "_package")
    (:file "SimpleGraspSrv" :depends-on ("_package_SimpleGraspSrv"))
    (:file "_package_SimpleGraspSrv" :depends-on ("_package"))
    (:file "SetJointLimitPolicy" :depends-on ("_package_SetJointLimitPolicy"))
    (:file "_package_SetJointLimitPolicy" :depends-on ("_package"))
    (:file "SetFingerHome" :depends-on ("_package_SetFingerHome"))
    (:file "_package_SetFingerHome" :depends-on ("_package"))
    (:file "SimpleGraspWithSlew" :depends-on ("_package_SimpleGraspWithSlew"))
    (:file "_package_SimpleGraspWithSlew" :depends-on ("_package"))
    (:file "SetParameters" :depends-on ("_package_SetParameters"))
    (:file "_package_SetParameters" :depends-on ("_package"))
    (:file "GetParameters" :depends-on ("_package_GetParameters"))
    (:file "_package_GetParameters" :depends-on ("_package"))
  ))