; Auto-generated. Do not edit!


(cl:in-package atlas_msgs-msg)


;//! \htmlinclude AtlasSimInterfaceState.msg.html

(cl:defclass <AtlasSimInterfaceState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:integer
    :initform 0)
   (current_behavior
    :reader current_behavior
    :initarg :current_behavior
    :type cl:integer
    :initform 0)
   (desired_behavior
    :reader desired_behavior
    :initarg :desired_behavior
    :type cl:integer
    :initform 0)
   (f_out
    :reader f_out
    :initarg :f_out
    :type (cl:vector cl:float)
   :initform (cl:make-array 30 :element-type 'cl:float :initial-element 0.0))
   (pos_est
    :reader pos_est
    :initarg :pos_est
    :type atlas_msgs-msg:AtlasPositionData
    :initform (cl:make-instance 'atlas_msgs-msg:AtlasPositionData))
   (foot_pos_est
    :reader foot_pos_est
    :initarg :foot_pos_est
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 2 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose)))
   (behavior_feedback
    :reader behavior_feedback
    :initarg :behavior_feedback
    :type atlas_msgs-msg:AtlasBehaviorFeedback
    :initform (cl:make-instance 'atlas_msgs-msg:AtlasBehaviorFeedback))
   (step_feedback
    :reader step_feedback
    :initarg :step_feedback
    :type atlas_msgs-msg:AtlasBehaviorStepFeedback
    :initform (cl:make-instance 'atlas_msgs-msg:AtlasBehaviorStepFeedback))
   (stand_feedback
    :reader stand_feedback
    :initarg :stand_feedback
    :type atlas_msgs-msg:AtlasBehaviorStandFeedback
    :initform (cl:make-instance 'atlas_msgs-msg:AtlasBehaviorStandFeedback))
   (walk_feedback
    :reader walk_feedback
    :initarg :walk_feedback
    :type atlas_msgs-msg:AtlasBehaviorWalkFeedback
    :initform (cl:make-instance 'atlas_msgs-msg:AtlasBehaviorWalkFeedback))
   (manipulate_feedback
    :reader manipulate_feedback
    :initarg :manipulate_feedback
    :type atlas_msgs-msg:AtlasBehaviorManipulateFeedback
    :initform (cl:make-instance 'atlas_msgs-msg:AtlasBehaviorManipulateFeedback))
   (k_effort
    :reader k_effort
    :initarg :k_effort
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass AtlasSimInterfaceState (<AtlasSimInterfaceState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AtlasSimInterfaceState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AtlasSimInterfaceState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atlas_msgs-msg:<AtlasSimInterfaceState> is deprecated: use atlas_msgs-msg:AtlasSimInterfaceState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AtlasSimInterfaceState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:header-val is deprecated.  Use atlas_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <AtlasSimInterfaceState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:error_code-val is deprecated.  Use atlas_msgs-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'current_behavior-val :lambda-list '(m))
(cl:defmethod current_behavior-val ((m <AtlasSimInterfaceState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:current_behavior-val is deprecated.  Use atlas_msgs-msg:current_behavior instead.")
  (current_behavior m))

(cl:ensure-generic-function 'desired_behavior-val :lambda-list '(m))
(cl:defmethod desired_behavior-val ((m <AtlasSimInterfaceState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:desired_behavior-val is deprecated.  Use atlas_msgs-msg:desired_behavior instead.")
  (desired_behavior m))

(cl:ensure-generic-function 'f_out-val :lambda-list '(m))
(cl:defmethod f_out-val ((m <AtlasSimInterfaceState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:f_out-val is deprecated.  Use atlas_msgs-msg:f_out instead.")
  (f_out m))

(cl:ensure-generic-function 'pos_est-val :lambda-list '(m))
(cl:defmethod pos_est-val ((m <AtlasSimInterfaceState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:pos_est-val is deprecated.  Use atlas_msgs-msg:pos_est instead.")
  (pos_est m))

(cl:ensure-generic-function 'foot_pos_est-val :lambda-list '(m))
(cl:defmethod foot_pos_est-val ((m <AtlasSimInterfaceState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:foot_pos_est-val is deprecated.  Use atlas_msgs-msg:foot_pos_est instead.")
  (foot_pos_est m))

(cl:ensure-generic-function 'behavior_feedback-val :lambda-list '(m))
(cl:defmethod behavior_feedback-val ((m <AtlasSimInterfaceState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:behavior_feedback-val is deprecated.  Use atlas_msgs-msg:behavior_feedback instead.")
  (behavior_feedback m))

(cl:ensure-generic-function 'step_feedback-val :lambda-list '(m))
(cl:defmethod step_feedback-val ((m <AtlasSimInterfaceState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:step_feedback-val is deprecated.  Use atlas_msgs-msg:step_feedback instead.")
  (step_feedback m))

(cl:ensure-generic-function 'stand_feedback-val :lambda-list '(m))
(cl:defmethod stand_feedback-val ((m <AtlasSimInterfaceState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:stand_feedback-val is deprecated.  Use atlas_msgs-msg:stand_feedback instead.")
  (stand_feedback m))

(cl:ensure-generic-function 'walk_feedback-val :lambda-list '(m))
(cl:defmethod walk_feedback-val ((m <AtlasSimInterfaceState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:walk_feedback-val is deprecated.  Use atlas_msgs-msg:walk_feedback instead.")
  (walk_feedback m))

(cl:ensure-generic-function 'manipulate_feedback-val :lambda-list '(m))
(cl:defmethod manipulate_feedback-val ((m <AtlasSimInterfaceState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:manipulate_feedback-val is deprecated.  Use atlas_msgs-msg:manipulate_feedback instead.")
  (manipulate_feedback m))

(cl:ensure-generic-function 'k_effort-val :lambda-list '(m))
(cl:defmethod k_effort-val ((m <AtlasSimInterfaceState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:k_effort-val is deprecated.  Use atlas_msgs-msg:k_effort instead.")
  (k_effort m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AtlasSimInterfaceState>)))
    "Constants for message type '<AtlasSimInterfaceState>"
  '((:NO_ERRORS . 0)
    (:ERROR_UNSPECIFIED . -1)
    (:ERROR_VALUE_OUT_OF_RANGE . -2)
    (:ERROR_INVALID_INDEX . -3)
    (:ERROR_FAILED_TO_START_BEHAVIOR . -4)
    (:ERROR_NO_ACTIVE_BEHAVIOR . -5)
    (:ERROR_NO_SUCH_BEHAVIOR . -6)
    (:ERROR_BEHAVIOR_NOT_IMPLEMENTED . -7)
    (:ERROR_TIME_RAN_BACKWARD . -8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AtlasSimInterfaceState)))
    "Constants for message type 'AtlasSimInterfaceState"
  '((:NO_ERRORS . 0)
    (:ERROR_UNSPECIFIED . -1)
    (:ERROR_VALUE_OUT_OF_RANGE . -2)
    (:ERROR_INVALID_INDEX . -3)
    (:ERROR_FAILED_TO_START_BEHAVIOR . -4)
    (:ERROR_NO_ACTIVE_BEHAVIOR . -5)
    (:ERROR_NO_SUCH_BEHAVIOR . -6)
    (:ERROR_BEHAVIOR_NOT_IMPLEMENTED . -7)
    (:ERROR_TIME_RAN_BACKWARD . -8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AtlasSimInterfaceState>) ostream)
  "Serializes a message object of type '<AtlasSimInterfaceState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'error_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'current_behavior)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'desired_behavior)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'f_out))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pos_est) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'foot_pos_est))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'behavior_feedback) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'step_feedback) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'stand_feedback) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'walk_feedback) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'manipulate_feedback) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'k_effort))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'k_effort))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AtlasSimInterfaceState>) istream)
  "Deserializes a message object of type '<AtlasSimInterfaceState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_behavior) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'desired_behavior) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:setf (cl:slot-value msg 'f_out) (cl:make-array 30))
  (cl:let ((vals (cl:slot-value msg 'f_out)))
    (cl:dotimes (i 30)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pos_est) istream)
  (cl:setf (cl:slot-value msg 'foot_pos_est) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'foot_pos_est)))
    (cl:dotimes (i 2)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'behavior_feedback) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'step_feedback) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'stand_feedback) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'walk_feedback) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'manipulate_feedback) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'k_effort) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'k_effort)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AtlasSimInterfaceState>)))
  "Returns string type for a message object of type '<AtlasSimInterfaceState>"
  "atlas_msgs/AtlasSimInterfaceState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AtlasSimInterfaceState)))
  "Returns string type for a message object of type 'AtlasSimInterfaceState"
  "atlas_msgs/AtlasSimInterfaceState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AtlasSimInterfaceState>)))
  "Returns md5sum for a message object of type '<AtlasSimInterfaceState>"
  "85e85745445cb07093d61a6ae09ae52a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AtlasSimInterfaceState)))
  "Returns md5sum for a message object of type 'AtlasSimInterfaceState"
  "85e85745445cb07093d61a6ae09ae52a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AtlasSimInterfaceState>)))
  "Returns full string definition for message of type '<AtlasSimInterfaceState>"
  (cl:format cl:nil "# For interfacing Boston Dynamics' AtlasSimInterface Dynamics Behavior Library~%# Feedback from AtlasSimInterface Controller after calling process_control_input~%# This ROS message should track AtlasControlOutput struct in~%# AtlasSimInterfaceTypes.h.~%# With the exception of addition of k_effort to provide user a way to switch~%# to/from PID servo control in AtlasPlugin.cpp on a per joint basis.~%~%int32 NO_ERRORS                        =  0    # no error detected~%int32 ERROR_UNSPECIFIED                = -1    # unspecified error~%int32 ERROR_VALUE_OUT_OF_RANGE         = -2    # passed value is out of range~%int32 ERROR_INVALID_INDEX              = -3    # passed index is invalid (too low or too high)~%int32 ERROR_FAILED_TO_START_BEHAVIOR   = -4    # robot failed to start desired behavior~%int32 ERROR_NO_ACTIVE_BEHAVIOR         = -5    # robot has no active behavior~%int32 ERROR_NO_SUCH_BEHAVIOR           = -6    # behavior doesn't exist~%int32 ERROR_BEHAVIOR_NOT_IMPLEMENTED   = -7    # behavior exists but not implemented~%int32 ERROR_TIME_RAN_BACKWARD          = -8    # a time earlier than previous times was given~%~%Header header~%~%int32 error_code                         # error code returned by~%                                         # process_control_input.~%                                         # See AtlasSimInterfaceTypes.h~%                                         # AtlasErrorCode for list of enums.~%                                         # The list is mimic'd here above.~%~%int32 current_behavior                   # current active behavior.~%int32 desired_behavior                   # desired behavior specified by usesr~%                                         # input. This may lag from~%                                         # current_behavior by a few simulation~%                                         # steps.~%~%# below are information from AtlasControlOutput in AtlasSimInterfaceTypes.h~%~%float64[30] f_out                        # torque command from BDI controller. The first 28 values are used by Atlas versions < 4~%~%atlas_msgs/AtlasPositionData pos_est     # Position and velocity estimate of robot pelvis~%~%geometry_msgs/Pose[2] foot_pos_est      # World position estimate for feet~%                                         # 0 - left, 1 - right~%~%atlas_msgs/AtlasBehaviorFeedback behavior_feedback~%atlas_msgs/AtlasBehaviorStepFeedback step_feedback~%atlas_msgs/AtlasBehaviorStandFeedback stand_feedback~%atlas_msgs/AtlasBehaviorWalkFeedback walk_feedback~%atlas_msgs/AtlasBehaviorManipulateFeedback manipulate_feedback~%~%# additional vector for transitioning from servo model in AtlasPlugin~%# to BDI servo.~%~%uint8[] k_effort       # k_effort can be an unsigned int 8value from 0 to 255, ~%                       # at run time, a double between 0 and 1 is obtained~%                       # by dividing by 255.0d.~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: atlas_msgs/AtlasPositionData~%# mirrors AtlasPositionData in AtlasControlTypes.h~%geometry_msgs/Vector3 position~%geometry_msgs/Vector3 velocity~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: atlas_msgs/AtlasBehaviorFeedback~%# mirrors AtlasBehaviorFeedback~%#~%# Transition flags:~%#    - STATUS_TRANSITION_IN_PROGRESS~%#~%#        A transition is in progress.~%#~%#    - STATUS_TRANSITION_SUCCESS~%#~%#        Successful transition.~%#~%#    - STATUS_FAILED_TRANS_UNKNOWN_BEHAVIOR~%#~%#        Failed to transition; unknown behavior.~%#~%#    - STATUS_FAILED_TRANS_ILLEGAL_BEHAVIOR~%#~%#        Denied request for an illegal behavior transition.  This may~%#        happen if a transition to a new behavior is requested without~%#        going through a required intermediate behavior. (e.g., can't~%#        go from Walk straight to Manipulate.)~%#~%#    - STATUS_FAILED_TRANS_COM_POS~%#~%#        Failed to transition; the position of the COM is too far from~%#        the center of support.~%#~%#    - STATUS_FAILED_TRANS_COM_VEL~%#~%#        Failed to transition; the COM velocity too high.~%#~%#    - STATUS_FAILED_TRANS_VEL~%#~%#        Failed to transition; some joint velocities too high.~%#~%#  \\em Warnings:~%#~%#    - STATUS_WARNING_AUTO_TRANS~%#~%#        An automatic transition occurred; see behavior specific~%#        feedback for reason.~%#~%#  \\em Errors:~%#~%#    - STATUS_ERROR_FALLING~%#~%#        COM below acceptable threshold, cannot recover.~%~%# copied from AtlasBehaviorFlags~%uint32 STATUS_OK                            = 0~%uint32 STATUS_TRANSITION_IN_PROGRESS        = 1~%uint32 STATUS_TRANSITION_SUCCESS            = 2~%uint32 STATUS_FAILED_TRANS_UNKNOWN_BEHAVIOR = 4~%uint32 STATUS_FAILED_TRANS_ILLEGAL_BEHAVIOR = 8~%uint32 STATUS_FAILED_TRANS_COM_POS          = 16~%uint32 STATUS_FAILED_TRANS_COM_VEL          = 32~%uint32 STATUS_FAILED_TRANS_VEL              = 64~%uint32 STATUS_WARNING_AUTO_TRANS            = 128~%uint32 STATUS_ERROR_FALLING                 = 256~%~%uint32 status_flags  # can be one of above~%~%int32 trans_from_behavior_index  # use this as a parm to get_behavior_at_index() to get behavior string~%int32 trans_to_behavior_index  # use this as a parm to get_behavior_at_index() to get behavior string~%~%================================================================================~%MSG: atlas_msgs/AtlasBehaviorStepFeedback~%# mirrored from AtlasControlTypes.h~%uint32 STEP_SUBSTATE_SWAYING = 0  # Feet are in double support. This flag does not latch. Only one of STEP_SUBSTATE_SWAYING or STEP_SUBSTATE_STEPPING will be set at any given time.~%uint32 STEP_SUBSTATE_STEPPING = 1 # Actively stepping; one foot is in the air. This flag does not latch.~%~%uint32 status_flags    # use AtlasBeahviorFeedback/status_flags~%float64 t_step_rem~%uint32 current_step_index~%uint32 next_step_index_needed~%atlas_msgs/AtlasBehaviorStepData desired_step_saturated~%~%================================================================================~%MSG: atlas_msgs/AtlasBehaviorStepData~%# multi_step walking trajectory parameters~%uint32 step_index              # Step index, matlab style, starting from 1,~%                               # monotonically increasing during walking~%                               #  resets to 1 if robot leaves walk behaviors~%uint32 foot_index              # Foot_index can be LEFT_FOOT or RIGHT_FOOT~%float64 duration               # Step duration, when in doubt, 0.63s is a~%                               # good guess.~%geometry_msgs/Pose pose        # Foot pose in Atlas world frame~%float64 swing_height           # Step apex swing height measured form the~%                               # midpoint between the feet.~%~%================================================================================~%MSG: atlas_msgs/AtlasBehaviorStandFeedback~%# mirrored from AtlasControlTypes.h~%uint32 status_flags    # use AtlasBeahviorStandFlags~%~%================================================================================~%MSG: atlas_msgs/AtlasBehaviorWalkFeedback~%# mirrored from AtlasControlTypes.h~%float64 t_step_rem~%uint32 current_step_index~%uint32 next_step_index_needed~%uint32 status_flags    # use AtlasBeahviorFeedback/status_flags~%atlas_msgs/AtlasBehaviorStepData[4] step_queue_saturated # 4 is hardcoded in AtlasSimInterface library.~%~%================================================================================~%MSG: atlas_msgs/AtlasBehaviorManipulateFeedback~%# mirrored from AtlasControlTypes.h~%uint32 status_flags    # use AtlasBeahviorManipulateFlags~%atlas_msgs/AtlasBehaviorPelvisServoParams clamped~%~%================================================================================~%MSG: atlas_msgs/AtlasBehaviorPelvisServoParams~%# mirrored from AtlasControlTypes.h~%~%float64 pelvis_height~%float64 pelvis_yaw~%~%float64 pelvis_lat  # deprecated Atlas V3~%~%float64 pelvis_pitch~%float64 pelvis_roll~%float64 com_v0~%float64 com_v1~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AtlasSimInterfaceState)))
  "Returns full string definition for message of type 'AtlasSimInterfaceState"
  (cl:format cl:nil "# For interfacing Boston Dynamics' AtlasSimInterface Dynamics Behavior Library~%# Feedback from AtlasSimInterface Controller after calling process_control_input~%# This ROS message should track AtlasControlOutput struct in~%# AtlasSimInterfaceTypes.h.~%# With the exception of addition of k_effort to provide user a way to switch~%# to/from PID servo control in AtlasPlugin.cpp on a per joint basis.~%~%int32 NO_ERRORS                        =  0    # no error detected~%int32 ERROR_UNSPECIFIED                = -1    # unspecified error~%int32 ERROR_VALUE_OUT_OF_RANGE         = -2    # passed value is out of range~%int32 ERROR_INVALID_INDEX              = -3    # passed index is invalid (too low or too high)~%int32 ERROR_FAILED_TO_START_BEHAVIOR   = -4    # robot failed to start desired behavior~%int32 ERROR_NO_ACTIVE_BEHAVIOR         = -5    # robot has no active behavior~%int32 ERROR_NO_SUCH_BEHAVIOR           = -6    # behavior doesn't exist~%int32 ERROR_BEHAVIOR_NOT_IMPLEMENTED   = -7    # behavior exists but not implemented~%int32 ERROR_TIME_RAN_BACKWARD          = -8    # a time earlier than previous times was given~%~%Header header~%~%int32 error_code                         # error code returned by~%                                         # process_control_input.~%                                         # See AtlasSimInterfaceTypes.h~%                                         # AtlasErrorCode for list of enums.~%                                         # The list is mimic'd here above.~%~%int32 current_behavior                   # current active behavior.~%int32 desired_behavior                   # desired behavior specified by usesr~%                                         # input. This may lag from~%                                         # current_behavior by a few simulation~%                                         # steps.~%~%# below are information from AtlasControlOutput in AtlasSimInterfaceTypes.h~%~%float64[30] f_out                        # torque command from BDI controller. The first 28 values are used by Atlas versions < 4~%~%atlas_msgs/AtlasPositionData pos_est     # Position and velocity estimate of robot pelvis~%~%geometry_msgs/Pose[2] foot_pos_est      # World position estimate for feet~%                                         # 0 - left, 1 - right~%~%atlas_msgs/AtlasBehaviorFeedback behavior_feedback~%atlas_msgs/AtlasBehaviorStepFeedback step_feedback~%atlas_msgs/AtlasBehaviorStandFeedback stand_feedback~%atlas_msgs/AtlasBehaviorWalkFeedback walk_feedback~%atlas_msgs/AtlasBehaviorManipulateFeedback manipulate_feedback~%~%# additional vector for transitioning from servo model in AtlasPlugin~%# to BDI servo.~%~%uint8[] k_effort       # k_effort can be an unsigned int 8value from 0 to 255, ~%                       # at run time, a double between 0 and 1 is obtained~%                       # by dividing by 255.0d.~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: atlas_msgs/AtlasPositionData~%# mirrors AtlasPositionData in AtlasControlTypes.h~%geometry_msgs/Vector3 position~%geometry_msgs/Vector3 velocity~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: atlas_msgs/AtlasBehaviorFeedback~%# mirrors AtlasBehaviorFeedback~%#~%# Transition flags:~%#    - STATUS_TRANSITION_IN_PROGRESS~%#~%#        A transition is in progress.~%#~%#    - STATUS_TRANSITION_SUCCESS~%#~%#        Successful transition.~%#~%#    - STATUS_FAILED_TRANS_UNKNOWN_BEHAVIOR~%#~%#        Failed to transition; unknown behavior.~%#~%#    - STATUS_FAILED_TRANS_ILLEGAL_BEHAVIOR~%#~%#        Denied request for an illegal behavior transition.  This may~%#        happen if a transition to a new behavior is requested without~%#        going through a required intermediate behavior. (e.g., can't~%#        go from Walk straight to Manipulate.)~%#~%#    - STATUS_FAILED_TRANS_COM_POS~%#~%#        Failed to transition; the position of the COM is too far from~%#        the center of support.~%#~%#    - STATUS_FAILED_TRANS_COM_VEL~%#~%#        Failed to transition; the COM velocity too high.~%#~%#    - STATUS_FAILED_TRANS_VEL~%#~%#        Failed to transition; some joint velocities too high.~%#~%#  \\em Warnings:~%#~%#    - STATUS_WARNING_AUTO_TRANS~%#~%#        An automatic transition occurred; see behavior specific~%#        feedback for reason.~%#~%#  \\em Errors:~%#~%#    - STATUS_ERROR_FALLING~%#~%#        COM below acceptable threshold, cannot recover.~%~%# copied from AtlasBehaviorFlags~%uint32 STATUS_OK                            = 0~%uint32 STATUS_TRANSITION_IN_PROGRESS        = 1~%uint32 STATUS_TRANSITION_SUCCESS            = 2~%uint32 STATUS_FAILED_TRANS_UNKNOWN_BEHAVIOR = 4~%uint32 STATUS_FAILED_TRANS_ILLEGAL_BEHAVIOR = 8~%uint32 STATUS_FAILED_TRANS_COM_POS          = 16~%uint32 STATUS_FAILED_TRANS_COM_VEL          = 32~%uint32 STATUS_FAILED_TRANS_VEL              = 64~%uint32 STATUS_WARNING_AUTO_TRANS            = 128~%uint32 STATUS_ERROR_FALLING                 = 256~%~%uint32 status_flags  # can be one of above~%~%int32 trans_from_behavior_index  # use this as a parm to get_behavior_at_index() to get behavior string~%int32 trans_to_behavior_index  # use this as a parm to get_behavior_at_index() to get behavior string~%~%================================================================================~%MSG: atlas_msgs/AtlasBehaviorStepFeedback~%# mirrored from AtlasControlTypes.h~%uint32 STEP_SUBSTATE_SWAYING = 0  # Feet are in double support. This flag does not latch. Only one of STEP_SUBSTATE_SWAYING or STEP_SUBSTATE_STEPPING will be set at any given time.~%uint32 STEP_SUBSTATE_STEPPING = 1 # Actively stepping; one foot is in the air. This flag does not latch.~%~%uint32 status_flags    # use AtlasBeahviorFeedback/status_flags~%float64 t_step_rem~%uint32 current_step_index~%uint32 next_step_index_needed~%atlas_msgs/AtlasBehaviorStepData desired_step_saturated~%~%================================================================================~%MSG: atlas_msgs/AtlasBehaviorStepData~%# multi_step walking trajectory parameters~%uint32 step_index              # Step index, matlab style, starting from 1,~%                               # monotonically increasing during walking~%                               #  resets to 1 if robot leaves walk behaviors~%uint32 foot_index              # Foot_index can be LEFT_FOOT or RIGHT_FOOT~%float64 duration               # Step duration, when in doubt, 0.63s is a~%                               # good guess.~%geometry_msgs/Pose pose        # Foot pose in Atlas world frame~%float64 swing_height           # Step apex swing height measured form the~%                               # midpoint between the feet.~%~%================================================================================~%MSG: atlas_msgs/AtlasBehaviorStandFeedback~%# mirrored from AtlasControlTypes.h~%uint32 status_flags    # use AtlasBeahviorStandFlags~%~%================================================================================~%MSG: atlas_msgs/AtlasBehaviorWalkFeedback~%# mirrored from AtlasControlTypes.h~%float64 t_step_rem~%uint32 current_step_index~%uint32 next_step_index_needed~%uint32 status_flags    # use AtlasBeahviorFeedback/status_flags~%atlas_msgs/AtlasBehaviorStepData[4] step_queue_saturated # 4 is hardcoded in AtlasSimInterface library.~%~%================================================================================~%MSG: atlas_msgs/AtlasBehaviorManipulateFeedback~%# mirrored from AtlasControlTypes.h~%uint32 status_flags    # use AtlasBeahviorManipulateFlags~%atlas_msgs/AtlasBehaviorPelvisServoParams clamped~%~%================================================================================~%MSG: atlas_msgs/AtlasBehaviorPelvisServoParams~%# mirrored from AtlasControlTypes.h~%~%float64 pelvis_height~%float64 pelvis_yaw~%~%float64 pelvis_lat  # deprecated Atlas V3~%~%float64 pelvis_pitch~%float64 pelvis_roll~%float64 com_v0~%float64 com_v1~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AtlasSimInterfaceState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'f_out) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pos_est))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'foot_pos_est) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'behavior_feedback))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'step_feedback))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'stand_feedback))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'walk_feedback))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'manipulate_feedback))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'k_effort) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AtlasSimInterfaceState>))
  "Converts a ROS message object to a list"
  (cl:list 'AtlasSimInterfaceState
    (cl:cons ':header (header msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':current_behavior (current_behavior msg))
    (cl:cons ':desired_behavior (desired_behavior msg))
    (cl:cons ':f_out (f_out msg))
    (cl:cons ':pos_est (pos_est msg))
    (cl:cons ':foot_pos_est (foot_pos_est msg))
    (cl:cons ':behavior_feedback (behavior_feedback msg))
    (cl:cons ':step_feedback (step_feedback msg))
    (cl:cons ':stand_feedback (stand_feedback msg))
    (cl:cons ':walk_feedback (walk_feedback msg))
    (cl:cons ':manipulate_feedback (manipulate_feedback msg))
    (cl:cons ':k_effort (k_effort msg))
))
