(in-package :oc)

(defmethod initialize-instance :after ((instance geom-adaptor-curve) &rest initargs
				       &key C UFirst ULast &allow-other-keys)
  (let ((ff-pointer
	 (cond ((and (typep C 'geom-curve)
		     (realp UFirst)
		     (realp ULast))
		(_wrap_new_GeomAdaptor_Curve__SWIG_2 (ff-pointer C) (coerce UFirst 'double-float)
						     (coerce ULast 'double-float)))

	       ((and (typep C 'geom-curve)
		     (null UFirst)
		     (null ULast))
		(_wrap_new_GeomAdaptor_Curve__SWIG_1 (ff-pointer C)))

	       ((null initargs) (_wrap_new_GeomAdaptor_Curve__SWIG_0))

	       (t (error "Invalid initargs to constructor: ~S" initargs)))))
    (setf (ff-pointer instance) ff-pointer)
    (sb-ext:finalize instance (lambda ()
				(_wrap_delete_GeomAdaptor_Curve ff-pointer)) :dont-save t)
    (values)))

(defmethod evaluate-curve ((curve geom-adaptor-curve) (U real))
  ;; opencascade returns a gp_Pnt
  ;; the swig wrapper, however, returns a pointer to a new gp_Pnt (via copy constructor)
  ;; this needs a finalizer.
  (let* ((pointer (_wrap_GeomAdaptor_Curve_Value (ff-pointer curve) (coerce U 'double-float)))
	 (struct (gp:make-pnt :ptr pointer)))
    #+SBCL
    (sb-ext:finalize struct (lambda () (_wrap_delete_gp_Pnt pointer)) :dont-save t)
    struct))
  
(defmethod first-derivative ((curve geom-adaptor-curve) (u number))
  (let ((p-p (foreign-alloc '(:struct gp::gp-pnt)))
	(p-v1 (foreign-alloc '(:struct gp::gp-vec))))
    (_wrap_GeomAdaptor_Curve_D1 (ff-pointer curve) (coerce u 'double-float) p-p p-v1)
    (let ((struct-p (gp:make-pnt :ptr p-p))
	  (struct-v1 (gp:make-vec :ptr p-v1)))
      (sb-ext:finalize struct-p (lambda () (foreign-free p-p)) :dont-save t)
      (sb-ext:finalize struct-v1 (lambda () (foreign-free p-v1)) :dont-save t)
      (values struct-v1 struct-p))))

(defmethod second-derivative ((curve geom-adaptor-curve) (u number))
  (let ((p-p (foreign-alloc '(:struct gp::gp-pnt)))
	(p-v1 (foreign-alloc '(:struct gp::gp-vec)))
	(p-v2 (foreign-alloc '(:struct gp::gp-vec))))
    (_wrap_GeomAdaptor_Curve_D2 (ff-pointer curve) (coerce u 'double-float) p-p p-v1 p-v2)
    (let* ((struct-p (gp:make-pnt :ptr p-p))
	   (struct-v1 (gp:make-vec :ptr p-v1))
	   (struct-v2 (gp::make-vec :ptr p-v2)))
      (sb-ext:finalize struct-p (lambda () (foreign-free p-p)) :dont-save t)
      (sb-ext:finalize struct-v1 (lambda () (foreign-free p-v1)) :dont-save t)
      (sb-ext:finalize struct-v2 (lambda () (foreign-free p-v2)) :dont-save t)
      (values struct-v2 struct-v1 struct-p))))

(defmethod third-derivative ((curve geom-adaptor-curve) (u number))
  (let ((p-p (foreign-alloc '(:struct gp::gp-pnt)))
	(p-v1 (foreign-alloc '(:struct gp::gp-vec)))
	(p-v2 (foreign-alloc '(:struct gp::gp-vec)))
	(p-v3 (foreign-alloc '(:struct gp::gp-vec))))
    (_wrap_GeomAdaptor_Curve_D3 (ff-pointer curve) (coerce u 'double-float) p-p p-v1 p-v2 p-v3)
    (let* ((struct-p (gp:make-pnt :ptr p-p))
	   (struct-v1 (gp:make-vec :ptr p-v1))
	   (struct-v2 (gp:make-vec :ptr p-v2))
	   (struct-v3 (gp:make-vec :ptr p-v3)))
      (sb-ext:finalize struct-p (lambda () (foreign-free p-p)) :dont-save t)
      (sb-ext:finalize struct-v1 (lambda () (foreign-free p-v1)) :dont-save t)
      (sb-ext:finalize struct-v2 (lambda () (foreign-free p-v2)) :dont-save t)
      (sb-ext:finalize struct-v3 (lambda () (foreign-free p-v3)) :dont-save t)
      (values struct-v3 struct-v2 struct-v1 struct-p))))

(defmethod nth-derivative ((curve geom-adaptor-curve) (n integer) (u number))
  (let* ((pointer (_wrap_GeomAdaptor_Curve_D0 (ff-pointer curve) (coerce u 'double-float) n))
	 (struct (gp:make-pnt :ptr pointer)))
    (sb-ext:finalize struct (lambda () (_wrap_delete_gp_Vec pointer)) :dont-save t)
    struct))