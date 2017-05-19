
(cl:in-package :asdf)

(defsystem "atlas_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :atlas_msgs-msg
)
  :components ((:file "_package")
    (:file "ResetControls" :depends-on ("_package_ResetControls"))
    (:file "_package_ResetControls" :depends-on ("_package"))
    (:file "SetJointDamping" :depends-on ("_package_SetJointDamping"))
    (:file "_package_SetJointDamping" :depends-on ("_package"))
    (:file "AtlasFilters" :depends-on ("_package_AtlasFilters"))
    (:file "_package_AtlasFilters" :depends-on ("_package"))
    (:file "GetJointDamping" :depends-on ("_package_GetJointDamping"))
    (:file "_package_GetJointDamping" :depends-on ("_package"))
  ))