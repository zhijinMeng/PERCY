;; Auto-generated. Do not edit!


(when (boundp 'attention_manager_msgs::SetPolicy)
  (if (not (find-package "ATTENTION_MANAGER_MSGS"))
    (make-package "ATTENTION_MANAGER_MSGS"))
  (shadow 'SetPolicy (find-package "ATTENTION_MANAGER_MSGS")))
(unless (find-package "ATTENTION_MANAGER_MSGS::SETPOLICY")
  (make-package "ATTENTION_MANAGER_MSGS::SETPOLICY"))
(unless (find-package "ATTENTION_MANAGER_MSGS::SETPOLICYREQUEST")
  (make-package "ATTENTION_MANAGER_MSGS::SETPOLICYREQUEST"))
(unless (find-package "ATTENTION_MANAGER_MSGS::SETPOLICYRESPONSE")
  (make-package "ATTENTION_MANAGER_MSGS::SETPOLICYRESPONSE"))

(in-package "ROS")





(intern "*DISABLED*" (find-package "ATTENTION_MANAGER_MSGS::SETPOLICYREQUEST"))
(shadow '*DISABLED* (find-package "ATTENTION_MANAGER_MSGS::SETPOLICYREQUEST"))
(defconstant attention_manager_msgs::SetPolicyRequest::*DISABLED* 0)
(intern "*RANDOM*" (find-package "ATTENTION_MANAGER_MSGS::SETPOLICYREQUEST"))
(shadow '*RANDOM* (find-package "ATTENTION_MANAGER_MSGS::SETPOLICYREQUEST"))
(defconstant attention_manager_msgs::SetPolicyRequest::*RANDOM* 1)
(intern "*IDLE_SOCIAL*" (find-package "ATTENTION_MANAGER_MSGS::SETPOLICYREQUEST"))
(shadow '*IDLE_SOCIAL* (find-package "ATTENTION_MANAGER_MSGS::SETPOLICYREQUEST"))
(defconstant attention_manager_msgs::SetPolicyRequest::*IDLE_SOCIAL* 2)
(intern "*FOCUSED_SOCIAL*" (find-package "ATTENTION_MANAGER_MSGS::SETPOLICYREQUEST"))
(shadow '*FOCUSED_SOCIAL* (find-package "ATTENTION_MANAGER_MSGS::SETPOLICYREQUEST"))
(defconstant attention_manager_msgs::SetPolicyRequest::*FOCUSED_SOCIAL* 3)
(intern "*STATUS*" (find-package "ATTENTION_MANAGER_MSGS::SETPOLICYREQUEST"))
(shadow '*STATUS* (find-package "ATTENTION_MANAGER_MSGS::SETPOLICYREQUEST"))
(defconstant attention_manager_msgs::SetPolicyRequest::*STATUS* "status")

(defun attention_manager_msgs::SetPolicyRequest-to-symbol (const)
  (cond
        ((= const 0) 'attention_manager_msgs::SetPolicyRequest::*DISABLED*)
        ((= const 1) 'attention_manager_msgs::SetPolicyRequest::*RANDOM*)
        ((= const 2) 'attention_manager_msgs::SetPolicyRequest::*IDLE_SOCIAL*)
        ((= const 3) 'attention_manager_msgs::SetPolicyRequest::*FOCUSED_SOCIAL*)
        (t nil)))

(defclass attention_manager_msgs::SetPolicyRequest
  :super ros::object
  :slots (_policy _frame ))

(defmethod attention_manager_msgs::SetPolicyRequest
  (:init
   (&key
    ((:policy __policy) 0)
    ((:frame __frame) "")
    )
   (send-super :init)
   (setq _policy (round __policy))
   (setq _frame (string __frame))
   self)
  (:policy
   (&optional __policy)
   (if __policy (setq _policy __policy)) _policy)
  (:frame
   (&optional __frame)
   (if __frame (setq _frame __frame)) _frame)
  (:serialization-length
   ()
   (+
    ;; int8 _policy
    1
    ;; string _frame
    4 (length _frame)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _policy
       (write-byte _policy s)
     ;; string _frame
       (write-long (length _frame) s) (princ _frame s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _policy
     (setq _policy (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _policy 127) (setq _policy (- _policy 256)))
   ;; string _frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass attention_manager_msgs::SetPolicyResponse
  :super ros::object
  :slots (_success _error_msg ))

(defmethod attention_manager_msgs::SetPolicyResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:error_msg __error_msg) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _error_msg (string __error_msg))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:error_msg
   (&optional __error_msg)
   (if __error_msg (setq _error_msg __error_msg)) _error_msg)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _error_msg
    4 (length _error_msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _error_msg
       (write-long (length _error_msg) s) (princ _error_msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _error_msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass attention_manager_msgs::SetPolicy
  :super ros::object
  :slots ())

(setf (get attention_manager_msgs::SetPolicy :md5sum-) "0f86d129016b02b119d57fd98d1af8fc")
(setf (get attention_manager_msgs::SetPolicy :datatype-) "attention_manager_msgs/SetPolicy")
(setf (get attention_manager_msgs::SetPolicy :request) attention_manager_msgs::SetPolicyRequest)
(setf (get attention_manager_msgs::SetPolicy :response) attention_manager_msgs::SetPolicyResponse)

(defmethod attention_manager_msgs::SetPolicyRequest
  (:response () (instance attention_manager_msgs::SetPolicyResponse :init)))

(setf (get attention_manager_msgs::SetPolicyRequest :md5sum-) "0f86d129016b02b119d57fd98d1af8fc")
(setf (get attention_manager_msgs::SetPolicyRequest :datatype-) "attention_manager_msgs/SetPolicyRequest")
(setf (get attention_manager_msgs::SetPolicyRequest :definition-)
      "# the attention manager will not control the robot's focus of attention
int8 DISABLED=0

# randomly look around, with short fixations
int8 RANDOM=1

# the robot will look around for faces, with fixations on detected faces
int8 IDLE_SOCIAL=2

# focus the robot's attention on a specific frame (typically, a person),
# provided as the `frame` parameter. If not `frame` parameter is set, the
# attention manager will focus on the last tracked frame (if any)
int8 FOCUSED_SOCIAL=3

string STATUS=status

int8 policy

# only used for policies that expect a specific focus on attention
string frame

---
# Result:

# true if the action was successfully performed
bool success

# if success = False, error_msg might contain additional information about the
# failure.
string error_msg


")

(setf (get attention_manager_msgs::SetPolicyResponse :md5sum-) "0f86d129016b02b119d57fd98d1af8fc")
(setf (get attention_manager_msgs::SetPolicyResponse :datatype-) "attention_manager_msgs/SetPolicyResponse")
(setf (get attention_manager_msgs::SetPolicyResponse :definition-)
      "# the attention manager will not control the robot's focus of attention
int8 DISABLED=0

# randomly look around, with short fixations
int8 RANDOM=1

# the robot will look around for faces, with fixations on detected faces
int8 IDLE_SOCIAL=2

# focus the robot's attention on a specific frame (typically, a person),
# provided as the `frame` parameter. If not `frame` parameter is set, the
# attention manager will focus on the last tracked frame (if any)
int8 FOCUSED_SOCIAL=3

string STATUS=status

int8 policy

# only used for policies that expect a specific focus on attention
string frame

---
# Result:

# true if the action was successfully performed
bool success

# if success = False, error_msg might contain additional information about the
# failure.
string error_msg


")



(provide :attention_manager_msgs/SetPolicy "0f86d129016b02b119d57fd98d1af8fc")


