; Auto-generated. Do not edit!


(cl:in-package atlas_msgs-msg)


;//! \htmlinclude AtlasPositionData.msg.html

(cl:defclass <AtlasPositionData> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass AtlasPositionData (<AtlasPositionData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AtlasPositionData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AtlasPositionData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atlas_msgs-msg:<AtlasPositionData> is deprecated: use atlas_msgs-msg:AtlasPositionData instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <AtlasPositionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:position-val is deprecated.  Use atlas_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <AtlasPositionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:velocity-val is deprecated.  Use atlas_msgs-msg:velocity instead.")
  (velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AtlasPositionData>) ostream)
  "Serializes a message object of type '<AtlasPositionData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AtlasPositionData>) istream)
  "Deserializes a message object of type '<AtlasPositionData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AtlasPositionData>)))
  "Returns string type for a message object of type '<AtlasPositionData>"
  "atlas_msgs/AtlasPositionData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AtlasPositionData)))
  "Returns string type for a message object of type 'AtlasPositionData"
  "atlas_msgs/AtlasPositionData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AtlasPositionData>)))
  "Returns md5sum for a message object of type '<AtlasPositionData>"
  "589dbd8c358d253de2ab5441acd36a2b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AtlasPositionData)))
  "Returns md5sum for a message object of type 'AtlasPositionData"
  "589dbd8c358d253de2ab5441acd36a2b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AtlasPositionData>)))
  "Returns full string definition for message of type '<AtlasPositionData>"
  (cl:format cl:nil "# mirrors AtlasPositionData in AtlasControlTypes.h~%geometry_msgs/Vector3 position~%geometry_msgs/Vector3 velocity~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AtlasPositionData)))
  "Returns full string definition for message of type 'AtlasPositionData"
  (cl:format cl:nil "# mirrors AtlasPositionData in AtlasControlTypes.h~%geometry_msgs/Vector3 position~%geometry_msgs/Vector3 velocity~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AtlasPositionData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AtlasPositionData>))
  "Converts a ROS message object to a list"
  (cl:list 'AtlasPositionData
    (cl:cons ':position (position msg))
    (cl:cons ':velocity (velocity msg))
))
