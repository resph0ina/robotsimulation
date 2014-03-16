; Auto-generated. Do not edit!


(cl:in-package interface-msg)


;//! \htmlinclude Value.msg.html

(cl:defclass <Value> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0))
)

(cl:defclass Value (<Value>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Value>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Value)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interface-msg:<Value> is deprecated: use interface-msg:Value instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <Value>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interface-msg:value-val is deprecated.  Use interface-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Value>) ostream)
  "Serializes a message object of type '<Value>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Value>) istream)
  "Deserializes a message object of type '<Value>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Value>)))
  "Returns string type for a message object of type '<Value>"
  "interface/Value")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Value)))
  "Returns string type for a message object of type 'Value"
  "interface/Value")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Value>)))
  "Returns md5sum for a message object of type '<Value>"
  "1b1594d2b74931ef8fe7be8e2d594455")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Value)))
  "Returns md5sum for a message object of type 'Value"
  "1b1594d2b74931ef8fe7be8e2d594455")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Value>)))
  "Returns full string definition for message of type '<Value>"
  (cl:format cl:nil "float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Value)))
  "Returns full string definition for message of type 'Value"
  (cl:format cl:nil "float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Value>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Value>))
  "Converts a ROS message object to a list"
  (cl:list 'Value
    (cl:cons ':value (value msg))
))
