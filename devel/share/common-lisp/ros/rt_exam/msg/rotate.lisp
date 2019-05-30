; Auto-generated. Do not edit!


(cl:in-package rt_exam-msg)


;//! \htmlinclude rotate.msg.html

(cl:defclass <rotate> (roslisp-msg-protocol:ros-message)
  ((speed
    :reader speed
    :initarg :speed
    :type cl:integer
    :initform 0))
)

(cl:defclass rotate (<rotate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rotate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rotate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rt_exam-msg:<rotate> is deprecated: use rt_exam-msg:rotate instead.")))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <rotate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_exam-msg:speed-val is deprecated.  Use rt_exam-msg:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rotate>) ostream)
  "Serializes a message object of type '<rotate>"
  (cl:let* ((signed (cl:slot-value msg 'speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rotate>) istream)
  "Deserializes a message object of type '<rotate>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rotate>)))
  "Returns string type for a message object of type '<rotate>"
  "rt_exam/rotate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rotate)))
  "Returns string type for a message object of type 'rotate"
  "rt_exam/rotate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rotate>)))
  "Returns md5sum for a message object of type '<rotate>"
  "4734ede392d478601ffe9898680ff4b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rotate)))
  "Returns md5sum for a message object of type 'rotate"
  "4734ede392d478601ffe9898680ff4b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rotate>)))
  "Returns full string definition for message of type '<rotate>"
  (cl:format cl:nil "int64 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rotate)))
  "Returns full string definition for message of type 'rotate"
  (cl:format cl:nil "int64 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rotate>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rotate>))
  "Converts a ROS message object to a list"
  (cl:list 'rotate
    (cl:cons ':speed (speed msg))
))
