(in-package :oc)

(defmethod initialize-instance :after ((object gc-make-segment2d) &rest initargs
				       &key P1 P2 V Line U1 U2 Point ULast &allow-other-keys)
  (let ((pointer
	 (cond ((and Line P1 P2)
		(_wrap_new_GC_MakeSegment2d__SWIG_4 (ff-pointer Line) (ptr P1) (ptr P2)))
	       ((and Line Point ULast)
		(_wrap_new_GC_MakeSegment2d__SWIG_3 (ff-pointer Line) (ptr Point) (coerce ULast 'double-float)))
	       ((and Line U1 U2)
		(_wrap_new_GC_MakeSegment2d__SWIG_2 (ff-pointer Line) (coerce U1 'double-float) (coerce U2 'double-float)))
	       ((and P1 V P2)
		(_wrap_new_GC_MakeSegment2d__SWIG_1 (ptr P1) (ptr V) (ptr P2)))
	       ((and P1 P2)
		(_wrap_new_GC_MakeSegment2d__SWIG_0 (ptr P1) (ptr P2)))
	       (t (error "Invalid arguments to constructor ~S" initargs)))))
    (setf (ff-pointer object) pointer)
    (oc:finalize object)
    (values)))

(defmethod value ((self gc-make-segment2d))
  (let ((trimmed-curve (allocate-instance (find-class 'geom2d-trimmed-curve))))
    (setf (ff-pointer trimmed-curve) (_wrap_Geom2d_Geometry_Copy
				      (_wrap_GC_MakeSegment2d_Value (ff-pointer self))))
    (oc:finalize trimmed-curve)
    trimmed-curve))
