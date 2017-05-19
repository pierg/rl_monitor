; Auto-generated. Do not edit!


(cl:in-package atlas_msgs-msg)


;//! \htmlinclude SynchronizationStatistics.msg.html

(cl:defclass <SynchronizationStatistics> (roslisp-msg-protocol:ros-message)
  ((delay_in_step
    :reader delay_in_step
    :initarg :delay_in_step
    :type cl:float
    :initform 0.0)
   (delay_in_window
    :reader delay_in_window
    :initarg :delay_in_window
    :type cl:float
    :initform 0.0)
   (delay_window_remain
    :reader delay_window_remain
    :initarg :delay_window_remain
    :type cl:float
    :initform 0.0))
)

(cl:defclass SynchronizationStatistics (<SynchronizationStatistics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SynchronizationStatistics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SynchronizationStatistics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atlas_msgs-msg:<SynchronizationStatistics> is deprecated: use atlas_msgs-msg:SynchronizationStatistics instead.")))

(cl:ensure-generic-function 'delay_in_step-val :lambda-list '(m))
(cl:defmethod delay_in_step-val ((m <SynchronizationStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:delay_in_step-val is deprecated.  Use atlas_msgs-msg:delay_in_step instead.")
  (delay_in_step m))

(cl:ensure-generic-function 'delay_in_window-val :lambda-list '(m))
(cl:defmethod delay_in_window-val ((m <SynchronizationStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:delay_in_window-val is deprecated.  Use atlas_msgs-msg:delay_in_window instead.")
  (delay_in_window m))

(cl:ensure-generic-function 'delay_window_remain-val :lambda-list '(m))
(cl:defmethod delay_window_remain-val ((m <SynchronizationStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:delay_window_remain-val is deprecated.  Use atlas_msgs-msg:delay_window_remain instead.")
  (delay_window_remain m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SynchronizationStatistics>) ostream)
  "Serializes a message object of type '<SynchronizationStatistics>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'delay_in_step))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'delay_in_window))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'delay_window_remain))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SynchronizationStatistics>) istream)
  "Deserializes a message object of type '<SynchronizationStatistics>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'delay_in_step) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'delay_in_window) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'delay_window_remain) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SynchronizationStatistics>)))
  "Returns string type for a message object of type '<SynchronizationStatistics>"
  "atlas_msgs/SynchronizationStatistics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SynchronizationStatistics)))
  "Returns string type for a message object of type 'SynchronizationStatistics"
  "atlas_msgs/SynchronizationStatistics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SynchronizationStatistics>)))
  "Returns md5sum for a message object of type '<SynchronizationStatistics>"
  "27bc1701ef8ff889822573f985ebb2b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SynchronizationStatistics)))
  "Returns md5sum for a message object of type 'SynchronizationStatistics"
  "27bc1701ef8ff889822573f985ebb2b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SynchronizationStatistics>)))
  "Returns full string definition for message of type '<SynchronizationStatistics>"
  (cl:format cl:nil "float64 delay_in_step         # instantaneous delay per simulation step, this must be less than delayMaxPerStep.~%float64 delay_in_window       # total delay in current window period.~%float64 delay_window_remain   # time left in current window period, before next budget reset.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SynchronizationStatistics)))
  "Returns full string definition for message of type 'SynchronizationStatistics"
  (cl:format cl:nil "float64 delay_in_step         # instantaneous delay per simulation step, this must be less than delayMaxPerStep.~%float64 delay_in_window       # total delay in current window period.~%float64 delay_window_remain   # time left in current window period, before next budget reset.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SynchronizationStatistics>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SynchronizationStatistics>))
  "Converts a ROS message object to a list"
  (cl:list 'SynchronizationStatistics
    (cl:cons ':delay_in_step (delay_in_step msg))
    (cl:cons ':delay_in_window (delay_in_window msg))
    (cl:cons ':delay_window_remain (delay_window_remain msg))
))
