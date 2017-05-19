; Auto-generated. Do not edit!


(cl:in-package atlas_msgs-msg)


;//! \htmlinclude AtlasBehaviorStandFeedback.msg.html

(cl:defclass <AtlasBehaviorStandFeedback> (roslisp-msg-protocol:ros-message)
  ((status_flags
    :reader status_flags
    :initarg :status_flags
    :type cl:integer
    :initform 0))
)

(cl:defclass AtlasBehaviorStandFeedback (<AtlasBehaviorStandFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AtlasBehaviorStandFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AtlasBehaviorStandFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atlas_msgs-msg:<AtlasBehaviorStandFeedback> is deprecated: use atlas_msgs-msg:AtlasBehaviorStandFeedback instead.")))

(cl:ensure-generic-function 'status_flags-val :lambda-list '(m))
(cl:defmethod status_flags-val ((m <AtlasBehaviorStandFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:status_flags-val is deprecated.  Use atlas_msgs-msg:status_flags instead.")
  (status_flags m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AtlasBehaviorStandFeedback>) ostream)
  "Serializes a message object of type '<AtlasBehaviorStandFeedback>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_flags)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AtlasBehaviorStandFeedback>) istream)
  "Deserializes a message object of type '<AtlasBehaviorStandFeedback>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_flags)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AtlasBehaviorStandFeedback>)))
  "Returns string type for a message object of type '<AtlasBehaviorStandFeedback>"
  "atlas_msgs/AtlasBehaviorStandFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AtlasBehaviorStandFeedback)))
  "Returns string type for a message object of type 'AtlasBehaviorStandFeedback"
  "atlas_msgs/AtlasBehaviorStandFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AtlasBehaviorStandFeedback>)))
  "Returns md5sum for a message object of type '<AtlasBehaviorStandFeedback>"
  "db5aeaf3d00b862980dcbc6b5cfc70fc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AtlasBehaviorStandFeedback)))
  "Returns md5sum for a message object of type 'AtlasBehaviorStandFeedback"
  "db5aeaf3d00b862980dcbc6b5cfc70fc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AtlasBehaviorStandFeedback>)))
  "Returns full string definition for message of type '<AtlasBehaviorStandFeedback>"
  (cl:format cl:nil "# mirrored from AtlasControlTypes.h~%uint32 status_flags    # use AtlasBeahviorStandFlags~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AtlasBehaviorStandFeedback)))
  "Returns full string definition for message of type 'AtlasBehaviorStandFeedback"
  (cl:format cl:nil "# mirrored from AtlasControlTypes.h~%uint32 status_flags    # use AtlasBeahviorStandFlags~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AtlasBehaviorStandFeedback>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AtlasBehaviorStandFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'AtlasBehaviorStandFeedback
    (cl:cons ':status_flags (status_flags msg))
))
