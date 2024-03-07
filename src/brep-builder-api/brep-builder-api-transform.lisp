(in-package :oc)

(defmethod initialize-instance :after ((obj brep-builder-api-transform) &rest initargs
				&key Trsf S CopyGeom CopyMesh &allow-other-keys)
  (let ((pointer
	 (cond ((and S Trsf CopyGeom CopyMesh)
	    (_wrap_new_BRepBuilderAPI_Transform__SWIG_1 (ff-pointer S) (ptr Trsf) CopyGeom CopyMesh))
	       ((and S Trsf CopyGeom)
		(_wrap_new_BRepBuilderAPI_Transform__SWIG_2 (ff-pointer S) (ptr Trsf) CopyGeom ))
	       ((and S Trsf)
		(_wrap_new_BRepBuilderAPI_Transform__SWIG_3 (ff-pointer S) (ptr Trsf)))
	       (Trsf (_wrap_new_BrepBuilderAPI_Transform__SWIG_0 (ptr Trsf)))
	       (t (error "Invalid arguments to constructor ~S" initargs)))))
    (setf (ff-pointer obj) pointer)
    (oc:finalize obj)
    (values)))
    
(defmethod shape ((self brep-builder-api-transform))
  (let ((shape-copy
	 (with-topods-shape
	   (_wrap_TopoDS_Shape_copy_reference
	    (_wrap_BRepBuilderAPI_Transform_Shape (ff-pointer self))))))
    (oc:finalize shape-copy)
    shape-copy))        
