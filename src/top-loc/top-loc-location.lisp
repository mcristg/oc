(in-package :oc)

(defmethod initialize-instance :after ((obj top-loc-location) &rest initargs
				       &key trsf &allow-other-keys)
  (declare (ignore initargs))
  (let ((pointer
         (if trsf
            (_wrap_new_TopLoc_Location__SWIG_1 (ptr trsf))
            (_wrap_new_TopLoc_Location__SWIG_0))))
    (setf (ff-pointer obj) pointer)
    (oc:finalize obj)
    (values)))

(defmethod is-identity ((obj top-loc-location))
 (_wrap_TopLoc_Location_IsIdentity (ff-pointer obj)))

(defmethod transformation ((obj top-loc-location))
 (let* ((pointer (_wrap_TopLoc_Location_Transformation (ff-pointer obj)))
	 (struct (gp::make-trsf :ptr pointer)))
     struct))

