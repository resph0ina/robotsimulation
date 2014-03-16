; Auto-generated. Do not edit!


(cl:in-package interface-srv)


;//! \htmlinclude KeepStaticParameter-request.msg.html

(cl:defclass <KeepStaticParameter-request> (roslisp-msg-protocol:ros-message)
  ((position_neck_head
    :reader position_neck_head
    :initarg :position_neck_head
    :type cl:float
    :initform 0.0)
   (position_baselink_neck
    :reader position_baselink_neck
    :initarg :position_baselink_neck
    :type cl:float
    :initform 0.0)
   (velocity_left_fw
    :reader velocity_left_fw
    :initarg :velocity_left_fw
    :type cl:float
    :initform 0.0)
   (velocity_right_fw
    :reader velocity_right_fw
    :initarg :velocity_right_fw
    :type cl:float
    :initform 0.0))
)

(cl:defclass KeepStaticParameter-request (<KeepStaticParameter-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KeepStaticParameter-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KeepStaticParameter-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interface-srv:<KeepStaticParameter-request> is deprecated: use interface-srv:KeepStaticParameter-request instead.")))

(cl:ensure-generic-function 'position_neck_head-val :lambda-list '(m))
(cl:defmethod position_neck_head-val ((m <KeepStaticParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interface-srv:position_neck_head-val is deprecated.  Use interface-srv:position_neck_head instead.")
  (position_neck_head m))

(cl:ensure-generic-function 'position_baselink_neck-val :lambda-list '(m))
(cl:defmethod position_baselink_neck-val ((m <KeepStaticParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interface-srv:position_baselink_neck-val is deprecated.  Use interface-srv:position_baselink_neck instead.")
  (position_baselink_neck m))

(cl:ensure-generic-function 'velocity_left_fw-val :lambda-list '(m))
(cl:defmethod velocity_left_fw-val ((m <KeepStaticParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interface-srv:velocity_left_fw-val is deprecated.  Use interface-srv:velocity_left_fw instead.")
  (velocity_left_fw m))

(cl:ensure-generic-function 'velocity_right_fw-val :lambda-list '(m))
(cl:defmethod velocity_right_fw-val ((m <KeepStaticParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interface-srv:velocity_right_fw-val is deprecated.  Use interface-srv:velocity_right_fw instead.")
  (velocity_right_fw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KeepStaticParameter-request>) ostream)
  "Serializes a message object of type '<KeepStaticParameter-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'position_neck_head))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'position_baselink_neck))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'velocity_left_fw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'velocity_right_fw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KeepStaticParameter-request>) istream)
  "Deserializes a message object of type '<KeepStaticParameter-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position_neck_head) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position_baselink_neck) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity_left_fw) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity_right_fw) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KeepStaticParameter-request>)))
  "Returns string type for a service object of type '<KeepStaticParameter-request>"
  "interface/KeepStaticParameterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KeepStaticParameter-request)))
  "Returns string type for a service object of type 'KeepStaticParameter-request"
  "interface/KeepStaticParameterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KeepStaticParameter-request>)))
  "Returns md5sum for a message object of type '<KeepStaticParameter-request>"
  "2bf5219bbb63705278c4859ab89c4529")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KeepStaticParameter-request)))
  "Returns md5sum for a message object of type 'KeepStaticParameter-request"
  "2bf5219bbb63705278c4859ab89c4529")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KeepStaticParameter-request>)))
  "Returns full string definition for message of type '<KeepStaticParameter-request>"
  (cl:format cl:nil "float64 position_neck_head~%float64 position_baselink_neck~%float64 velocity_left_fw~%float64 velocity_right_fw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KeepStaticParameter-request)))
  "Returns full string definition for message of type 'KeepStaticParameter-request"
  (cl:format cl:nil "float64 position_neck_head~%float64 position_baselink_neck~%float64 velocity_left_fw~%float64 velocity_right_fw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KeepStaticParameter-request>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KeepStaticParameter-request>))
  "Converts a ROS message object to a list"
  (cl:list 'KeepStaticParameter-request
    (cl:cons ':position_neck_head (position_neck_head msg))
    (cl:cons ':position_baselink_neck (position_baselink_neck msg))
    (cl:cons ':velocity_left_fw (velocity_left_fw msg))
    (cl:cons ':velocity_right_fw (velocity_right_fw msg))
))
;//! \htmlinclude KeepStaticParameter-response.msg.html

(cl:defclass <KeepStaticParameter-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass KeepStaticParameter-response (<KeepStaticParameter-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KeepStaticParameter-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KeepStaticParameter-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interface-srv:<KeepStaticParameter-response> is deprecated: use interface-srv:KeepStaticParameter-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KeepStaticParameter-response>) ostream)
  "Serializes a message object of type '<KeepStaticParameter-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KeepStaticParameter-response>) istream)
  "Deserializes a message object of type '<KeepStaticParameter-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KeepStaticParameter-response>)))
  "Returns string type for a service object of type '<KeepStaticParameter-response>"
  "interface/KeepStaticParameterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KeepStaticParameter-response)))
  "Returns string type for a service object of type 'KeepStaticParameter-response"
  "interface/KeepStaticParameterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KeepStaticParameter-response>)))
  "Returns md5sum for a message object of type '<KeepStaticParameter-response>"
  "2bf5219bbb63705278c4859ab89c4529")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KeepStaticParameter-response)))
  "Returns md5sum for a message object of type 'KeepStaticParameter-response"
  "2bf5219bbb63705278c4859ab89c4529")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KeepStaticParameter-response>)))
  "Returns full string definition for message of type '<KeepStaticParameter-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KeepStaticParameter-response)))
  "Returns full string definition for message of type 'KeepStaticParameter-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KeepStaticParameter-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KeepStaticParameter-response>))
  "Converts a ROS message object to a list"
  (cl:list 'KeepStaticParameter-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'KeepStaticParameter)))
  'KeepStaticParameter-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'KeepStaticParameter)))
  'KeepStaticParameter-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KeepStaticParameter)))
  "Returns string type for a service object of type '<KeepStaticParameter>"
  "interface/KeepStaticParameter")