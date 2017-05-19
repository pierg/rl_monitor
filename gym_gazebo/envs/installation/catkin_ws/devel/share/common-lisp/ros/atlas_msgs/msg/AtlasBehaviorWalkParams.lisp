; Auto-generated. Do not edit!


(cl:in-package atlas_msgs-msg)


;//! \htmlinclude AtlasBehaviorWalkParams.msg.html

(cl:defclass <AtlasBehaviorWalkParams> (roslisp-msg-protocol:ros-message)
  ((step_queue
    :reader step_queue
    :initarg :step_queue
    :type (cl:vector atlas_msgs-msg:AtlasBehaviorStepData)
   :initform (cl:make-array 4 :element-type 'atlas_msgs-msg:AtlasBehaviorStepData :initial-element (cl:make-instance 'atlas_msgs-msg:AtlasBehaviorStepData)))
   (use_demo_walk
    :reader use_demo_walk
    :initarg :use_demo_walk
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AtlasBehaviorWalkParams (<AtlasBehaviorWalkParams>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AtlasBehaviorWalkParams>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AtlasBehaviorWalkParams)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atlas_msgs-msg:<AtlasBehaviorWalkParams> is deprecated: use atlas_msgs-msg:AtlasBehaviorWalkParams instead.")))

(cl:ensure-generic-function 'step_queue-val :lambda-list '(m))
(cl:defmethod step_queue-val ((m <AtlasBehaviorWalkParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:step_queue-val is deprecated.  Use atlas_msgs-msg:step_queue instead.")
  (step_queue m))

(cl:ensure-generic-function 'use_demo_walk-val :lambda-list '(m))
(cl:defmethod use_demo_walk-val ((m <AtlasBehaviorWalkParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:use_demo_walk-val is deprecated.  Use atlas_msgs-msg:use_demo_walk instead.")
  (use_demo_walk m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AtlasBehaviorWalkParams>) ostream)
  "Serializes a message object of type '<AtlasBehaviorWalkParams>"
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'step_queue))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_demo_walk) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AtlasBehaviorWalkParams>) istream)
  "Deserializes a message object of type '<AtlasBehaviorWalkParams>"
  (cl:setf (cl:slot-value msg 'step_queue) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'step_queue)))
    (cl:dotimes (i 4)
    (cl:setf (cl:aref vals i) (cl:make-instance 'atlas_msgs-msg:AtlasBehaviorStepData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
    (cl:setf (cl:slot-value msg 'use_demo_walk) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AtlasBehaviorWalkParams>)))
  "Returns string type for a message object of type '<AtlasBehaviorWalkParams>"
  "atlas_msgs/AtlasBehaviorWalkParams")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AtlasBehaviorWalkParams)))
  "Returns string type for a message object of type 'AtlasBehaviorWalkParams"
  "atlas_msgs/AtlasBehaviorWalkParams")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AtlasBehaviorWalkParams>)))
  "Returns md5sum for a message object of type '<AtlasBehaviorWalkParams>"
  "0a5b4bccbb6f87ef4f591430c3499c4f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AtlasBehaviorWalkParams)))
  "Returns md5sum for a message object of type 'AtlasBehaviorWalkParams"
  "0a5b4bccbb6f87ef4f591430c3499c4f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AtlasBehaviorWalkParams>)))
  "Returns full string definition for message of type '<AtlasBehaviorWalkParams>"
  (cl:format cl:nil "# multi_step walking trajectory parameters~%atlas_msgs/AtlasBehaviorStepData[4] step_queue~%bool use_demo_walk~%~%================================================================================~%MSG: atlas_msgs/AtlasBehaviorStepData~%# multi_step walking trajectory parameters~%uint32 step_index              # Step index, matlab style, starting from 1,~%                               # monotonically increasing during walking~%                               #  resets to 1 if robot leaves walk behaviors~%uint32 foot_index              # Foot_index can be LEFT_FOOT or RIGHT_FOOT~%float64 duration               # Step duration, when in doubt, 0.63s is a~%                               # good guess.~%geometry_msgs/Pose pose        # Foot pose in Atlas world frame~%float64 swing_height           # Step apex swing height measured form the~%                               # midpoint between the feet.~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AtlasBehaviorWalkParams)))
  "Returns full string definition for message of type 'AtlasBehaviorWalkParams"
  (cl:format cl:nil "# multi_step walking trajectory parameters~%atlas_msgs/AtlasBehaviorStepData[4] step_queue~%bool use_demo_walk~%~%================================================================================~%MSG: atlas_msgs/AtlasBehaviorStepData~%# multi_step walking trajectory parameters~%uint32 step_index              # Step index, matlab style, starting from 1,~%                               # monotonically increasing during walking~%                               #  resets to 1 if robot leaves walk behaviors~%uint32 foot_index              # Foot_index can be LEFT_FOOT or RIGHT_FOOT~%float64 duration               # Step duration, when in doubt, 0.63s is a~%                               # good guess.~%geometry_msgs/Pose pose        # Foot pose in Atlas world frame~%float64 swing_height           # Step apex swing height measured form the~%                               # midpoint between the feet.~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AtlasBehaviorWalkParams>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'step_queue) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AtlasBehaviorWalkParams>))
  "Converts a ROS message object to a list"
  (cl:list 'AtlasBehaviorWalkParams
    (cl:cons ':step_queue (step_queue msg))
    (cl:cons ':use_demo_walk (use_demo_walk msg))
))
