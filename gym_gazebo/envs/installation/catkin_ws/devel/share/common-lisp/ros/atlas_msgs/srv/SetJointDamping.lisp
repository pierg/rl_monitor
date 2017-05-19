; Auto-generated. Do not edit!


(cl:in-package atlas_msgs-srv)


;//! \htmlinclude SetJointDamping-request.msg.html

(cl:defclass <SetJointDamping-request> (roslisp-msg-protocol:ros-message)
  ((damping_coefficients
    :reader damping_coefficients
    :initarg :damping_coefficients
    :type (cl:vector cl:float)
   :initform (cl:make-array 30 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SetJointDamping-request (<SetJointDamping-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetJointDamping-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetJointDamping-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atlas_msgs-srv:<SetJointDamping-request> is deprecated: use atlas_msgs-srv:SetJointDamping-request instead.")))

(cl:ensure-generic-function 'damping_coefficients-val :lambda-list '(m))
(cl:defmethod damping_coefficients-val ((m <SetJointDamping-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-srv:damping_coefficients-val is deprecated.  Use atlas_msgs-srv:damping_coefficients instead.")
  (damping_coefficients m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetJointDamping-request>) ostream)
  "Serializes a message object of type '<SetJointDamping-request>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetJointDamping-request>) istream)
  "Deserializes a message object of type '<SetJointDamping-request>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetJointDamping-request>)))
  "Returns string type for a service object of type '<SetJointDamping-request>"
  "atlas_msgs/SetJointDampingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJointDamping-request)))
  "Returns string type for a service object of type 'SetJointDamping-request"
  "atlas_msgs/SetJointDampingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetJointDamping-request>)))
  "Returns md5sum for a message object of type '<SetJointDamping-request>"
  "7a171b40177337e0eafdb8776fe3c1da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetJointDamping-request)))
  "Returns md5sum for a message object of type 'SetJointDamping-request"
  "7a171b40177337e0eafdb8776fe3c1da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetJointDamping-request>)))
  "Returns full string definition for message of type '<SetJointDamping-request>"
  (cl:format cl:nil "~%~%~%float64[30] damping_coefficients~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetJointDamping-request)))
  "Returns full string definition for message of type 'SetJointDamping-request"
  (cl:format cl:nil "~%~%~%float64[30] damping_coefficients~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetJointDamping-request>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'damping_coefficients) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetJointDamping-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetJointDamping-request
    (cl:cons ':damping_coefficients (damping_coefficients msg))
))
;//! \htmlinclude SetJointDamping-response.msg.html

(cl:defclass <SetJointDamping-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetJointDamping-response (<SetJointDamping-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetJointDamping-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetJointDamping-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atlas_msgs-srv:<SetJointDamping-response> is deprecated: use atlas_msgs-srv:SetJointDamping-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetJointDamping-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-srv:success-val is deprecated.  Use atlas_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'status_message-val :lambda-list '(m))
(cl:defmethod status_message-val ((m <SetJointDamping-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-srv:status_message-val is deprecated.  Use atlas_msgs-srv:status_message instead.")
  (status_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetJointDamping-response>) ostream)
  "Serializes a message object of type '<SetJointDamping-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetJointDamping-response>) istream)
  "Deserializes a message object of type '<SetJointDamping-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetJointDamping-response>)))
  "Returns string type for a service object of type '<SetJointDamping-response>"
  "atlas_msgs/SetJointDampingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJointDamping-response)))
  "Returns string type for a service object of type 'SetJointDamping-response"
  "atlas_msgs/SetJointDampingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetJointDamping-response>)))
  "Returns md5sum for a message object of type '<SetJointDamping-response>"
  "7a171b40177337e0eafdb8776fe3c1da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetJointDamping-response)))
  "Returns md5sum for a message object of type 'SetJointDamping-response"
  "7a171b40177337e0eafdb8776fe3c1da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetJointDamping-response>)))
  "Returns full string definition for message of type '<SetJointDamping-response>"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetJointDamping-response)))
  "Returns full string definition for message of type 'SetJointDamping-response"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetJointDamping-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'status_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetJointDamping-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetJointDamping-response
    (cl:cons ':success (success msg))
    (cl:cons ':status_message (status_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetJointDamping)))
  'SetJointDamping-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetJointDamping)))
  'SetJointDamping-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJointDamping)))
  "Returns string type for a service object of type '<SetJointDamping>"
  "atlas_msgs/SetJointDamping")