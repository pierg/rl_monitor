; Auto-generated. Do not edit!


(cl:in-package atlas_msgs-msg)


;//! \htmlinclude AtlasBehaviorStepParams.msg.html

(cl:defclass <AtlasBehaviorStepParams> (roslisp-msg-protocol:ros-message)
  ((desired_step
    :reader desired_step
    :initarg :desired_step
    :type atlas_msgs-msg:AtlasBehaviorStepData
    :initform (cl:make-instance 'atlas_msgs-msg:AtlasBehaviorStepData))
   (use_demo_walk
    :reader use_demo_walk
    :initarg :use_demo_walk
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AtlasBehaviorStepParams (<AtlasBehaviorStepParams>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AtlasBehaviorStepParams>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AtlasBehaviorStepParams)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atlas_msgs-msg:<AtlasBehaviorStepParams> is deprecated: use atlas_msgs-msg:AtlasBehaviorStepParams instead.")))

(cl:ensure-generic-function 'desired_step-val :lambda-list '(m))
(cl:defmethod desired_step-val ((m <AtlasBehaviorStepParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:desired_step-val is deprecated.  Use atlas_msgs-msg:desired_step instead.")
  (desired_step m))

(cl:ensure-generic-function 'use_demo_walk-val :lambda-list '(m))
(cl:defmethod use_demo_walk-val ((m <AtlasBehaviorStepParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:use_demo_walk-val is deprecated.  Use atlas_msgs-msg:use_demo_walk instead.")
  (use_demo_walk m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AtlasBehaviorStepParams>) ostream)
  "Serializes a message object of type '<AtlasBehaviorStepParams>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'desired_step) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_demo_walk) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AtlasBehaviorStepParams>) istream)
  "Deserializes a message object of type '<AtlasBehaviorStepParams>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'desired_step) istream)
    (cl:setf (cl:slot-value msg 'use_demo_walk) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AtlasBehaviorStepParams>)))
  "Returns string type for a message object of type '<AtlasBehaviorStepParams>"
  "atlas_msgs/AtlasBehaviorStepParams")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AtlasBehaviorStepParams)))
  "Returns string type for a message object of type 'AtlasBehaviorStepParams"
  "atlas_msgs/AtlasBehaviorStepParams")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AtlasBehaviorStepParams>)))
  "Returns md5sum for a message object of type '<AtlasBehaviorStepParams>"
  "fea683aa80fed08d9ec89dd950667373")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AtlasBehaviorStepParams)))
  "Returns md5sum for a message object of type 'AtlasBehaviorStepParams"
  "fea683aa80fed08d9ec89dd950667373")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AtlasBehaviorStepParams>)))
  "Returns full string definition for message of type '<AtlasBehaviorStepParams>"
  (cl:format cl:nil "# parameters for single_step behavior~%atlas_msgs/AtlasBehaviorStepData desired_step~%bool use_demo_walk~%~%================================================================================~%MSG: atlas_msgs/AtlasBehaviorStepData~%# multi_step walking trajectory parameters~%uint32 step_index              # Step index, matlab style, starting from 1,~%                               # monotonically increasing during walking~%                               #  resets to 1 if robot leaves walk behaviors~%uint32 foot_index              # Foot_index can be LEFT_FOOT or RIGHT_FOOT~%float64 duration               # Step duration, when in doubt, 0.63s is a~%                               # good guess.~%geometry_msgs/Pose pose        # Foot pose in Atlas world frame~%float64 swing_height           # Step apex swing height measured form the~%                               # midpoint between the feet.~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AtlasBehaviorStepParams)))
  "Returns full string definition for message of type 'AtlasBehaviorStepParams"
  (cl:format cl:nil "# parameters for single_step behavior~%atlas_msgs/AtlasBehaviorStepData desired_step~%bool use_demo_walk~%~%================================================================================~%MSG: atlas_msgs/AtlasBehaviorStepData~%# multi_step walking trajectory parameters~%uint32 step_index              # Step index, matlab style, starting from 1,~%                               # monotonically increasing during walking~%                               #  resets to 1 if robot leaves walk behaviors~%uint32 foot_index              # Foot_index can be LEFT_FOOT or RIGHT_FOOT~%float64 duration               # Step duration, when in doubt, 0.63s is a~%                               # good guess.~%geometry_msgs/Pose pose        # Foot pose in Atlas world frame~%float64 swing_height           # Step apex swing height measured form the~%                               # midpoint between the feet.~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AtlasBehaviorStepParams>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'desired_step))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AtlasBehaviorStepParams>))
  "Converts a ROS message object to a list"
  (cl:list 'AtlasBehaviorStepParams
    (cl:cons ':desired_step (desired_step msg))
    (cl:cons ':use_demo_walk (use_demo_walk msg))
))
