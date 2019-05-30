; Auto-generated. Do not edit!


(cl:in-package rt_exam-srv)


;//! \htmlinclude move-request.msg.html

(cl:defclass <move-request> (roslisp-msg-protocol:ros-message)
  ((seconds
    :reader seconds
    :initarg :seconds
    :type cl:integer
    :initform 0)
   (radian
    :reader radian
    :initarg :radian
    :type cl:integer
    :initform 0))
)

(cl:defclass move-request (<move-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <move-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'move-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rt_exam-srv:<move-request> is deprecated: use rt_exam-srv:move-request instead.")))

(cl:ensure-generic-function 'seconds-val :lambda-list '(m))
(cl:defmethod seconds-val ((m <move-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_exam-srv:seconds-val is deprecated.  Use rt_exam-srv:seconds instead.")
  (seconds m))

(cl:ensure-generic-function 'radian-val :lambda-list '(m))
(cl:defmethod radian-val ((m <move-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_exam-srv:radian-val is deprecated.  Use rt_exam-srv:radian instead.")
  (radian m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <move-request>) ostream)
  "Serializes a message object of type '<move-request>"
  (cl:let* ((signed (cl:slot-value msg 'seconds)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'radian)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <move-request>) istream)
  "Deserializes a message object of type '<move-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'seconds) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'radian) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<move-request>)))
  "Returns string type for a service object of type '<move-request>"
  "rt_exam/moveRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'move-request)))
  "Returns string type for a service object of type 'move-request"
  "rt_exam/moveRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<move-request>)))
  "Returns md5sum for a message object of type '<move-request>"
  "f2967bca72e0c3d566283af10d69c6aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'move-request)))
  "Returns md5sum for a message object of type 'move-request"
  "f2967bca72e0c3d566283af10d69c6aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<move-request>)))
  "Returns full string definition for message of type '<move-request>"
  (cl:format cl:nil "int64 seconds~%int64 radian~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'move-request)))
  "Returns full string definition for message of type 'move-request"
  (cl:format cl:nil "int64 seconds~%int64 radian~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <move-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <move-request>))
  "Converts a ROS message object to a list"
  (cl:list 'move-request
    (cl:cons ':seconds (seconds msg))
    (cl:cons ':radian (radian msg))
))
;//! \htmlinclude move-response.msg.html

(cl:defclass <move-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass move-response (<move-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <move-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'move-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rt_exam-srv:<move-response> is deprecated: use rt_exam-srv:move-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <move-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_exam-srv:sum-val is deprecated.  Use rt_exam-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <move-response>) ostream)
  "Serializes a message object of type '<move-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <move-response>) istream)
  "Deserializes a message object of type '<move-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<move-response>)))
  "Returns string type for a service object of type '<move-response>"
  "rt_exam/moveResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'move-response)))
  "Returns string type for a service object of type 'move-response"
  "rt_exam/moveResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<move-response>)))
  "Returns md5sum for a message object of type '<move-response>"
  "f2967bca72e0c3d566283af10d69c6aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'move-response)))
  "Returns md5sum for a message object of type 'move-response"
  "f2967bca72e0c3d566283af10d69c6aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<move-response>)))
  "Returns full string definition for message of type '<move-response>"
  (cl:format cl:nil "int64 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'move-response)))
  "Returns full string definition for message of type 'move-response"
  (cl:format cl:nil "int64 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <move-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <move-response>))
  "Converts a ROS message object to a list"
  (cl:list 'move-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'move)))
  'move-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'move)))
  'move-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'move)))
  "Returns string type for a service object of type '<move>"
  "rt_exam/move")