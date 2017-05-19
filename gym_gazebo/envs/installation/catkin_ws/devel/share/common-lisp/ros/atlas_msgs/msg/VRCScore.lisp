; Auto-generated. Do not edit!


(cl:in-package atlas_msgs-msg)


;//! \htmlinclude VRCScore.msg.html

(cl:defclass <VRCScore> (roslisp-msg-protocol:ros-message)
  ((wall_time
    :reader wall_time
    :initarg :wall_time
    :type cl:real
    :initform 0)
   (sim_time
    :reader sim_time
    :initarg :sim_time
    :type cl:real
    :initform 0)
   (wall_time_elapsed
    :reader wall_time_elapsed
    :initarg :wall_time_elapsed
    :type cl:real
    :initform 0)
   (sim_time_elapsed
    :reader sim_time_elapsed
    :initarg :sim_time_elapsed
    :type cl:real
    :initform 0)
   (completion_score
    :reader completion_score
    :initarg :completion_score
    :type cl:integer
    :initform 0)
   (falls
    :reader falls
    :initarg :falls
    :type cl:integer
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (task_type
    :reader task_type
    :initarg :task_type
    :type cl:integer
    :initform 0))
)

(cl:defclass VRCScore (<VRCScore>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VRCScore>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VRCScore)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atlas_msgs-msg:<VRCScore> is deprecated: use atlas_msgs-msg:VRCScore instead.")))

(cl:ensure-generic-function 'wall_time-val :lambda-list '(m))
(cl:defmethod wall_time-val ((m <VRCScore>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:wall_time-val is deprecated.  Use atlas_msgs-msg:wall_time instead.")
  (wall_time m))

(cl:ensure-generic-function 'sim_time-val :lambda-list '(m))
(cl:defmethod sim_time-val ((m <VRCScore>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:sim_time-val is deprecated.  Use atlas_msgs-msg:sim_time instead.")
  (sim_time m))

(cl:ensure-generic-function 'wall_time_elapsed-val :lambda-list '(m))
(cl:defmethod wall_time_elapsed-val ((m <VRCScore>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:wall_time_elapsed-val is deprecated.  Use atlas_msgs-msg:wall_time_elapsed instead.")
  (wall_time_elapsed m))

(cl:ensure-generic-function 'sim_time_elapsed-val :lambda-list '(m))
(cl:defmethod sim_time_elapsed-val ((m <VRCScore>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:sim_time_elapsed-val is deprecated.  Use atlas_msgs-msg:sim_time_elapsed instead.")
  (sim_time_elapsed m))

(cl:ensure-generic-function 'completion_score-val :lambda-list '(m))
(cl:defmethod completion_score-val ((m <VRCScore>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:completion_score-val is deprecated.  Use atlas_msgs-msg:completion_score instead.")
  (completion_score m))

(cl:ensure-generic-function 'falls-val :lambda-list '(m))
(cl:defmethod falls-val ((m <VRCScore>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:falls-val is deprecated.  Use atlas_msgs-msg:falls instead.")
  (falls m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <VRCScore>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:message-val is deprecated.  Use atlas_msgs-msg:message instead.")
  (message m))

(cl:ensure-generic-function 'task_type-val :lambda-list '(m))
(cl:defmethod task_type-val ((m <VRCScore>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-msg:task_type-val is deprecated.  Use atlas_msgs-msg:task_type instead.")
  (task_type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VRCScore>)))
    "Constants for message type '<VRCScore>"
  '((:TASK_OTHER . 0)
    (:TASK_DRIVING . 1)
    (:TASK_WALKING . 2)
    (:TASK_MANIPULATION . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VRCScore)))
    "Constants for message type 'VRCScore"
  '((:TASK_OTHER . 0)
    (:TASK_DRIVING . 1)
    (:TASK_WALKING . 2)
    (:TASK_MANIPULATION . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VRCScore>) ostream)
  "Serializes a message object of type '<VRCScore>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'wall_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'wall_time) (cl:floor (cl:slot-value msg 'wall_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'sim_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'sim_time) (cl:floor (cl:slot-value msg 'sim_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'wall_time_elapsed)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'wall_time_elapsed) (cl:floor (cl:slot-value msg 'wall_time_elapsed)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'sim_time_elapsed)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'sim_time_elapsed) (cl:floor (cl:slot-value msg 'sim_time_elapsed)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let* ((signed (cl:slot-value msg 'completion_score)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'falls)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task_type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VRCScore>) istream)
  "Deserializes a message object of type '<VRCScore>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wall_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sim_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wall_time_elapsed) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sim_time_elapsed) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'completion_score) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'falls) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task_type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VRCScore>)))
  "Returns string type for a message object of type '<VRCScore>"
  "atlas_msgs/VRCScore")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VRCScore)))
  "Returns string type for a message object of type 'VRCScore"
  "atlas_msgs/VRCScore")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VRCScore>)))
  "Returns md5sum for a message object of type '<VRCScore>"
  "15d1f218676ad0e9382ec3bd7afd4995")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VRCScore)))
  "Returns md5sum for a message object of type 'VRCScore"
  "15d1f218676ad0e9382ec3bd7afd4995")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VRCScore>)))
  "Returns full string definition for message of type '<VRCScore>"
  (cl:format cl:nil "# Potential values for task_type~%uint32 TASK_OTHER = 0~%uint32 TASK_DRIVING = 1~%uint32 TASK_WALKING = 2~%uint32 TASK_MANIPULATION = 3~%# Absolute wall time~%time wall_time~%# Absolute sim time~%time sim_time~%# Wall time elapsed since passing the first gate~%time wall_time_elapsed~%# Sim time elapsed since passing the first gate~%time sim_time_elapsed~%# How many parts of the task have been accomplished (e.g., gates traversed)~%int32 completion_score~%# How many damaging falls detected~%int32 falls~%# Optional message to describe events~%string message~%# Which type of task~%uint32 task_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VRCScore)))
  "Returns full string definition for message of type 'VRCScore"
  (cl:format cl:nil "# Potential values for task_type~%uint32 TASK_OTHER = 0~%uint32 TASK_DRIVING = 1~%uint32 TASK_WALKING = 2~%uint32 TASK_MANIPULATION = 3~%# Absolute wall time~%time wall_time~%# Absolute sim time~%time sim_time~%# Wall time elapsed since passing the first gate~%time wall_time_elapsed~%# Sim time elapsed since passing the first gate~%time sim_time_elapsed~%# How many parts of the task have been accomplished (e.g., gates traversed)~%int32 completion_score~%# How many damaging falls detected~%int32 falls~%# Optional message to describe events~%string message~%# Which type of task~%uint32 task_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VRCScore>))
  (cl:+ 0
     8
     8
     8
     8
     4
     4
     4 (cl:length (cl:slot-value msg 'message))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VRCScore>))
  "Converts a ROS message object to a list"
  (cl:list 'VRCScore
    (cl:cons ':wall_time (wall_time msg))
    (cl:cons ':sim_time (sim_time msg))
    (cl:cons ':wall_time_elapsed (wall_time_elapsed msg))
    (cl:cons ':sim_time_elapsed (sim_time_elapsed msg))
    (cl:cons ':completion_score (completion_score msg))
    (cl:cons ':falls (falls msg))
    (cl:cons ':message (message msg))
    (cl:cons ':task_type (task_type msg))
))
