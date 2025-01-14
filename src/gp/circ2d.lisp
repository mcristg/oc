(in-package :gp)

(defun circ2d (&rest args &key (XAxis (ax2d)) (Radius most-positive-double-float) (Sense t) (Axis (ax22d :A XAxis :Sense Sense)))
  (let ((ptr (foreign-alloc '(:struct gp-circ2d))))
    (cond ((and XAxis Radius (typep Axis 'ax22d))
	   (if (< Radius 0)
	       (error "Radius cannot be negative: ~S" Radius)
	       (setf (gp-circ2d-pos-loc-coord-x ptr) (gp-ax2d-loc-coord-x (ptr Axis))
		     (gp-circ2d-pos-loc-coord-y ptr) (gp-ax2d-loc-coord-y (ptr Axis))
		     (gp-circ2d-pos-vdir-coord-x ptr) (gp-ax2d-vdir-coord-x (ptr Axis))
		     (gp-circ2d-pos-vdir-coord-y ptr) (gp-ax2d-vdir-coord-y (ptr Axis))
		     
		     (gp-circ2d-radius ptr) (coerce Radius 'double-float))))
	  (t (error "Invalid arguments to circ2d: ~S" args)))
    (let ((struct (make-circ2d :ptr ptr)))
      (oc:finalize struct :native)
      struct)))
