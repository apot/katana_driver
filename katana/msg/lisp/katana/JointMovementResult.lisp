; Auto-generated. Do not edit!


(in-package katana-msg)


;//! \htmlinclude JointMovementResult.msg.html

(defclass <JointMovementResult> (ros-message)
  ((result
    :reader result-val
    :initarg :result
    :type string
    :initform ""))
)
(defmethod serialize ((msg <JointMovementResult>) ostream)
  "Serializes a message object of type '<JointMovementResult>"
  (let ((__ros_str_len (length (slot-value msg 'result))))
    (write-byte (ldb (byte 8 0) __ros_str_len) ostream)
    (write-byte (ldb (byte 8 8) __ros_str_len) ostream)
    (write-byte (ldb (byte 8 16) __ros_str_len) ostream)
    (write-byte (ldb (byte 8 24) __ros_str_len) ostream))
  (map nil #'(lambda (c) (write-byte (char-code c) ostream)) (slot-value msg 'result))
)
(defmethod deserialize ((msg <JointMovementResult>) istream)
  "Deserializes a message object of type '<JointMovementResult>"
  (let ((__ros_str_len 0))
    (setf (ldb (byte 8 0) __ros_str_len) (read-byte istream))
    (setf (ldb (byte 8 8) __ros_str_len) (read-byte istream))
    (setf (ldb (byte 8 16) __ros_str_len) (read-byte istream))
    (setf (ldb (byte 8 24) __ros_str_len) (read-byte istream))
    (setf (slot-value msg 'result) (make-string __ros_str_len))
    (dotimes (__ros_str_idx __ros_str_len msg)
      (setf (char (slot-value msg 'result) __ros_str_idx) (code-char (read-byte istream)))))
  msg
)
(defmethod ros-datatype ((msg (eql '<JointMovementResult>)))
  "Returns string type for a message object of type '<JointMovementResult>"
  "katana/JointMovementResult")
(defmethod md5sum ((type (eql '<JointMovementResult>)))
  "Returns md5sum for a message object of type '<JointMovementResult>"
  "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(defmethod message-definition ((type (eql '<JointMovementResult>)))
  "Returns full string definition for message of type '<JointMovementResult>"
  (format nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%string result~%~%~%"))
(defmethod serialization-length ((msg <JointMovementResult>))
  (+ 0
     4 (length (slot-value msg 'result))
))
(defmethod ros-message-to-list ((msg <JointMovementResult>))
  "Converts a ROS message object to a list"
  (list '<JointMovementResult>
    (cons ':result (result-val msg))
))
