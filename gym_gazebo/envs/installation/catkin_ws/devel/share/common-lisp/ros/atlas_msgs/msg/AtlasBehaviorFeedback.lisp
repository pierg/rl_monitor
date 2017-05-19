; Auto-generated. Do not edit!


(cl:in-package atlas_msgs-msg)


;//! \htmlinclude AtlasBehaviorFeedback.msg.html

(cl:defclass <AtlasBehaviorFeedback> (roslisp-msg-protocol:ros-message)
  ((status_flags
    :reader status_flags
    :initarg :status_flags
    :type cl:integer
    :initform 0)
   (trans_from_behavior_index
    :reader trans_from_behavior_index
    :initarg :trans_from_behavior_index
    :type cl:integer
    :initform 0)
   (trans_to_behavior_index
    :reader trans_to_behavior_index
    :initarg :trans_to_behavior_index
    :type cl:integer
    :initform 0))
)

(cl:defclass AtlasBehaviorFeedback (<AtlasBehaviorFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AtlasBehaviorFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AtlasBehaviorFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atlas_msgs-msg:<AtlasBehaviorFeedback> is deprecated: use atlas_msgs-msg:AtlasBehaviorFeedback instead.")))

(cl:ensure-generic-function 'status_flags-val :lambda-list '(m))
(cl:defmethod status_flags-val ((m <AtlasBehaviorFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:status_flags-val is deprecated.  Use atlas_msgs-msg:status_flags instead.")
  (status_flags m))

(cl:ensure-generic-function 'trans_from_behavior_index-val :lambda-list '(m))
(cl:defmethod trans_from_behavior_index-val ((m <AtlasBehaviorFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:trans_from_behavior_index-val is deprecated.  Use atlas_msgs-msg:trans_from_behavior_index instead.")
  (trans_from_behavior_index m))

(cl:ensure-generic-function 'trans_to_behavior_index-val :lambda-list '(m))
(cl:defmethod trans_to_behavior_index-val ((m <AtlasBehaviorFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:trans_to_behavior_index-val is deprecated.  Use atlas_msgs-msg:trans_to_behavior_index instead.")
  (trans_to_behavior_index m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AtlasBehaviorFeedback>)))
    "Constants for message type '<AtlasBehaviorFeedback>"
  '((:STATUS_OK . 0)
    (:STATUS_TRANSITION_IN_PROGRESS . 1)
    (:STATUS_TRANSITION_SUCCESS . 2)
    (:STATUS_FAILED_TRANS_UNKNOWN_BEHAVIOR . 4)
    (:STATUS_FAILED_TRANS_ILLEGAL_BEHAVIOR . 8)
    (:STATUS_FAILED_TRANS_COM_POS . 16)
    (:STATUS_FAILED_TRANS_COM_VEL . 32)
    (:STATUS_FAILED_TRANS_VEL . 64)
    (:STATUS_WARNING_AUTO_TRANS . 128)
    (:STATUS_ERROR_FALLING . 256))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AtlasBehaviorFeedback)))
    "Constants for message type 'AtlasBehaviorFeedback"
  '((:STATUS_OK . 0)
    (:STATUS_TRANSITION_IN_PROGRESS . 1)
    (:STATUS_TRANSITION_SUCCESS . 2)
    (:STATUS_FAILED_TRANS_UNKNOWN_BEHAVIOR . 4)
    (:STATUS_FAILED_TRANS_ILLEGAL_BEHAVIOR . 8)
    (:STATUS_FAILED_TRANS_COM_POS . 16)
    (:STATUS_FAILED_TRANS_COM_VEL . 32)
    (:STATUS_FAILED_TRANS_VEL . 64)
    (:STATUS_WARNING_AUTO_TRANS . 128)
    (:STATUS_ERROR_FALLING . 256))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AtlasBehaviorFeedback>) ostream)
  "Serializes a message object of type '<AtlasBehaviorFeedback>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_flags)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'trans_from_behavior_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'trans_to_behavior_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AtlasBehaviorFeedback>) istream)
  "Deserializes a message object of type '<AtlasBehaviorFeedback>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_flags)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'trans_from_behavior_index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'trans_to_behavior_index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AtlasBehaviorFeedback>)))
  "Returns string type for a message object of type '<AtlasBehaviorFeedback>"
  "atlas_msgs/AtlasBehaviorFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AtlasBehaviorFeedback)))
  "Returns string type for a message object of type 'AtlasBehaviorFeedback"
  "atlas_msgs/AtlasBehaviorFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AtlasBehaviorFeedback>)))
  "Returns md5sum for a message object of type '<AtlasBehaviorFeedback>"
  "f7b1da61a8fcdd81f1e8d9a700d9d2bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AtlasBehaviorFeedback)))
  "Returns md5sum for a message object of type 'AtlasBehaviorFeedback"
  "f7b1da61a8fcdd81f1e8d9a700d9d2bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AtlasBehaviorFeedback>)))
  "Returns full string definition for message of type '<AtlasBehaviorFeedback>"
  (cl:format cl:nil "# mirrors AtlasBehaviorFeedback~%#~%# Transition flags:~%#    - STATUS_TRANSITION_IN_PROGRESS~%#~%#        A transition is in progress.~%#~%#    - STATUS_TRANSITION_SUCCESS~%#~%#        Successful transition.~%#~%#    - STATUS_FAILED_TRANS_UNKNOWN_BEHAVIOR~%#~%#        Failed to transition; unknown behavior.~%#~%#    - STATUS_FAILED_TRANS_ILLEGAL_BEHAVIOR~%#~%#        Denied request for an illegal behavior transition.  This may~%#        happen if a transition to a new behavior is requested without~%#        going through a required intermediate behavior. (e.g., can't~%#        go from Walk straight to Manipulate.)~%#~%#    - STATUS_FAILED_TRANS_COM_POS~%#~%#        Failed to transition; the position of the COM is too far from~%#        the center of support.~%#~%#    - STATUS_FAILED_TRANS_COM_VEL~%#~%#        Failed to transition; the COM velocity too high.~%#~%#    - STATUS_FAILED_TRANS_VEL~%#~%#        Failed to transition; some joint velocities too high.~%#~%#  \\em Warnings:~%#~%#    - STATUS_WARNING_AUTO_TRANS~%#~%#        An automatic transition occurred; see behavior specific~%#        feedback for reason.~%#~%#  \\em Errors:~%#~%#    - STATUS_ERROR_FALLING~%#~%#        COM below acceptable threshold, cannot recover.~%~%# copied from AtlasBehaviorFlags~%uint32 STATUS_OK                            = 0~%uint32 STATUS_TRANSITION_IN_PROGRESS        = 1~%uint32 STATUS_TRANSITION_SUCCESS            = 2~%uint32 STATUS_FAILED_TRANS_UNKNOWN_BEHAVIOR = 4~%uint32 STATUS_FAILED_TRANS_ILLEGAL_BEHAVIOR = 8~%uint32 STATUS_FAILED_TRANS_COM_POS          = 16~%uint32 STATUS_FAILED_TRANS_COM_VEL          = 32~%uint32 STATUS_FAILED_TRANS_VEL              = 64~%uint32 STATUS_WARNING_AUTO_TRANS            = 128~%uint32 STATUS_ERROR_FALLING                 = 256~%~%uint32 status_flags  # can be one of above~%~%int32 trans_from_behavior_index  # use this as a parm to get_behavior_at_index() to get behavior string~%int32 trans_to_behavior_index  # use this as a parm to get_behavior_at_index() to get behavior string~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AtlasBehaviorFeedback)))
  "Returns full string definition for message of type 'AtlasBehaviorFeedback"
  (cl:format cl:nil "# mirrors AtlasBehaviorFeedback~%#~%# Transition flags:~%#    - STATUS_TRANSITION_IN_PROGRESS~%#~%#        A transition is in progress.~%#~%#    - STATUS_TRANSITION_SUCCESS~%#~%#        Successful transition.~%#~%#    - STATUS_FAILED_TRANS_UNKNOWN_BEHAVIOR~%#~%#        Failed to transition; unknown behavior.~%#~%#    - STATUS_FAILED_TRANS_ILLEGAL_BEHAVIOR~%#~%#        Denied request for an illegal behavior transition.  This may~%#        happen if a transition to a new behavior is requested without~%#        going through a required intermediate behavior. (e.g., can't~%#        go from Walk straight to Manipulate.)~%#~%#    - STATUS_FAILED_TRANS_COM_POS~%#~%#        Failed to transition; the position of the COM is too far from~%#        the center of support.~%#~%#    - STATUS_FAILED_TRANS_COM_VEL~%#~%#        Failed to transition; the COM velocity too high.~%#~%#    - STATUS_FAILED_TRANS_VEL~%#~%#        Failed to transition; some joint velocities too high.~%#~%#  \\em Warnings:~%#~%#    - STATUS_WARNING_AUTO_TRANS~%#~%#        An automatic transition occurred; see behavior specific~%#        feedback for reason.~%#~%#  \\em Errors:~%#~%#    - STATUS_ERROR_FALLING~%#~%#        COM below acceptable threshold, cannot recover.~%~%# copied from AtlasBehaviorFlags~%uint32 STATUS_OK                            = 0~%uint32 STATUS_TRANSITION_IN_PROGRESS        = 1~%uint32 STATUS_TRANSITION_SUCCESS            = 2~%uint32 STATUS_FAILED_TRANS_UNKNOWN_BEHAVIOR = 4~%uint32 STATUS_FAILED_TRANS_ILLEGAL_BEHAVIOR = 8~%uint32 STATUS_FAILED_TRANS_COM_POS          = 16~%uint32 STATUS_FAILED_TRANS_COM_VEL          = 32~%uint32 STATUS_FAILED_TRANS_VEL              = 64~%uint32 STATUS_WARNING_AUTO_TRANS            = 128~%uint32 STATUS_ERROR_FALLING                 = 256~%~%uint32 status_flags  # can be one of above~%~%int32 trans_from_behavior_index  # use this as a parm to get_behavior_at_index() to get behavior string~%int32 trans_to_behavior_index  # use this as a parm to get_behavior_at_index() to get behavior string~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AtlasBehaviorFeedback>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AtlasBehaviorFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'AtlasBehaviorFeedback
    (cl:cons ':status_flags (status_flags msg))
    (cl:cons ':trans_from_behavior_index (trans_from_behavior_index msg))
    (cl:cons ':trans_to_behavior_index (trans_to_behavior_index msg))
))
