; Auto-generated. Do not edit!


(cl:in-package atlas_msgs-msg)


;//! \htmlinclude AtlasBehaviorStepFeedback.msg.html

(cl:defclass <AtlasBehaviorStepFeedback> (roslisp-msg-protocol:ros-message)
  ((status_flags
    :reader status_flags
    :initarg :status_flags
    :type cl:integer
    :initform 0)
   (t_step_rem
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
   (desired_step_saturated
    :reader desired_step_saturated
    :initarg :desired_step_saturated
    :type atlas_msgs-msg:AtlasBehaviorStepData
    :initform (cl:make-instance 'atlas_msgs-msg:AtlasBehaviorStepData)))
)

(cl:defclass AtlasBehaviorStepFeedback (<AtlasBehaviorStepFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AtlasBehaviorStepFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AtlasBehaviorStepFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atlas_msgs-msg:<AtlasBehaviorStepFeedback> is deprecated: use atlas_msgs-msg:AtlasBehaviorStepFeedback instead.")))

(cl:ensure-generic-function 'status_flags-val :lambda-list '(m))
(cl:defmethod status_flags-val ((m <AtlasBehaviorStepFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:status_flags-val is deprecated.  Use atlas_msgs-msg:status_flags instead.")
  (status_flags m))

(cl:ensure-generic-function 't_step_rem-val :lambda-list '(m))
(cl:defmethod t_step_rem-val ((m <AtlasBehaviorStepFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:t_step_rem-val is deprecated.  Use atlas_msgs-msg:t_step_rem instead.")
  (t_step_rem m))

(cl:ensure-generic-function 'current_step_index-val :lambda-list '(m))
(cl:defmethod current_step_index-val ((m <AtlasBehaviorStepFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:current_step_index-val is deprecated.  Use atlas_msgs-msg:current_step_index instead.")
  (current_step_index m))

(cl:ensure-generic-function 'next_step_index_needed-val :lambda-list '(m))
(cl:defmethod next_step_index_needed-val ((m <AtlasBehaviorStepFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:next_step_index_needed-val is deprecated.  Use atlas_msgs-msg:next_step_index_needed instead.")
  (next_step_index_needed m))

(cl:ensure-generic-function 'desired_step_saturated-val :lambda-list '(m))
(cl:defmethod desired_step_saturated-val ((m <AtlasBehaviorStepFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:desired_step_saturated-val is deprecated.  Use atlas_msgs-msg:desired_step_saturated instead.")
  (desired_step_saturated m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AtlasBehaviorStepFeedback>)))
    "Constants for message type '<AtlasBehaviorStepFeedback>"
  '((:STEP_SUBSTATE_SWAYING . 0)
    (:STEP_SUBSTATE_STEPPING . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AtlasBehaviorStepFeedback)))
    "Constants for message type 'AtlasBehaviorStepFeedback"
  '((:STEP_SUBSTATE_SWAYING . 0)
    (:STEP_SUBSTATE_STEPPING . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AtlasBehaviorStepFeedback>) ostream)
  "Serializes a message object of type '<AtlasBehaviorStepFeedback>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_flags)) ostream)
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'desired_step_saturated) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AtlasBehaviorStepFeedback>) istream)
  "Deserializes a message object of type '<AtlasBehaviorStepFeedback>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_flags)) (cl:read-byte istream))
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'desired_step_saturated) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AtlasBehaviorStepFeedback>)))
  "Returns string type for a message object of type '<AtlasBehaviorStepFeedback>"
  "atlas_msgs/AtlasBehaviorStepFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AtlasBehaviorStepFeedback)))
  "Returns string type for a message object of type 'AtlasBehaviorStepFeedback"
  "atlas_msgs/AtlasBehaviorStepFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AtlasBehaviorStepFeedback>)))
  "Returns md5sum for a message object of type '<AtlasBehaviorStepFeedback>"
  "cff2fc0e568e03f6269567166d997b7c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AtlasBehaviorStepFeedback)))
  "Returns md5sum for a message object of type 'AtlasBehaviorStepFeedback"
  "cff2fc0e568e03f6269567166d997b7c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AtlasBehaviorStepFeedback>)))
  "Returns full string definition for message of type '<AtlasBehaviorStepFeedback>"
  (cl:format cl:nil "# mirrored from AtlasControlTypes.h~%uint32 STEP_SUBSTATE_SWAYING = 0  # Feet are in double support. This flag does not latch. Only one of STEP_SUBSTATE_SWAYING or STEP_SUBSTATE_STEPPING will be set at any given time.~%uint32 STEP_SUBSTATE_STEPPING = 1 # Actively stepping; one foot is in the air. This flag does not latch.~%~%uint32 status_flags    # use AtlasBeahviorFeedback/status_flags~%float64 t_step_rem~%uint32 current_step_index~%uint32 next_step_index_needed~%atlas_msgs/AtlasBehaviorStepData desired_step_saturated~%~%================================================================================~%MSG: atlas_msgs/AtlasBehaviorStepData~%# multi_step walking trajectory parameters~%uint32 step_index              # Step index, matlab style, starting from 1,~%                               # monotonically increasing during walking~%                               #  resets to 1 if robot leaves walk behaviors~%uint32 foot_index              # Foot_index can be LEFT_FOOT or RIGHT_FOOT~%float64 duration               # Step duration, when in doubt, 0.63s is a~%                               # good guess.~%geometry_msgs/Pose pose        # Foot pose in Atlas world frame~%float64 swing_height           # Step apex swing height measured form the~%                               # midpoint between the feet.~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AtlasBehaviorStepFeedback)))
  "Returns full string definition for message of type 'AtlasBehaviorStepFeedback"
  (cl:format cl:nil "# mirrored from AtlasControlTypes.h~%uint32 STEP_SUBSTATE_SWAYING = 0  # Feet are in double support. This flag does not latch. Only one of STEP_SUBSTATE_SWAYING or STEP_SUBSTATE_STEPPING will be set at any given time.~%uint32 STEP_SUBSTATE_STEPPING = 1 # Actively stepping; one foot is in the air. This flag does not latch.~%~%uint32 status_flags    # use AtlasBeahviorFeedback/status_flags~%float64 t_step_rem~%uint32 current_step_index~%uint32 next_step_index_needed~%atlas_msgs/AtlasBehaviorStepData desired_step_saturated~%~%================================================================================~%MSG: atlas_msgs/AtlasBehaviorStepData~%# multi_step walking trajectory parameters~%uint32 step_index              # Step index, matlab style, starting from 1,~%                               # monotonically increasing during walking~%                               #  resets to 1 if robot leaves walk behaviors~%uint32 foot_index              # Foot_index can be LEFT_FOOT or RIGHT_FOOT~%float64 duration               # Step duration, when in doubt, 0.63s is a~%                               # good guess.~%geometry_msgs/Pose pose        # Foot pose in Atlas world frame~%float64 swing_height           # Step apex swing height measured form the~%                               # midpoint between the feet.~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AtlasBehaviorStepFeedback>))
  (cl:+ 0
     4
     8
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'desired_step_saturated))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AtlasBehaviorStepFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'AtlasBehaviorStepFeedback
    (cl:cons ':status_flags (status_flags msg))
    (cl:cons ':t_step_rem (t_step_rem msg))
    (cl:cons ':current_step_index (current_step_index msg))
    (cl:cons ':next_step_index_needed (next_step_index_needed msg))
    (cl:cons ':desired_step_saturated (desired_step_saturated msg))
))
