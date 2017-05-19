; Auto-generated. Do not edit!


(cl:in-package atlas_msgs-msg)


;//! \htmlinclude AtlasBehaviorManipulateFeedback.msg.html

(cl:defclass <AtlasBehaviorManipulateFeedback> (roslisp-msg-protocol:ros-message)
  ((status_flags
    :reader status_flags
    :initarg :status_flags
    :type cl:integer
    :initform 0)
   (clamped
    :reader clamped
    :initarg :clamped
    :type atlas_msgs-msg:AtlasBehaviorPelvisServoParams
    :initform (cl:make-instance 'atlas_msgs-msg:AtlasBehaviorPelvisServoParams)))
)

(cl:defclass AtlasBehaviorManipulateFeedback (<AtlasBehaviorManipulateFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AtlasBehaviorManipulateFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AtlasBehaviorManipulateFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atlas_msgs-msg:<AtlasBehaviorManipulateFeedback> is deprecated: use atlas_msgs-msg:AtlasBehaviorManipulateFeedback instead.")))

(cl:ensure-generic-function 'status_flags-val :lambda-list '(m))
(cl:defmethod status_flags-val ((m <AtlasBehaviorManipulateFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:status_flags-val is deprecated.  Use atlas_msgs-msg:status_flags instead.")
  (status_flags m))

(cl:ensure-generic-function 'clamped-val :lambda-list '(m))
(cl:defmethod clamped-val ((m <AtlasBehaviorManipulateFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:clamped-val is deprecated.  Use atlas_msgs-msg:clamped instead.")
  (clamped m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AtlasBehaviorManipulateFeedback>) ostream)
  "Serializes a message object of type '<AtlasBehaviorManipulateFeedback>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_flags)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'clamped) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AtlasBehaviorManipulateFeedback>) istream)
  "Deserializes a message object of type '<AtlasBehaviorManipulateFeedback>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_flags)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'clamped) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AtlasBehaviorManipulateFeedback>)))
  "Returns string type for a message object of type '<AtlasBehaviorManipulateFeedback>"
  "atlas_msgs/AtlasBehaviorManipulateFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AtlasBehaviorManipulateFeedback)))
  "Returns string type for a message object of type 'AtlasBehaviorManipulateFeedback"
  "atlas_msgs/AtlasBehaviorManipulateFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AtlasBehaviorManipulateFeedback>)))
  "Returns md5sum for a message object of type '<AtlasBehaviorManipulateFeedback>"
  "b4f41aa2a4f2626090da8f54cf08b3c9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AtlasBehaviorManipulateFeedback)))
  "Returns md5sum for a message object of type 'AtlasBehaviorManipulateFeedback"
  "b4f41aa2a4f2626090da8f54cf08b3c9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AtlasBehaviorManipulateFeedback>)))
  "Returns full string definition for message of type '<AtlasBehaviorManipulateFeedback>"
  (cl:format cl:nil "# mirrored from AtlasControlTypes.h~%uint32 status_flags    # use AtlasBeahviorManipulateFlags~%atlas_msgs/AtlasBehaviorPelvisServoParams clamped~%~%================================================================================~%MSG: atlas_msgs/AtlasBehaviorPelvisServoParams~%# mirrored from AtlasControlTypes.h~%~%float64 pelvis_height~%float64 pelvis_yaw~%~%float64 pelvis_lat  # deprecated Atlas V3~%~%float64 pelvis_pitch~%float64 pelvis_roll~%float64 com_v0~%float64 com_v1~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AtlasBehaviorManipulateFeedback)))
  "Returns full string definition for message of type 'AtlasBehaviorManipulateFeedback"
  (cl:format cl:nil "# mirrored from AtlasControlTypes.h~%uint32 status_flags    # use AtlasBeahviorManipulateFlags~%atlas_msgs/AtlasBehaviorPelvisServoParams clamped~%~%================================================================================~%MSG: atlas_msgs/AtlasBehaviorPelvisServoParams~%# mirrored from AtlasControlTypes.h~%~%float64 pelvis_height~%float64 pelvis_yaw~%~%float64 pelvis_lat  # deprecated Atlas V3~%~%float64 pelvis_pitch~%float64 pelvis_roll~%float64 com_v0~%float64 com_v1~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AtlasBehaviorManipulateFeedback>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'clamped))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AtlasBehaviorManipulateFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'AtlasBehaviorManipulateFeedback
    (cl:cons ':status_flags (status_flags msg))
    (cl:cons ':clamped (clamped msg))
))
