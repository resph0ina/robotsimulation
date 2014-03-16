; Auto-generated. Do not edit!


(cl:in-package interface-srv)


;//! \htmlinclude converter-request.msg.html

(cl:defclass <converter-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0)
   (t
    :reader t
    :initarg :t
    :type cl:integer
    :initform 0))
)

(cl:defclass converter-request (<converter-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <converter-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'converter-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interface-srv:<converter-request> is deprecated: use interface-srv:converter-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <converter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interface-srv:a-val is deprecated.  Use interface-srv:a instead.")
  (a m))

(cl:ensure-generic-function 't-val :lambda-list '(m))
(cl:defmethod t-val ((m <converter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interface-srv:t-val is deprecated.  Use interface-srv:t instead.")
  (t m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <converter-request>) ostream)
  "Serializes a message object of type '<converter-request>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 't)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <converter-request>) istream)
  "Deserializes a message object of type '<converter-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 't) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<converter-request>)))
  "Returns string type for a service object of type '<converter-request>"
  "interface/converterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'converter-request)))
  "Returns string type for a service object of type 'converter-request"
  "interface/converterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<converter-request>)))
  "Returns md5sum for a message object of type '<converter-request>"
  "a6490c0f75dcbe3a4d6e3d84e1d2f29a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'converter-request)))
  "Returns md5sum for a message object of type 'converter-request"
  "a6490c0f75dcbe3a4d6e3d84e1d2f29a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<converter-request>)))
  "Returns full string definition for message of type '<converter-request>"
  (cl:format cl:nil "int64 a~%int64 t~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'converter-request)))
  "Returns full string definition for message of type 'converter-request"
  (cl:format cl:nil "int64 a~%int64 t~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <converter-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <converter-request>))
  "Converts a ROS message object to a list"
  (cl:list 'converter-request
    (cl:cons ':a (a msg))
    (cl:cons ':t (t msg))
))
;//! \htmlinclude converter-response.msg.html

(cl:defclass <converter-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass converter-response (<converter-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <converter-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'converter-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interface-srv:<converter-response> is deprecated: use interface-srv:converter-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <converter-response>) ostream)
  "Serializes a message object of type '<converter-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <converter-response>) istream)
  "Deserializes a message object of type '<converter-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<converter-response>)))
  "Returns string type for a service object of type '<converter-response>"
  "interface/converterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'converter-response)))
  "Returns string type for a service object of type 'converter-response"
  "interface/converterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<converter-response>)))
  "Returns md5sum for a message object of type '<converter-response>"
  "a6490c0f75dcbe3a4d6e3d84e1d2f29a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'converter-response)))
  "Returns md5sum for a message object of type 'converter-response"
  "a6490c0f75dcbe3a4d6e3d84e1d2f29a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<converter-response>)))
  "Returns full string definition for message of type '<converter-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'converter-response)))
  "Returns full string definition for message of type 'converter-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <converter-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <converter-response>))
  "Converts a ROS message object to a list"
  (cl:list 'converter-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'converter)))
  'converter-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'converter)))
  'converter-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'converter)))
  "Returns string type for a service object of type '<converter>"
  "interface/converter")