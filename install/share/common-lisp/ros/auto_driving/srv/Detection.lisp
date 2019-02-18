; Auto-generated. Do not edit!


(cl:in-package auto_driving-srv)


;//! \htmlinclude Detection-request.msg.html

(cl:defclass <Detection-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:integer
    :initform 0))
)

(cl:defclass Detection-request (<Detection-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Detection-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Detection-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_driving-srv:<Detection-request> is deprecated: use auto_driving-srv:Detection-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <Detection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_driving-srv:a-val is deprecated.  Use auto_driving-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <Detection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_driving-srv:b-val is deprecated.  Use auto_driving-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Detection-request>) ostream)
  "Serializes a message object of type '<Detection-request>"
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
  (cl:let* ((signed (cl:slot-value msg 'b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Detection-request>) istream)
  "Deserializes a message object of type '<Detection-request>"
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
      (cl:setf (cl:slot-value msg 'b) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Detection-request>)))
  "Returns string type for a service object of type '<Detection-request>"
  "auto_driving/DetectionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Detection-request)))
  "Returns string type for a service object of type 'Detection-request"
  "auto_driving/DetectionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Detection-request>)))
  "Returns md5sum for a message object of type '<Detection-request>"
  "0ed8b4b501f348884acc82d51e666664")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Detection-request)))
  "Returns md5sum for a message object of type 'Detection-request"
  "0ed8b4b501f348884acc82d51e666664")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Detection-request>)))
  "Returns full string definition for message of type '<Detection-request>"
  (cl:format cl:nil "int64 a~%int64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Detection-request)))
  "Returns full string definition for message of type 'Detection-request"
  (cl:format cl:nil "int64 a~%int64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Detection-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Detection-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Detection-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude Detection-response.msg.html

(cl:defclass <Detection-response> (roslisp-msg-protocol:ros-message)
  ((max
    :reader max
    :initarg :max
    :type cl:integer
    :initform 0))
)

(cl:defclass Detection-response (<Detection-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Detection-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Detection-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_driving-srv:<Detection-response> is deprecated: use auto_driving-srv:Detection-response instead.")))

(cl:ensure-generic-function 'max-val :lambda-list '(m))
(cl:defmethod max-val ((m <Detection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_driving-srv:max-val is deprecated.  Use auto_driving-srv:max instead.")
  (max m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Detection-response>) ostream)
  "Serializes a message object of type '<Detection-response>"
  (cl:let* ((signed (cl:slot-value msg 'max)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Detection-response>) istream)
  "Deserializes a message object of type '<Detection-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'max) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Detection-response>)))
  "Returns string type for a service object of type '<Detection-response>"
  "auto_driving/DetectionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Detection-response)))
  "Returns string type for a service object of type 'Detection-response"
  "auto_driving/DetectionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Detection-response>)))
  "Returns md5sum for a message object of type '<Detection-response>"
  "0ed8b4b501f348884acc82d51e666664")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Detection-response)))
  "Returns md5sum for a message object of type 'Detection-response"
  "0ed8b4b501f348884acc82d51e666664")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Detection-response>)))
  "Returns full string definition for message of type '<Detection-response>"
  (cl:format cl:nil "int64 max~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Detection-response)))
  "Returns full string definition for message of type 'Detection-response"
  (cl:format cl:nil "int64 max~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Detection-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Detection-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Detection-response
    (cl:cons ':max (max msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Detection)))
  'Detection-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Detection)))
  'Detection-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Detection)))
  "Returns string type for a service object of type '<Detection>"
  "auto_driving/Detection")