;; Auto-generated. Do not edit!


(when (boundp 'rt_exam::move)
  (if (not (find-package "RT_EXAM"))
    (make-package "RT_EXAM"))
  (shadow 'move (find-package "RT_EXAM")))
(unless (find-package "RT_EXAM::MOVE")
  (make-package "RT_EXAM::MOVE"))
(unless (find-package "RT_EXAM::MOVEREQUEST")
  (make-package "RT_EXAM::MOVEREQUEST"))
(unless (find-package "RT_EXAM::MOVERESPONSE")
  (make-package "RT_EXAM::MOVERESPONSE"))

(in-package "ROS")





(defclass rt_exam::moveRequest
  :super ros::object
  :slots (_seconds _radian ))

(defmethod rt_exam::moveRequest
  (:init
   (&key
    ((:seconds __seconds) 0)
    ((:radian __radian) 0)
    )
   (send-super :init)
   (setq _seconds (round __seconds))
   (setq _radian (round __radian))
   self)
  (:seconds
   (&optional __seconds)
   (if __seconds (setq _seconds __seconds)) _seconds)
  (:radian
   (&optional __radian)
   (if __radian (setq _radian __radian)) _radian)
  (:serialization-length
   ()
   (+
    ;; int64 _seconds
    8
    ;; int64 _radian
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _seconds
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _seconds (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _seconds) (= (length (_seconds . bv)) 2)) ;; bignum
              (write-long (ash (elt (_seconds . bv) 0) 0) s)
              (write-long (ash (elt (_seconds . bv) 1) -1) s))
             ((and (class _seconds) (= (length (_seconds . bv)) 1)) ;; big1
              (write-long (elt (_seconds . bv) 0) s)
              (write-long (if (>= _seconds 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _seconds s)(write-long (if (>= _seconds 0) 0 #xffffffff) s)))
     ;; int64 _radian
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _radian (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _radian) (= (length (_radian . bv)) 2)) ;; bignum
              (write-long (ash (elt (_radian . bv) 0) 0) s)
              (write-long (ash (elt (_radian . bv) 1) -1) s))
             ((and (class _radian) (= (length (_radian . bv)) 1)) ;; big1
              (write-long (elt (_radian . bv) 0) s)
              (write-long (if (>= _radian 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _radian s)(write-long (if (>= _radian 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _seconds
#+(or :alpha :irix6 :x86_64)
      (setf _seconds (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _seconds (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _radian
#+(or :alpha :irix6 :x86_64)
      (setf _radian (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _radian (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass rt_exam::moveResponse
  :super ros::object
  :slots (_sum ))

(defmethod rt_exam::moveResponse
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int64 _sum
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _sum
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _sum (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _sum) (= (length (_sum . bv)) 2)) ;; bignum
              (write-long (ash (elt (_sum . bv) 0) 0) s)
              (write-long (ash (elt (_sum . bv) 1) -1) s))
             ((and (class _sum) (= (length (_sum . bv)) 1)) ;; big1
              (write-long (elt (_sum . bv) 0) s)
              (write-long (if (>= _sum 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _sum s)(write-long (if (>= _sum 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _sum
#+(or :alpha :irix6 :x86_64)
      (setf _sum (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _sum (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass rt_exam::move
  :super ros::object
  :slots ())

(setf (get rt_exam::move :md5sum-) "f2967bca72e0c3d566283af10d69c6aa")
(setf (get rt_exam::move :datatype-) "rt_exam/move")
(setf (get rt_exam::move :request) rt_exam::moveRequest)
(setf (get rt_exam::move :response) rt_exam::moveResponse)

(defmethod rt_exam::moveRequest
  (:response () (instance rt_exam::moveResponse :init)))

(setf (get rt_exam::moveRequest :md5sum-) "f2967bca72e0c3d566283af10d69c6aa")
(setf (get rt_exam::moveRequest :datatype-) "rt_exam/moveRequest")
(setf (get rt_exam::moveRequest :definition-)
      "int64 seconds
int64 radian
---
int64 sum

")

(setf (get rt_exam::moveResponse :md5sum-) "f2967bca72e0c3d566283af10d69c6aa")
(setf (get rt_exam::moveResponse :datatype-) "rt_exam/moveResponse")
(setf (get rt_exam::moveResponse :definition-)
      "int64 seconds
int64 radian
---
int64 sum

")



(provide :rt_exam/move "f2967bca72e0c3d566283af10d69c6aa")


