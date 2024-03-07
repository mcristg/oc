(in-package :oc)

(defmethod initialize-instance :after ((obj brep-mesh-incremental-mesh) &rest initargs
				       &key theShape theLinDeflection
					 (isRelative nil isRelative-present-p)
					 theAngDeflection (isInParallel nil isInParallel-present-p)
					 &allow-other-keys)
  (declare (ignore initargs))
  (setf (ff-pointer obj)
	(cond ((null theShape) (_wrap_new_BRepMesh_IncrementalMesh__SWIG_0))
	      
	      ((and (typep theShape 'topods-shape)
		    (typep theLinDeflection 'double-float)
		    (null isRelative-present-p)
		    (null theAngDeflection)
		    (null isInParallel-present-p))
	       (_wrap_new_BRepMesh_IncrementalMesh__SWIG_4 (ff-pointer theShape) theLinDeflection))
	      
	      ((and (typep theShape 'topods-shape)
		    (typep theLinDeflection 'double-float)
		    isRelative-present-p
		    (null theAngDeflection)
		    (null isInParallel-present-p))
	       (_wrap_new_BRepMesh_IncrementalMesh__SWIG_3 (ff-pointer theShape) theLinDeflection isRelative))

	      ((and (typep theShape 'topods-shape)
		    (typep theLinDeflection 'double-float)
		    isRelative-present-p
		    (typep theAngDeflection 'double-float)
		    (null isInParallel-present-p))
	       (_wrap_new_BRepMesh_IncrementalMesh__SWIG_2
		(ff-pointer theShape) theLinDeflection isRelative theAngDeflection))

	      ((and (typep theShape 'topods-shape)
		    (typep theLinDeflection 'double-float)
		    isRelative-present-p
		    (typep theAngDeflection 'double-float)
		    isInParallel-present-p)
	       (_wrap_new_BRepMesh_IncrementalMesh__SWIG_1
		(ff-pointer theShape) theLinDeflection isRelative theAngDeflection isInParallel))
	      
	      (t (error "Invalid arguments to initialize-instance of BRepMesh_IncrementalMesh."))))
  (oc:finalize obj)
  (values))

(defmethod perform ((self brep-mesh-incremental-mesh))
  (_wrap_BRepMesh_IncrementalMesh_Perform (ff-pointer self)))
