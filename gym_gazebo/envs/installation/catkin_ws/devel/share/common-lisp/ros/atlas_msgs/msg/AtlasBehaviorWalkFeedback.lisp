; Auto-generated. Do not edit!


(cl:in-package atlas_msgs-msg)


;//! \htmlinclude AtlasBehaviorWalkFeedback.msg.html

(cl:defclass <AtlasBehaviorWalkFeedback> (roslisp-msg-protocol:ros-message)
  ((t_step_rem
    :reader t_step_rem
    :initarg :t_step_rem
    :type cl:float
    :initform 0.0)
   (current_step_index
    :reader current_step_index
    :initarg :current_step_index
    :type cl:integer
    :initform 0)
   (next_step_index_needed
    :reader next_step_index_needed
    :initarg :next_step_index_needed
    :type cl:integer
    :initform 0)
   (status_flags
    :reader status_flags
    :initarg :status_flags
    :type cl:integer
    :initform 0)
   (step_queue_saturated
    :reader step_queue_saturated
    :initarg :step_queue_saturated
    :type (cl:vector atlas_msgs-msg:AtlasBehaviorStepData)
   :initform (cl:make-array 4 :element-type 'atlas_msgs-msg:AtlasBehaviorStepData :initial-element (cl:make-instance 'atlas_msgs-msg:AtlasBehaviorStepData))))
)

