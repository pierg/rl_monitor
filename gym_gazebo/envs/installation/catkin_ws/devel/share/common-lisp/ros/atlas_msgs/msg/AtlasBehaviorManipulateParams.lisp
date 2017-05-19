; Auto-generated. Do not edit!


(cl:in-package atlas_msgs-msg)


;//! \htmlinclude AtlasBehaviorManipulateParams.msg.html

(cl:defclass <AtlasBehaviorManipulateParams> (roslisp-msg-protocol:ros-message)
  ((use_desired
    :reader use_desired
    :initarg :use_desired
    :type cl:boolean
    :initform cl:nil)
   (desired
    :reader desired
    :initarg :desired
    :type atlas_msgs-msg:AtlasBehaviorPelvisServoParams
    :initform (cl:make-instance 'atlas_msgs-msg:AtlasBehaviorPelvisServoParams))
   (use_demo_mode
    :reader use_demo_mode
    :initarg :use_demo_mode
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AtlasBehaviorManipulateParams (<AtlasBehaviorManipulateParams>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AtlasBehaviorManipulateParams>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AtlasBehaviorManipulateParams)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atlas_msgs-msg:<AtlasBehaviorManipulateParams> is deprecated: use atlas_msgs-msg:AtlasBehaviorManipulateParams instead.")))

(cl:ensure-generic-function 'use_desired-val :lambda-list '(m))
(cl:defmethod use_desired-val ((m <AtlasBehaviorManipulateParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:use_desired-val is deprecated.  Use atlas_msgs-msg:use_desired instead.")
  (use_desired m))

(cl:ensure-generic-function 'desired-val :lambda-list '(m))
(cl:defmethod desired-val ((m <AtlasBehaviorManipulateParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:desired-val is deprecated.  Use atlas_msgs-msg:desired instead.")
  (desired m))

(cl:ensure-generic-function 'use_demo_mode-val :lambda-list '(m))
(cl:defmethod use_demo_mode-val ((m <AtlasBehaviorManipulateParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:use_demo_mode-val is deprecated.  Use atlas_msgs-msg:use_demo_mode instead.")
  (use_demo_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AtlasBehaviorManipulateParams>) ostream)
  "Serializes a message object of type '<AtlasBehaviorManipulateParams>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_desired) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'desired) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_demo_mode) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AtlasBehaviorManipulateParams>) istream)
  "Deserializes a message object of type '<AtlasBehaviorManipulateParams>"
    (cl:setf (cl:slot-value msg 'use_desired) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'desired) istream)
    (cl:setf (cl:slot-value msg 'use_demo_mode) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AtlasBehaviorManipulateParams>)))
  "Returns string type for a message object of type '<AtlasBehaviorManipulateParams>"
  "atlas_msgs/AtlasBehaviorManipulateParams")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AtlasBehaviorManipulateParams)))
  "Returns string type for a message object of type 'AtlasBehaviorManipulateParams"
  "atlas_msgs/AtlasBehaviorManipulateParams")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AtlasBehaviorManipulateParams>)))
  "Returns md5sum for a message object of type '<AtlasBehaviorManipulateParams>"
  "31708e76546023a79d813abdf129ccb7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AtlasBehaviorManipulateParams)))
  "Returns md5sum for a message object of type 'AtlasBehaviorManipulateParams"
  "31708e76546023a79d813abdf129ccb7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AtlasBehaviorManipulateParams>)))
  "Returns full string definition for message of type '<AtlasBehaviorManipulateParams>"
  (cl:format cl:nil "# mirrored from AtlasControlTypes.h~%bool use_desired~%atlas_msgs/AtlasBehaviorPelvisServoParams desired~%bool use_demo_mode~%~%================================================================================~%MSG: atlas_msgs/AtlasBehaviorPelvisServoParams~%# mirrored from AtlasControlTypes.h~%~%float64 pelvis_height~%float64 pelvis_yaw~%~%float64 pelvis_lat  # deprecated Atlas V3~%~%float64 pelvis_pitch~%float64 pelvis_roll~%float64 com_v0~%float64 com_v1~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AtlasBehaviorManipulateParams)))
  "Returns full string definition for message of type 'AtlasBehaviorManipulateParams"
  (cl:format cl:nil "# mirrored from AtlasControlTypes.h~%bool use_desired~%atlas_msgs/AtlasBehaviorPelvisServoParams desired~%bool use_demo_mode~%~%================================================================================~%MSG: atlas_msgs/AtlasBehaviorPelvisServoParams~%# mirrored from AtlasControlTypes.h~%~%float64 pelvis_height~%float64 pelvis_yaw~%~%float64 pelvis_lat  # deprecated Atlas V3~%~%float64 pelvis_pitch~%float64 pelvis_roll~%float64 com_v0~%float64 com_v1~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AtlasBehaviorManipulateParams>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'desired))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AtlasBehaviorManipulateParams>))
  "Converts a ROS message object to a list"
  (cl:list 'AtlasBehaviorManipulateParams
    (cl:cons ':use_desired (use_desired msg))
    (cl:cons ':desired (desired msg))
    (cl:cons ':use_demo_mode (use_demo_mode msg))
))
