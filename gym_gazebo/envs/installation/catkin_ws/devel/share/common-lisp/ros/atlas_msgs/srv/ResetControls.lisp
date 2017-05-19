; Auto-generated. Do not edit!


(cl:in-package atlas_msgs-srv)


;//! \htmlinclude ResetControls-request.msg.html

(cl:defclass <ResetControls-request> (roslisp-msg-protocol:ros-message)
  ((reset_bdi_controller
    :reader reset_bdi_controller
    :initarg :reset_bdi_controller
    :type cl:boolean
    :initform cl:nil)
   (reset_pid_controller
    :reader reset_pid_controller
    :initarg :reset_pid_controller
    :type cl:boolean
    :initform cl:nil)
   (reload_pid_from_ros
    :reader reload_pid_from_ros
    :initarg :reload_pid_from_ros
    :type cl:boolean
    :initform cl:nil)
   (atlas_command
    :reader atlas_command
    :initarg :atlas_command
    :type atlas_msgs-msg:AtlasCommand
    :initform (cl:make-instance 'atlas_msgs-msg:AtlasCommand)))
)

(cl:defclass ResetControls-request (<ResetControls-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetControls-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetControls-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atlas_msgs-srv:<ResetControls-request> is deprecated: use atlas_msgs-srv:ResetControls-request instead.")))

(cl:ensure-generic-function 'reset_bdi_controller-val :lambda-list '(m))
(cl:defmethod reset_bdi_controller-val ((m <ResetControls-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-srv:reset_bdi_controller-val is deprecated.  Use atlas_msgs-srv:reset_bdi_controller instead.")
  (reset_bdi_controller m))

(cl:ensure-generic-function 'reset_pid_controller-val :lambda-list '(m))
(cl:defmethod reset_pid_controller-val ((m <ResetControls-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-srv:reset_pid_controller-val is deprecated.  Use atlas_msgs-srv:reset_pid_controller instead.")
  (reset_pid_controller m))

(cl:ensure-generic-function 'reload_pid_from_ros-val :lambda-list '(m))
(cl:defmethod reload_pid_from_ros-val ((m <ResetControls-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-srv:reload_pid_from_ros-val is deprecated.  Use atlas_msgs-srv:reload_pid_from_ros instead.")
  (reload_pid_from_ros m))

(cl:ensure-generic-function 'atlas_command-val :lambda-list '(m))
(cl:defmethod atlas_command-val ((m <ResetControls-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-srv:atlas_command-val is deprecated.  Use atlas_msgs-srv:atlas_command instead.")
  (atlas_command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetControls-request>) ostream)
  "Serializes a message object of type '<ResetControls-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reset_bdi_controller) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reset_pid_controller) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reload_pid_from_ros) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'atlas_command) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetControls-request>) istream)
  "Deserializes a message object of type '<ResetControls-request>"
    (cl:setf (cl:slot-value msg 'reset_bdi_controller) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'reset_pid_controller) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'reload_pid_from_ros) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'atlas_command) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetControls-request>)))
  "Returns string type for a service object of type '<ResetControls-request>"
  "atlas_msgs/ResetControlsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetControls-request)))
  "Returns string type for a service object of type 'ResetControls-request"
  "atlas_msgs/ResetControlsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetControls-request>)))
  "Returns md5sum for a message object of type '<ResetControls-request>"
  "132418be2559866cd92987f80ed5ce8a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetControls-request)))
  "Returns md5sum for a message object of type 'ResetControls-request"
  "132418be2559866cd92987f80ed5ce8a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetControls-request>)))
  "Returns full string definition for message of type '<ResetControls-request>"
  (cl:format cl:nil "~%~%bool reset_bdi_controller~%bool reset_pid_controller~%bool reload_pid_from_ros~%atlas_msgs/AtlasCommand atlas_command~%~%~%~%~%================================================================================~%MSG: atlas_msgs/AtlasCommand~%# Joint Command Message~%# This structure contains the gains to be applied to a joint.~%# The controller is a PID with feedforward desired torque:~%#~%# This message has been carefully constructed to be less~%# than 1500 in size when serialized, to accommodate transfer~%# UDP.~%#~%#   k_effort * (~%#     kp_position     * ( position - measured_position )       +~%#     ki_position     * 1/s * ( position - measured_position ) +~%#     kd_position     * s * ( position - measured_position ) +~%#     kp_velocity     * ( velocity - measured_velocity )     +~%#     effort ) +~%#   (1 - k_effort)  * effort_bdi~%#~%#  Where effort_bdi comes from AtlasSimInterface Dynamics Behavior Library.~%#~%Header header~%~%float64[] position~%float64[] velocity~%float64[] effort~%~%float32[] kp_position~%float32[] ki_position~%float32[] kd_position~%float32[] kp_velocity~%uint8[] k_effort       # k_effort can be an unsigned int 8value from 0 to 255, ~%                       # at run time, a double between 0 and 1 is obtained~%                       # by dividing by 255.0d.~%~%float32[] i_effort_min~%float32[] i_effort_max~%~%uint8 desired_controller_period_ms # max allowed controller update period in milli-seconds simulation time for controller synchronization.  See SynchronizationStatistics.msg for tracking synchronization status.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetControls-request)))
  "Returns full string definition for message of type 'ResetControls-request"
  (cl:format cl:nil "~%~%bool reset_bdi_controller~%bool reset_pid_controller~%bool reload_pid_from_ros~%atlas_msgs/AtlasCommand atlas_command~%~%~%~%~%================================================================================~%MSG: atlas_msgs/AtlasCommand~%# Joint Command Message~%# This structure contains the gains to be applied to a joint.~%# The controller is a PID with feedforward desired torque:~%#~%# This message has been carefully constructed to be less~%# than 1500 in size when serialized, to accommodate transfer~%# UDP.~%#~%#   k_effort * (~%#     kp_position     * ( position - measured_position )       +~%#     ki_position     * 1/s * ( position - measured_position ) +~%#     kd_position     * s * ( position - measured_position ) +~%#     kp_velocity     * ( velocity - measured_velocity )     +~%#     effort ) +~%#   (1 - k_effort)  * effort_bdi~%#~%#  Where effort_bdi comes from AtlasSimInterface Dynamics Behavior Library.~%#~%Header header~%~%float64[] position~%float64[] velocity~%float64[] effort~%~%float32[] kp_position~%float32[] ki_position~%float32[] kd_position~%float32[] kp_velocity~%uint8[] k_effort       # k_effort can be an unsigned int 8value from 0 to 255, ~%                       # at run time, a double between 0 and 1 is obtained~%                       # by dividing by 255.0d.~%~%float32[] i_effort_min~%float32[] i_effort_max~%~%uint8 desired_controller_period_ms # max allowed controller update period in milli-seconds simulation time for controller synchronization.  See SynchronizationStatistics.msg for tracking synchronization status.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetControls-request>))
  (cl:+ 0
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'atlas_command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetControls-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetControls-request
    (cl:cons ':reset_bdi_controller (reset_bdi_controller msg))
    (cl:cons ':reset_pid_controller (reset_pid_controller msg))
    (cl:cons ':reload_pid_from_ros (reload_pid_from_ros msg))
    (cl:cons ':atlas_command (atlas_command msg))
))
;//! \htmlinclude ResetControls-response.msg.html

(cl:defclass <ResetControls-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (status_message
    :reader status_message
    :initarg :status_message
    :type cl:string
    :initform ""))
)

(cl:defclass ResetControls-response (<ResetControls-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetControls-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetControls-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atlas_msgs-srv:<ResetControls-response> is deprecated: use atlas_msgs-srv:ResetControls-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ResetControls-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-srv:success-val is deprecated.  Use atlas_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'status_message-val :lambda-list '(m))
(cl:defmethod status_message-val ((m <ResetControls-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-srv:status_message-val is deprecated.  Use atlas_msgs-srv:status_message instead.")
  (status_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetControls-response>) ostream)
  "Serializes a message object of type '<ResetControls-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetControls-response>) istream)
  "Deserializes a message object of type '<ResetControls-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status_message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status_message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetControls-response>)))
  "Returns string type for a service object of type '<ResetControls-response>"
  "atlas_msgs/ResetControlsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetControls-response)))
  "Returns string type for a service object of type 'ResetControls-response"
  "atlas_msgs/ResetControlsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetControls-response>)))
  "Returns md5sum for a message object of type '<ResetControls-response>"
  "132418be2559866cd92987f80ed5ce8a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetControls-response)))
  "Returns md5sum for a message object of type 'ResetControls-response"
  "132418be2559866cd92987f80ed5ce8a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetControls-response>)))
  "Returns full string definition for message of type '<ResetControls-response>"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetControls-response)))
  "Returns full string definition for message of type 'ResetControls-response"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetControls-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'status_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetControls-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetControls-response
    (cl:cons ':success (success msg))
    (cl:cons ':status_message (status_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ResetControls)))
  'ResetControls-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ResetControls)))
  'ResetControls-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetControls)))
  "Returns string type for a service object of type '<ResetControls>"
  "atlas_msgs/ResetControls")