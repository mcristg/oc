(in-package :oc)

(defmethod initialize-instance :after ((instance graphic3d-material-aspect)
				       &rest initargs
				       &key material &allow-other-keys)
  (let ((ff-pointer
	 (cond (material (_wrap_new_Graphic3d_MaterialAspect__SWIG_1 material))
	       ((null material) (_wrap_new_Graphic3d_MaterialAspect__SWIG_0 ))
	       (t (error "Invalid initargs to constructor: ~S" initargs)))))
    (setf (ff-pointer instance) ff-pointer)
    (oc:finalize instance)
    (values)))

    

