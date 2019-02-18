;; Auto-generated. Do not edit!


(when (boundp 'auto_driving::Detection)
  (if (not (find-package "AUTO_DRIVING"))
    (make-package "AUTO_DRIVING"))
  (shadow 'Detection (find-package "AUTO_DRIVING")))
(unless (find-package "AUTO_DRIVING::DETECTION")
  (make-package "AUTO_DRIVING::DETECTION"))
(unless (find-package "AUTO_DRIVING::DETECTIONREQUEST")
  (make-package "AUTO_DRIVING::DETECTIONREQUEST"))
(unless (find-package "AUTO_DRIVING::DETECTIONRESPONSE")
  (make-package "AUTO_DRIVING::DETECTIONRESPONSE"))

(in-package "ROS")





(defclass auto_driving::DetectionRequest
  :super ros::object
  :slots (_a _b ))

(defmethod auto_driving::DetectionRequest
  (:init
   (&key
    ((:a __a) 0)
    ((:b __b) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   (setq _b (round __b))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; int64 _a
    8
    ;; int64 _b
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _a
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _a (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _a) (= (length (_a . bv)) 2)) ;; bignum
              (write-long (ash (elt (_a . bv) 0) 0) s)
              (write-long (ash (elt (_a . bv) 1) -1) s))
             ((and (class _a) (= (length (_a . bv)) 1)) ;; big1
              (write-long (elt (_a . bv) 0) s)
              (write-long (if (>= _a 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _a s)(write-long (if (>= _a 0) 0 #xffffffff) s)))
     ;; int64 _b
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _b (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _b) (= (length (_b . bv)) 2)) ;; bignum
              (write-long (ash (elt (_b . bv) 0) 0) s)
              (write-long (ash (elt (_b . bv) 1) -1) s))
             ((and (class _b) (= (length (_b . bv)) 1)) ;; big1
              (write-long (elt (_b . bv) 0) s)
              (write-long (if (>= _b 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _b s)(write-long (if (>= _b 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _a
#+(or :alpha :irix6 :x86_64)
      (setf _a (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _a (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _b
#+(or :alpha :irix6 :x86_64)
      (setf _b (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _b (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass auto_driving::DetectionResponse
  :super ros::object
  :slots (_max ))

(defmethod auto_driving::DetectionResponse
  (:init
   (&key
    ((:max __max) 0)
    )
   (send-super :init)
   (setq _max (round __max))
   self)
  (:max
   (&optional __max)
   (if __max (setq _max __max)) _max)
  (:serialization-length
   ()
   (+
    ;; int64 _max
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _max
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _max (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _max) (= (length (_max . bv)) 2)) ;; bignum
              (write-long (ash (elt (_max . bv) 0) 0) s)
              (write-long (ash (elt (_max . bv) 1) -1) s))
             ((and (class _max) (= (length (_max . bv)) 1)) ;; big1
              (write-long (elt (_max . bv) 0) s)
              (write-long (if (>= _max 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _max s)(write-long (if (>= _max 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _max
#+(or :alpha :irix6 :x86_64)
      (setf _max (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _max (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass auto_driving::Detection
  :super ros::object
  :slots ())

(setf (get auto_driving::Detection :md5sum-) "0ed8b4b501f348884acc82d51e666664")
(setf (get auto_driving::Detection :datatype-) "auto_driving/Detection")
(setf (get auto_driving::Detection :request) auto_driving::DetectionRequest)
(setf (get auto_driving::Detection :response) auto_driving::DetectionResponse)

(defmethod auto_driving::DetectionRequest
  (:response () (instance auto_driving::DetectionResponse :init)))

(setf (get auto_driving::DetectionRequest :md5sum-) "0ed8b4b501f348884acc82d51e666664")
(setf (get auto_driving::DetectionRequest :datatype-) "auto_driving/DetectionRequest")
(setf (get auto_driving::DetectionRequest :definition-)
      "int64 a
int64 b
---
int64 max

")

(setf (get auto_driving::DetectionResponse :md5sum-) "0ed8b4b501f348884acc82d51e666664")
(setf (get auto_driving::DetectionResponse :datatype-) "auto_driving/DetectionResponse")
(setf (get auto_driving::DetectionResponse :definition-)
      "int64 a
int64 b
---
int64 max

")



(provide :auto_driving/Detection "0ed8b4b501f348884acc82d51e666664")


