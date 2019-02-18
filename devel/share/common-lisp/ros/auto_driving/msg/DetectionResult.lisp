; Auto-generated. Do not edit!


(cl:in-package auto_driving-msg)


;//! \htmlinclude DetectionResult.msg.html

(cl:defclass <DetectionResult> (roslisp-msg-protocol:ros-message)
  ((robot_name
    :reader robot_name
    :initarg :robot_name
    :type cl:string
    :initform "")
   (country
    :reader country
    :initarg :country
    :type cl:string
    :initform "")
   (product_id
    :reader product_id
    :initarg :product_id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DetectionResult (<DetectionResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectionResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectionResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_driving-msg:<DetectionResult> is deprecated: use auto_driving-msg:DetectionResult instead.")))

(cl:ensure-generic-function 'robot_name-val :lambda-list '(m))
(cl:defmethod robot_name-val ((m <DetectionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_driving-msg:robot_name-val is deprecated.  Use auto_driving-msg:robot_name instead.")
  (robot_name m))

(cl:ensure-generic-function 'country-val :lambda-list '(m))
(cl:defmethod country-val ((m <DetectionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_driving-msg:country-val is deprecated.  Use auto_driving-msg:country instead.")
  (country m))

(cl:ensure-generic-function 'product_id-val :lambda-list '(m))
(cl:defmethod product_id-val ((m <DetectionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_driving-msg:product_id-val is deprecated.  Use auto_driving-msg:product_id instead.")
  (product_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectionResult>) ostream)
  "Serializes a message object of type '<DetectionResult>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'country))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'country))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'product_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectionResult>) istream)
  "Deserializes a message object of type '<DetectionResult>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'country) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'country) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'product_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectionResult>)))
  "Returns string type for a message object of type '<DetectionResult>"
  "auto_driving/DetectionResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectionResult)))
  "Returns string type for a message object of type 'DetectionResult"
  "auto_driving/DetectionResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectionResult>)))
  "Returns md5sum for a message object of type '<DetectionResult>"
  "77a2470f91f15b079bebc4e6c7b62731")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectionResult)))
  "Returns md5sum for a message object of type 'DetectionResult"
  "77a2470f91f15b079bebc4e6c7b62731")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectionResult>)))
  "Returns full string definition for message of type '<DetectionResult>"
  (cl:format cl:nil "string robot_name~%string country~%uint8 product_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectionResult)))
  "Returns full string definition for message of type 'DetectionResult"
  (cl:format cl:nil "string robot_name~%string country~%uint8 product_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectionResult>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'robot_name))
     4 (cl:length (cl:slot-value msg 'country))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectionResult>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectionResult
    (cl:cons ':robot_name (robot_name msg))
    (cl:cons ':country (country msg))
    (cl:cons ':product_id (product_id msg))
))
