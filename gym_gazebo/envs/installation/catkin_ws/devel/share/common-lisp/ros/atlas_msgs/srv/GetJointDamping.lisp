; Auto-generated. Do not edit!


(cl:in-package atlas_msgs-srv)


;//! \htmlinclude GetJointDamping-request.msg.html

(cl:defclass <GetJointDamping-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetJointDamping-request (<GetJointDamping-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetJointDamping-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetJointDamping-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atlas_msgs-srv:<GetJointDamping-request> is deprecated: use atlas_msgs-srv:GetJointDamping-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetJointDamping-request>) ostream)
  "Serializes a message object of type '<GetJointDamping-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetJointDamping-request>) istream)
  "Deserializes a message object of type '<GetJointDamping-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetJointDamping-request>)))
  "Returns string type for a service object of type '<GetJointDamping-request>"
  "atlas_msgs/GetJointDampingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetJointDamping-request)))
  "Returns string type for a service object of type 'GetJointDamping-request"
  "atlas_msgs/GetJointDampingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetJointDamping-request>)))
  "Returns md5sum for a message object of type '<GetJointDamping-request>"
  "ac3412a634e22520e6b32a1a83777a10")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetJointDamping-request)))
  "Returns md5sum for a message object of type 'GetJointDamping-request"
  "ac3412a634e22520e6b32a1a83777a10")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetJointDamping-request>)))
  "Returns full string definition for message of type '<GetJointDamping-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetJointDamping-request)))
  "Returns full string definition for message of type 'GetJointDamping-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetJointDamping-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetJointDamping-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetJointDamping-request
))
;//! \htmlinclude GetJointDamping-response.msg.html

(cl:defclass <GetJointDamping-response> (roslisp-msg-protocol:ros-message)
  ((damping_coefficients
    :reader damping_coefficients
    :initarg :damping_coefficients
    :type (cl:vector cl:float)
   :initform (cl:make-array 30 :element-type 'cl:float :initial-element 0.0))
   (damping_coefficients_min
    :reader damping_coefficients_min
    :initarg :damping_coefficients_min
    :type (cl:vector cl:float)
   :initform (cl:make-array 30 :element-type 'cl:float :initial-element 0.0))
   (damping_coefficients_max
    :reader damping_coefficients_max
    :initarg :damping_coefficients_max
    :type (cl:vector cl:float)
   :initform (cl:make-array 30 :element-type 'cl:float :initial-element 0.0))
   (success
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

(cl:defclass GetJointDamping-response (<GetJointDamping-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetJointDamping-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetJointDamping-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atlas_msgs-srv:<GetJointDamping-response> is deprecated: use atlas_msgs-srv:GetJointDamping-response instead.")))

(cl:ensure-generic-function 'damping_coefficients-val :lambda-list '(m))
(cl:defmethod damping_coefficients-val ((m <GetJointDamping-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-srv:damping_coefficients-val is deprecated.  Use atlas_msgs-srv:damping_coefficients instead.")
  (damping_coefficients m))

(cl:ensure-generic-function 'damping_coefficients_min-val :lambda-list '(m))
(cl:defmethod damping_coefficients_min-val ((m <GetJointDamping-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-srv:damping_coefficients_min-val is deprecated.  Use atlas_msgs-srv:damping_coefficients_min instead.")
  (damping_coefficients_min m))

(cl:ensure-generic-function 'damping_coefficients_max-val :lambda-list '(m))
(cl:defmethod damping_coefficients_max-val ((m <GetJointDamping-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-srv:damping_coefficients_max-val is deprecated.  Use atlas_msgs-srv:damping_coefficients_max instead.")
  (damping_coefficients_max m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetJointDamping-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-srv:success-val is deprecated.  Use atlas_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'status_message-val :lambda-list '(m))
(cl:defmethod status_message-val ((m <GetJointDamping-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-srv:status_message-val is deprecated.  Use atlas_msgs-srv:status_message instead.")
  (status_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetJointDamping-response>) ostream)
  "Serializes a message object of type '<GetJointDamping-response>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'damping_coefficients))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'damping_coefficients_min))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'damping_coefficients_max))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetJointDamping-response>) istream)
  "Deserializes a message object of type '<GetJointDamping-response>"
  (cl:setf (cl:slot-value msg 'damping_coefficients) (cl:make-array 30))
  (cl:let ((vals (cl:slot-value msg 'damping_coefficients)))
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
  (cl:setf (cl:slot-value msg 'damping_coefficients_min) (cl:make-array 30))
  (cl:let ((vals (cl:slot-value msg 'damping_coefficients_min)))
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
  (cl:setf (cl:slot-value msg 'damping_coefficients_max) (cl:make-array 30))
  (cl:let ((vals (cl:slot-value msg 'damping_coefficients_max)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetJointDamping-response>)))
  "Returns string type for a service object of type '<GetJointDamping-response>"
  "atlas_msgs/GetJointDampingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetJointDamping-response)))
  "Returns string type for a service object of type 'GetJointDamping-response"
  "atlas_msgs/GetJointDampingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetJointDamping-response>)))
  "Returns md5sum for a message object of type '<GetJointDamping-response>"
  "ac3412a634e22520e6b32a1a83777a10")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetJointDamping-response)))
  "Returns md5sum for a message object of type 'GetJointDamping-response"
  "ac3412a634e22520e6b32a1a83777a10")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetJointDamping-response>)))
  "Returns full string definition for message of type '<GetJointDamping-response>"
  (cl:format cl:nil "~%float64[30] damping_coefficients~%float64[30] damping_coefficients_min~%float64[30] damping_coefficients_max~%bool success~%string status_message~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetJointDamping-response)))
  "Returns full string definition for message of type 'GetJointDamping-response"
  (cl:format cl:nil "~%float64[30] damping_coefficients~%float64[30] damping_coefficients_min~%float64[30] damping_coefficients_max~%bool success~%string status_message~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetJointDamping-response>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'damping_coefficients) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'damping_coefficients_min) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'damping_coefficients_max) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     1
     4 (cl:length (cl:slot-value msg 'status_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetJointDamping-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetJointDamping-response
    (cl:cons ':damping_coefficients (damping_coefficients msg))
    (cl:cons ':damping_coefficients_min (damping_coefficients_min msg))
    (cl:cons ':damping_coefficients_max (damping_coefficients_max msg))
    (cl:cons ':success (success msg))
    (cl:cons ':status_message (status_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetJointDamping)))
  'GetJointDamping-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetJointDamping)))
  'GetJointDamping-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetJointDamping)))
  "Returns string type for a service object of type '<GetJointDamping>"
  "atlas_msgs/GetJointDamping")