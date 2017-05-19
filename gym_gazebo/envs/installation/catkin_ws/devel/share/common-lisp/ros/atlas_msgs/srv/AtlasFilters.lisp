; Auto-generated. Do not edit!


(cl:in-package atlas_msgs-srv)


;//! \htmlinclude AtlasFilters-request.msg.html

(cl:defclass <AtlasFilters-request> (roslisp-msg-protocol:ros-message)
  ((coef_a
    :reader coef_a
    :initarg :coef_a
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (coef_b
    :reader coef_b
    :initarg :coef_b
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (filter_velocity
    :reader filter_velocity
    :initarg :filter_velocity
    :type cl:boolean
    :initform cl:nil)
   (filter_position
    :reader filter_position
    :initarg :filter_position
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AtlasFilters-request (<AtlasFilters-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AtlasFilters-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AtlasFilters-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atlas_msgs-srv:<AtlasFilters-request> is deprecated: use atlas_msgs-srv:AtlasFilters-request instead.")))

(cl:ensure-generic-function 'coef_a-val :lambda-list '(m))
(cl:defmethod coef_a-val ((m <AtlasFilters-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-srv:coef_a-val is deprecated.  Use atlas_msgs-srv:coef_a instead.")
  (coef_a m))

(cl:ensure-generic-function 'coef_b-val :lambda-list '(m))
(cl:defmethod coef_b-val ((m <AtlasFilters-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-srv:coef_b-val is deprecated.  Use atlas_msgs-srv:coef_b instead.")
  (coef_b m))

(cl:ensure-generic-function 'filter_velocity-val :lambda-list '(m))
(cl:defmethod filter_velocity-val ((m <AtlasFilters-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-srv:filter_velocity-val is deprecated.  Use atlas_msgs-srv:filter_velocity instead.")
  (filter_velocity m))

(cl:ensure-generic-function 'filter_position-val :lambda-list '(m))
(cl:defmethod filter_position-val ((m <AtlasFilters-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-srv:filter_position-val is deprecated.  Use atlas_msgs-srv:filter_position instead.")
  (filter_position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AtlasFilters-request>) ostream)
  "Serializes a message object of type '<AtlasFilters-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'coef_a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'coef_a))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'coef_b))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'coef_b))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'filter_velocity) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'filter_position) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AtlasFilters-request>) istream)
  "Deserializes a message object of type '<AtlasFilters-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'coef_a) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'coef_a)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'coef_b) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'coef_b)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
    (cl:setf (cl:slot-value msg 'filter_velocity) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'filter_position) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AtlasFilters-request>)))
  "Returns string type for a service object of type '<AtlasFilters-request>"
  "atlas_msgs/AtlasFiltersRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AtlasFilters-request)))
  "Returns string type for a service object of type 'AtlasFilters-request"
  "atlas_msgs/AtlasFiltersRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AtlasFilters-request>)))
  "Returns md5sum for a message object of type '<AtlasFilters-request>"
  "c10edfabe7696f91f51fb8486565f5ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AtlasFilters-request)))
  "Returns md5sum for a message object of type 'AtlasFilters-request"
  "c10edfabe7696f91f51fb8486565f5ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AtlasFilters-request>)))
  "Returns full string definition for message of type '<AtlasFilters-request>"
  (cl:format cl:nil "~%float64[] coef_a~%~%~%float64[] coef_b~%~%~%~%bool filter_velocity~%bool filter_position~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AtlasFilters-request)))
  "Returns full string definition for message of type 'AtlasFilters-request"
  (cl:format cl:nil "~%float64[] coef_a~%~%~%float64[] coef_b~%~%~%~%bool filter_velocity~%bool filter_position~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AtlasFilters-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'coef_a) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'coef_b) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AtlasFilters-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AtlasFilters-request
    (cl:cons ':coef_a (coef_a msg))
    (cl:cons ':coef_b (coef_b msg))
    (cl:cons ':filter_velocity (filter_velocity msg))
    (cl:cons ':filter_position (filter_position msg))
))
;//! \htmlinclude AtlasFilters-response.msg.html

(cl:defclass <AtlasFilters-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass AtlasFilters-response (<AtlasFilters-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AtlasFilters-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AtlasFilters-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atlas_msgs-srv:<AtlasFilters-response> is deprecated: use atlas_msgs-srv:AtlasFilters-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <AtlasFilters-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-srv:success-val is deprecated.  Use atlas_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'status_message-val :lambda-list '(m))
(cl:defmethod status_message-val ((m <AtlasFilters-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atlas_msgs-srv:status_message-val is deprecated.  Use atlas_msgs-srv:status_message instead.")
  (status_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AtlasFilters-response>) ostream)
  "Serializes a message object of type '<AtlasFilters-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AtlasFilters-response>) istream)
  "Deserializes a message object of type '<AtlasFilters-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AtlasFilters-response>)))
  "Returns string type for a service object of type '<AtlasFilters-response>"
  "atlas_msgs/AtlasFiltersResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AtlasFilters-response)))
  "Returns string type for a service object of type 'AtlasFilters-response"
  "atlas_msgs/AtlasFiltersResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AtlasFilters-response>)))
  "Returns md5sum for a message object of type '<AtlasFilters-response>"
  "c10edfabe7696f91f51fb8486565f5ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AtlasFilters-response)))
  "Returns md5sum for a message object of type 'AtlasFilters-response"
  "c10edfabe7696f91f51fb8486565f5ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AtlasFilters-response>)))
  "Returns full string definition for message of type '<AtlasFilters-response>"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AtlasFilters-response)))
  "Returns full string definition for message of type 'AtlasFilters-response"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AtlasFilters-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'status_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AtlasFilters-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AtlasFilters-response
    (cl:cons ':success (success msg))
    (cl:cons ':status_message (status_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AtlasFilters)))
  'AtlasFilters-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AtlasFilters)))
  'AtlasFilters-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AtlasFilters)))
  "Returns string type for a service object of type '<AtlasFilters>"
  "atlas_msgs/AtlasFilters")