(cl:defclass AtlasBehaviorWalkFeedback (<AtlasBehaviorWalkFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AtlasBehaviorWalkFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AtlasBehaviorWalkFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atlas_msgs-msg:<AtlasBehaviorWalkFeedback> is deprecated: use atlas_msgs-msg:AtlasBehaviorWalkFeedback instead.")))

(cl:ensure-generic-function 't_step_rem-val :lambda-list '(m))
(cl:defmethod t_step_rem-val ((m <AtlasBehaviorWalkFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:t_step_rem-val is deprecated.  Use atlas_msgs-msg:t_step_rem instead.")
  (t_step_rem m))

(cl:ensure-generic-function 'current_step_index-val :lambda-list '(m))
(cl:defmethod current_step_index-val ((m <AtlasBehaviorWalkFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:current_step_index-val is deprecated.  Use atlas_msgs-msg:current_step_index instead.")
  (current_step_index m))

(cl:ensure-generic-function 'next_step_index_needed-val :lambda-list '(m))
(cl:defmethod next_step_index_needed-val ((m <AtlasBehaviorWalkFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:next_step_index_needed-val is deprecated.  Use atlas_msgs-msg:next_step_index_needed instead.")
  (next_step_index_needed m))

(cl:ensure-generic-function 'status_flags-val :lambda-list '(m))
(cl:defmethod status_flags-val ((m <AtlasBehaviorWalkFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:status_flags-val is deprecated.  Use atlas_msgs-msg:status_flags instead.")
  (status_flags m))

(cl:ensure-generic-function 'step_queue_saturated-val :lambda-list '(m))
(cl:defmethod step_queue_saturated-val ((m <AtlasBehaviorWalkFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:step_queue_saturated-val is deprecated.  Use atlas_msgs-msg:step_queue_saturated instead.")
  (step_queue_saturated m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AtlasBehaviorWalkFeedback>) ostream)
  "Serializes a message object of type '<AtlasBehaviorWalkFeedback>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 't_step_rem))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_step_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current_step_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'current_step_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'current_step_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'next_step_index_needed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'next_step_index_needed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'next_step_index_needed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'next_step_index_needed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_flags)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'step_queue_saturated))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AtlasBehaviorWalkFeedback>) istream)
  "Deserializes a message object of type '<AtlasBehaviorWalkFeedback>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 't_step_rem) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_step_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current_step_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'current_step_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'current_step_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'next_step_index_needed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'next_step_index_needed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'next_step_index_needed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'next_step_index_needed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_flags)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'step_queue_saturated) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'step_queue_saturated)))
    (cl:dotimes (i 4)
    (cl:setf (cl:aref vals i) (cl:make-instance 'atlas_msgs-msg:AtlasBehaviorStepData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AtlasBehaviorWalkFeedback>)))
  "Returns string type for a message object of type '<AtlasBehaviorWalkFeedback>"
  "atlas_msgs/AtlasBehaviorWalkFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AtlasBehaviorWalkFeedback)))
  "Returns string type for a message object of type 'AtlasBehaviorWalkFeedback"
  "atlas_msgs/AtlasBehaviorWalkFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AtlasBehaviorWalkFeedback>)))
  "Returns md5sum for a message object of type '<AtlasBehaviorWalkFeedback>"
  "4bd389e051b01f8e9b15c23ca6b58e8b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AtlasBehaviorWalkFeedback)))
  "Returns md5sum for a message object of type 'AtlasBehaviorWalkFeedback"
  "4bd389e051b01f8e9b15c23ca6b58e8b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AtlasBehaviorWalkFeedback>)))
  "Returns full string definition for message of type '<AtlasBehaviorWalkFeedback>"
  (cl:format cl:nil "# mirrored from AtlasControlTypes.h~%float64 t_step_rem~%uint32 current_step_index~%uint32 next_step_index_needed~%uint32 status_flags    # use AtlasBeahviorFeedback/status_flags~%atlas_msgs/AtlasBehaviorStepData[4] step_queue_saturated # 4 is hardcoded in AtlasSimInterface library.~%~%================================================================================~%MSG: atlas_msgs/AtlasBehaviorStepData~%# multi_step walking trajectory parameters~%uint32 step_index              # Step index, matlab style, starting from 1,~%                               # monotonically increasing during walking~%                               #  resets to 1 if robot leaves walk behaviors~%uint32 foot_index              # Foot_index can be LEFT_FOOT or RIGHT_FOOT~%float64 duration               # Step duration, when in doubt, 0.63s is a~%                               # good guess.~%geometry_msgs/Pose pose        # Foot pose in Atlas world frame~%float64 swing_height           # Step apex swing height measured form the~%                               # midpoint between the feet.~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AtlasBehaviorWalkFeedback)))
  "Returns full string definition for message of type 'AtlasBehaviorWalkFeedback"
  (cl:format cl:nil "# mirrored from AtlasControlTypes.h~%float64 t_step_rem~%uint32 current_step_index~%uint32 next_step_index_needed~%uint32 status_flags    # use AtlasBeahviorFeedback/status_flags~%atlas_msgs/AtlasBehaviorStepData[4] step_queue_saturated # 4 is hardcoded in AtlasSimInterface library.~%~%================================================================================~%MSG: atlas_msgs/AtlasBehaviorStepData~%# multi_step walking trajectory parameters~%uint32 step_index              # Step index, matlab style, starting from 1,~%                               # monotonically increasing during walking~%                               #  resets to 1 if robot leaves walk behaviors~%uint32 foot_index              # Foot_index can be LEFT_FOOT or RIGHT_FOOT~%float64 duration               # Step duration, when in doubt, 0.63s is a~%                               # good guess.~%geometry_msgs/Pose pose        # Foot pose in Atlas world frame~%float64 swing_height           # Step apex swing height measured form the~%                               # midpoint between the feet.~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AtlasBehaviorWalkFeedback>))
  (cl:+ 0
     8
     4
     4
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'step_queue_saturated) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AtlasBehaviorWalkFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'AtlasBehaviorWalkFeedback
    (cl:cons ':t_step_rem (t_step_rem msg))
    (cl:cons ':current_step_index (current_step_index msg))
    (cl:cons ':next_step_index_needed (next_step_index_needed msg))
    (cl:cons ':status_flags (status_flags msg))
    (cl:cons ':step_queue_saturated (step_queue_saturated msg))
))
