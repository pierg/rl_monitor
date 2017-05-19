; Auto-generated. Do not edit!


(cl:in-package atlas_msgs-msg)


;//! \htmlinclude AtlasBehaviorStandParams.msg.html

(cl:defclass <AtlasBehaviorStandParams> (roslisp-msg-protocol:ros-message)
  ((placeholder
    :reader placeholder
    :initarg :placeholder
    :type cl:integer
    :initform 0))
)

(cl:defclass AtlasBehaviorStandParams (<AtlasBehaviorStandParams>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AtlasBehaviorStandParams>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AtlasBehaviorStandParams)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atlas_msgs-msg:<AtlasBehaviorStandParams> is deprecated: use atlas_msgs-msg:AtlasBehaviorStandParams instead.")))

(cl:ensure-generic-function 'placeholder-val :lambda-list '(m))
(cl:defmethod placeholder-val ((m <AtlasBehaviorStandParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:placeholder-val is deprecated.  Use atlas_msgs-msg:placeholder instead.")
  (placeholder m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AtlasBehaviorStandParams>) ostream)
  "Serializes a message object of type '<AtlasBehaviorStandParams>"
  (cl:let* ((signed (cl:slot-value msg 'placeholder)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AtlasBehaviorStandParams>) istream)
  "Deserializes a message object of type '<AtlasBehaviorStandParams>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'placeholder) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AtlasBehaviorStandParams>)))
  "Returns string type for a message object of type '<AtlasBehaviorStandParams>"
  "atlas_msgs/AtlasBehaviorStandParams")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AtlasBehaviorStandParams)))
  "Returns string type for a message object of type 'AtlasBehaviorStandParams"
  "atlas_msgs/AtlasBehaviorStandParams")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AtlasBehaviorStandParams>)))
  "Returns md5sum for a message object of type '<AtlasBehaviorStandParams>"
  "569a10f839b2e1ce334950a722d388b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AtlasBehaviorStandParams)))
  "Returns md5sum for a message object of type 'AtlasBehaviorStandParams"
  "569a10f839b2e1ce334950a722d388b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AtlasBehaviorStandParams>)))
  "Returns full string definition for message of type '<AtlasBehaviorStandParams>"
  (cl:format cl:nil "# stand parameters~%int32 placeholder~%# etc., more to come~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AtlasBehaviorStandParams)))
  "Returns full string definition for message of type 'AtlasBehaviorStandParams"
  (cl:format cl:nil "# stand parameters~%int32 placeholder~%# etc., more to come~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AtlasBehaviorStandParams>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AtlasBehaviorStandParams>))
  "Converts a ROS message object to a list"
  (cl:list 'AtlasBehaviorStandParams
    (cl:cons ':placeholder (placeholder msg))
))
