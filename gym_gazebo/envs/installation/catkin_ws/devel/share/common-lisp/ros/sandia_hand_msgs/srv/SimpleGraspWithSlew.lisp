; Auto-generated. Do not edit!


(cl:in-package sandia_hand_msgs-srv)


;//! \htmlinclude SimpleGraspWithSlew-request.msg.html

(cl:defclass <SimpleGraspWithSlew-request> (roslisp-msg-protocol:ros-message)
  ((grasp
    :reader grasp
    :initarg :grasp
    :type sandia_hand_msgs-msg:SimpleGrasp
    :initform (cl:make-instance 'sandia_hand_msgs-msg:SimpleGrasp))
   (slew_duration
    :reader slew_duration
    :initarg :slew_duration
    :type cl:float
    :initform 0.0))
)

(cl:defclass SimpleGraspWithSlew-request (<SimpleGraspWithSlew-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SimpleGraspWithSlew-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SimpleGraspWithSlew-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sandia_hand_msgs-srv:<SimpleGraspWithSlew-request> is deprecated: use sandia_hand_msgs-srv:SimpleGraspWithSlew-request instead.")))

(cl:ensure-generic-function 'grasp-val :lambda-list '(m))
(cl:defmethod grasp-val ((m <SimpleGraspWithSlew-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sandia_hand_msgs-srv:grasp-val is deprecated.  Use sandia_hand_msgs-srv:grasp instead.")
  (grasp m))

(cl:ensure-generic-function 'slew_duration-val :lambda-list '(m))
(cl:defmethod slew_duration-val ((m <SimpleGraspWithSlew-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sandia_hand_msgs-srv:slew_duration-val is deprecated.  Use sandia_hand_msgs-srv:slew_duration instead.")
  (slew_duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SimpleGraspWithSlew-request>) ostream)
  "Serializes a message object of type '<SimpleGraspWithSlew-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'grasp) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'slew_duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SimpleGraspWithSlew-request>) istream)
  "Deserializes a message object of type '<SimpleGraspWithSlew-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'grasp) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'slew_duration) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SimpleGraspWithSlew-request>)))
  "Returns string type for a service object of type '<SimpleGraspWithSlew-request>"
  "sandia_hand_msgs/SimpleGraspWithSlewRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimpleGraspWithSlew-request)))
  "Returns string type for a service object of type 'SimpleGraspWithSlew-request"
  "sandia_hand_msgs/SimpleGraspWithSlewRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SimpleGraspWithSlew-request>)))
  "Returns md5sum for a message object of type '<SimpleGraspWithSlew-request>"
  "8cec9206454ae797a395734c0dc1122b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SimpleGraspWithSlew-request)))
  "Returns md5sum for a message object of type 'SimpleGraspWithSlew-request"
  "8cec9206454ae797a395734c0dc1122b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SimpleGraspWithSlew-request>)))
  "Returns full string definition for message of type '<SimpleGraspWithSlew-request>"
  (cl:format cl:nil "SimpleGrasp grasp~%float32 slew_duration~%~%================================================================================~%MSG: sandia_hand_msgs/SimpleGrasp~%string  name~%float64 closed_amount  ~%# closed_amount = 0 means fully open~%# closed_amount = 1 means fully closed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SimpleGraspWithSlew-request)))
  "Returns full string definition for message of type 'SimpleGraspWithSlew-request"
  (cl:format cl:nil "SimpleGrasp grasp~%float32 slew_duration~%~%================================================================================~%MSG: sandia_hand_msgs/SimpleGrasp~%string  name~%float64 closed_amount  ~%# closed_amount = 0 means fully open~%# closed_amount = 1 means fully closed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SimpleGraspWithSlew-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'grasp))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SimpleGraspWithSlew-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SimpleGraspWithSlew-request
    (cl:cons ':grasp (grasp msg))
    (cl:cons ':slew_duration (slew_duration msg))
))
;//! \htmlinclude SimpleGraspWithSlew-response.msg.html

(cl:defclass <SimpleGraspWithSlew-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SimpleGraspWithSlew-response (<SimpleGraspWithSlew-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SimpleGraspWithSlew-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SimpleGraspWithSlew-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sandia_hand_msgs-srv:<SimpleGraspWithSlew-response> is deprecated: use sandia_hand_msgs-srv:SimpleGraspWithSlew-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SimpleGraspWithSlew-response>) ostream)
  "Serializes a message object of type '<SimpleGraspWithSlew-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SimpleGraspWithSlew-response>) istream)
  "Deserializes a message object of type '<SimpleGraspWithSlew-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SimpleGraspWithSlew-response>)))
  "Returns string type for a service object of type '<SimpleGraspWithSlew-response>"
  "sandia_hand_msgs/SimpleGraspWithSlewResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimpleGraspWithSlew-response)))
  "Returns string type for a service object of type 'SimpleGraspWithSlew-response"
  "sandia_hand_msgs/SimpleGraspWithSlewResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SimpleGraspWithSlew-response>)))
  "Returns md5sum for a message object of type '<SimpleGraspWithSlew-response>"
  "8cec9206454ae797a395734c0dc1122b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SimpleGraspWithSlew-response)))
  "Returns md5sum for a message object of type 'SimpleGraspWithSlew-response"
  "8cec9206454ae797a395734c0dc1122b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SimpleGraspWithSlew-response>)))
  "Returns full string definition for message of type '<SimpleGraspWithSlew-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SimpleGraspWithSlew-response)))
  "Returns full string definition for message of type 'SimpleGraspWithSlew-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SimpleGraspWithSlew-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SimpleGraspWithSlew-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SimpleGraspWithSlew-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SimpleGraspWithSlew)))
  'SimpleGraspWithSlew-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SimpleGraspWithSlew)))
  'SimpleGraspWithSlew-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimpleGraspWithSlew)))
  "Returns string type for a service object of type '<SimpleGraspWithSlew>"
  "sandia_hand_msgs/SimpleGraspWithSlew")