;; Auto-generated. Do not edit!


(when (boundp 'rt_exam::rotate)
  (if (not (find-package "RT_EXAM"))
    (make-package "RT_EXAM"))
  (shadow 'rotate (find-package "RT_EXAM")))
(unless (find-package "RT_EXAM::ROTATE")
  (make-package "RT_EXAM::ROTATE"))

(in-package "ROS")
;;//! \htmlinclude rotate.msg.html


(defclass rt_exam::rotate
  :super ros::object
  :slots (_speed ))

(defmethod rt_exam::rotate
  (:init
   (&key
    ((:speed __speed) 0)
    )
   (send-super :init)
   (setq _speed (round __speed))
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; int64 _speed
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _speed
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _speed (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _speed) (= (length (_speed . bv)) 2)) ;; bignum
              (write-long (ash (elt (_speed . bv) 0) 0) s)
              (write-long (ash (elt (_speed . bv) 1) -1) s))
             ((and (class _speed) (= (length (_speed . bv)) 1)) ;; big1
              (write-long (elt (_speed . bv) 0) s)
              (write-long (if (>= _speed 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _speed s)(write-long (if (>= _speed 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _speed
#+(or :alpha :irix6 :x86_64)
      (setf _speed (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _speed (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get rt_exam::rotate :md5sum-) "4734ede392d478601ffe9898680ff4b5")
(setf (get rt_exam::rotate :datatype-) "rt_exam/rotate")
(setf (get rt_exam::rotate :definition-)
      "int64 speed

")



(provide :rt_exam/rotate "4734ede392d478601ffe9898680ff4b5")


