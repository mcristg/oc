(in-package :oc)

(defmethod initialize-instance :after ((instance ais-shape)
				       &rest initargs
				       &key topods-shape &allow-other-keys)
  (let ((ff-pointer
	 (cond (topods-shape (_wrap_new_AIS_Shape (ff-pointer topods-shape)))
	       (t (error "Invalid initargs to constructor: ~S" initargs)))))
    (setf (ff-pointer instance) ff-pointer)
    (oc:finalize instance)
    (values)))

