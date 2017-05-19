; Auto-generated. Do not edit!


(cl:in-package atlas_msgs-msg)


;//! \htmlinclude WalkDemoGoal.msg.html

(cl:defclass <WalkDemoGoal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (behavior
    :reader behavior
    :initarg :behavior
    :type cl:integer
    :initform 0)
   (steps
    :reader steps
    :initarg :steps
    :type (cl:vector atlas_msgs-msg:AtlasBehaviorStepData)
   :initform (cl:make-array 0 :element-type 'atlas_msgs-msg:AtlasBehaviorStepData :initial-element (cl:make-instance 'atlas_msgs-msg:AtlasBehaviorStepData)))
   (step_params
    :reader step_params
    :initarg :step_params
    :type atlas_msgs-msg:AtlasBehaviorStepParams
    :initform (cl:make-instance 'atlas_msgs-msg:AtlasBehaviorStepParams))
   (stand_params
    :reader stand_params
    :initarg :stand_params
    :type atlas_msgs-msg:AtlasBehaviorStandParams
    :initform (cl:make-instance 'atlas_msgs-msg:AtlasBehaviorStandParams))
   (manipulate_params
    :reader manipulate_params
    :initarg :manipulate_params
    :type atlas_msgs-msg:AtlasBehaviorManipulateParams
    :initform (cl:make-instance 'atlas_msgs-msg:AtlasBehaviorManipulateParams))
   (k_effort
    :reader k_effort
    :initarg :k_effort
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass WalkDemoGoal (<WalkDemoGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WalkDemoGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WalkDemoGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atlas_msgs-msg:<WalkDemoGoal> is deprecated: use atlas_msgs-msg:WalkDemoGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WalkDemoGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:header-val is deprecated.  Use atlas_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'behavior-val :lambda-list '(m))
(cl:defmethod behavior-val ((m <WalkDemoGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:behavior-val is deprecated.  Use atlas_msgs-msg:behavior instead.")
  (behavior m))

(cl:ensure-generic-function 'steps-val :lambda-list '(m))
(cl:defmethod steps-val ((m <WalkDemoGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:steps-val is deprecated.  Use atlas_msgs-msg:steps instead.")
  (steps m))

(cl:ensure-generic-function 'step_params-val :lambda-list '(m))
(cl:defmethod step_params-val ((m <WalkDemoGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:step_params-val is deprecated.  Use atlas_msgs-msg:step_params instead.")
  (step_params m))

(cl:ensure-generic-function 'stand_params-val :lambda-list '(m))
(cl:defmethod stand_params-val ((m <WalkDemoGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:stand_params-val is deprecated.  Use atlas_msgs-msg:stand_params instead.")
  (stand_params m))

(cl:ensure-generic-function 'manipulate_params-val :lambda-list '(m))
(cl:defmethod manipulate_params-val ((m <WalkDemoGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:manipulate_params-val is deprecated.  Use atlas_msgs-msg:manipulate_params instead.")
  (manipulate_params m))

(cl:ensure-generic-function 'k_effort-val :lambda-list '(m))
(cl:defmethod k_effort-val ((m <WalkDemoGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:k_effort-val is deprecated.  Use atlas_msgs-msg:k_effort instead.")
  (k_effort m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WalkDemoGoal>)))
    "Constants for message type '<WalkDemoGoal>"
  '((:STAND . 0)
    (:USER . 1)
    (:FREEZE . 2)
    (:STAND_PREP . 3)
    (:WALK . 4)
    (:STEP . 5)
    (:MANIPULATE . 6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WalkDemoGoal)))
    "Constants for message type 'WalkDemoGoal"
  '((:STAND . 0)
    (:USER . 1)
    (:FREEZE . 2)
    (:STAND_PREP . 3)
    (:WALK . 4)
    (:STEP . 5)
    (:MANIPULATE . 6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WalkDemoGoal>) ostream)
  "Serializes a message object of type '<WalkDemoGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'behavior)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'steps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'steps))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'step_params) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'stand_params) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'manipulate_params) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'k_effort))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'k_effort))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WalkDemoGoal>) istream)
  "Deserializes a message object of type '<WalkDemoGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'behavior) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'steps) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'steps)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'atlas_msgs-msg:AtlasBehaviorStepData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'step_params) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'stand_params) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'manipulate_params) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WalkDemoGoal>)))
  "Returns string type for a message object of type '<WalkDemoGoal>"
  "atlas_msgs/WalkDemoGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WalkDemoGoal)))
  "Returns string type for a message object of type 'WalkDemoGoal"
  "atlas_msgs/WalkDemoGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WalkDemoGoal>)))
  "Returns md5sum for a message object of type '<WalkDemoGoal>"
  "26d93b1b8e610f3d006fc25ae114dd68")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WalkDemoGoal)))
  "Returns md5sum for a message object of type 'WalkDemoGoal"
  "26d93b1b8e610f3d006fc25ae114dd68")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WalkDemoGoal>)))
  "Returns full string definition for message of type '<WalkDemoGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal~%# For Setting MultiStep Walking Commands~%Header header~%~%# permissible values for behavior~%int32 STAND             =  0 # stand~%int32 USER              =  1 # disable AtlasSimInterface updates, rely on~%                             # /atlas/atlas_command or /atlas/joint_commands~%int32 FREEZE            =  2 # safety mode~%int32 STAND_PREP        =  3 # stand-prep (AtlasSimInterface documentation)~%int32 WALK              =  4 # multi-step walk~%int32 STEP              =  5 # single step walk~%int32 MANIPULATE        =  6 # stand and allows manipulation.~%~%int32 behavior                # can be one of~%                              # USER, FREEZE, STAND_PREP~%                              # WALK, STEP, STAND, MANIPULATE~%                              # DEMO1, DEMO2~%~%# multi_step walking trajectory parameters~%atlas_msgs/AtlasBehaviorStepData[] steps~%~%# parameters for single_step behavior~%atlas_msgs/AtlasBehaviorStepParams step_params~%~%# parameters for standing behavior~%atlas_msgs/AtlasBehaviorStandParams stand_params~%~%# parameters for stand and manipulate~%atlas_msgs/AtlasBehaviorManipulateParams manipulate_params~%~%# same k_effort as AtlasCommand~%uint8[] k_effort       # k_effort can be an unsigned int 8value from 0 to 255, ~%                       # at run time, a double between 0 and 1 is obtained~%                       # by dividing by 255.0d.~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: atlas_msgs/AtlasBehaviorStepData~%# multi_step walking trajectory parameters~%uint32 step_index              # Step index, matlab style, starting from 1,~%                               # monotonically increasing during walking~%                               #  resets to 1 if robot leaves walk behaviors~%uint32 foot_index              # Foot_index can be LEFT_FOOT or RIGHT_FOOT~%float64 duration               # Step duration, when in doubt, 0.63s is a~%                               # good guess.~%geometry_msgs/Pose pose        # Foot pose in Atlas world frame~%float64 swing_height           # Step apex swing height measured form the~%                               # midpoint between the feet.~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: atlas_msgs/AtlasBehaviorStepParams~%# parameters for single_step behavior~%atlas_msgs/AtlasBehaviorStepData desired_step~%bool use_demo_walk~%~%================================================================================~%MSG: atlas_msgs/AtlasBehaviorStandParams~%# stand parameters~%int32 placeholder~%# etc., more to come~%~%================================================================================~%MSG: atlas_msgs/AtlasBehaviorManipulateParams~%# mirrored from AtlasControlTypes.h~%bool use_desired~%atlas_msgs/AtlasBehaviorPelvisServoParams desired~%bool use_demo_mode~%~%================================================================================~%MSG: atlas_msgs/AtlasBehaviorPelvisServoParams~%# mirrored from AtlasControlTypes.h~%~%float64 pelvis_height~%float64 pelvis_yaw~%~%float64 pelvis_lat  # deprecated Atlas V3~%~%float64 pelvis_pitch~%float64 pelvis_roll~%float64 com_v0~%float64 com_v1~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WalkDemoGoal)))
  "Returns full string definition for message of type 'WalkDemoGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal~%# For Setting MultiStep Walking Commands~%Header header~%~%# permissible values for behavior~%int32 STAND             =  0 # stand~%int32 USER              =  1 # disable AtlasSimInterface updates, rely on~%                             # /atlas/atlas_command or /atlas/joint_commands~%int32 FREEZE            =  2 # safety mode~%int32 STAND_PREP        =  3 # stand-prep (AtlasSimInterface documentation)~%int32 WALK              =  4 # multi-step walk~%int32 STEP              =  5 # single step walk~%int32 MANIPULATE        =  6 # stand and allows manipulation.~%~%int32 behavior                # can be one of~%                              # USER, FREEZE, STAND_PREP~%                              # WALK, STEP, STAND, MANIPULATE~%                              # DEMO1, DEMO2~%~%# multi_step walking trajectory parameters~%atlas_msgs/AtlasBehaviorStepData[] steps~%~%# parameters for single_step behavior~%atlas_msgs/AtlasBehaviorStepParams step_params~%~%# parameters for standing behavior~%atlas_msgs/AtlasBehaviorStandParams stand_params~%~%# parameters for stand and manipulate~%atlas_msgs/AtlasBehaviorManipulateParams manipulate_params~%~%# same k_effort as AtlasCommand~%uint8[] k_effort       # k_effort can be an unsigned int 8value from 0 to 255, ~%                       # at run time, a double between 0 and 1 is obtained~%                       # by dividing by 255.0d.~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: atlas_msgs/AtlasBehaviorStepData~%# multi_step walking trajectory parameters~%uint32 step_index              # Step index, matlab style, starting from 1,~%                               # monotonically increasing during walking~%                               #  resets to 1 if robot leaves walk behaviors~%uint32 foot_index              # Foot_index can be LEFT_FOOT or RIGHT_FOOT~%float64 duration               # Step duration, when in doubt, 0.63s is a~%                               # good guess.~%geometry_msgs/Pose pose        # Foot pose in Atlas world frame~%float64 swing_height           # Step apex swing height measured form the~%                               # midpoint between the feet.~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: atlas_msgs/AtlasBehaviorStepParams~%# parameters for single_step behavior~%atlas_msgs/AtlasBehaviorStepData desired_step~%bool use_demo_walk~%~%================================================================================~%MSG: atlas_msgs/AtlasBehaviorStandParams~%# stand parameters~%int32 placeholder~%# etc., more to come~%~%================================================================================~%MSG: atlas_msgs/AtlasBehaviorManipulateParams~%# mirrored from AtlasControlTypes.h~%bool use_desired~%atlas_msgs/AtlasBehaviorPelvisServoParams desired~%bool use_demo_mode~%~%================================================================================~%MSG: atlas_msgs/AtlasBehaviorPelvisServoParams~%# mirrored from AtlasControlTypes.h~%~%float64 pelvis_height~%float64 pelvis_yaw~%~%float64 pelvis_lat  # deprecated Atlas V3~%~%float64 pelvis_pitch~%float64 pelvis_roll~%float64 com_v0~%float64 com_v1~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WalkDemoGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'steps) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'step_params))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'stand_params))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'manipulate_params))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'k_effort) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WalkDemoGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'WalkDemoGoal
    (cl:cons ':header (header msg))
    (cl:cons ':behavior (behavior msg))
    (cl:cons ':steps (steps msg))
    (cl:cons ':step_params (step_params msg))
    (cl:cons ':stand_params (stand_params msg))
    (cl:cons ':manipulate_params (manipulate_params msg))
    (cl:cons ':k_effort (k_effort msg))
))
