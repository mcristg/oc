(in-package :oc)

#|
(defmethod initialize-instance :after ((obj poly-triangulation) &rest initargs
				       &key nbNodes nbTriangles
					 UVNodes
					 &allow-other-keys)
  (declare (ignore initargs))
  (assert (typep nbNodes 'integer))
  (assert (typep nbTriangles 'integer))
  (setf (ff-pointer obj)
	(_wrap_new_Poly_Triangulation nbNodes nbTriangles UvNodes))
  ;;(oc:finalize obj)
  (values))
|#

(defmethod number-of-triangles ((self poly-triangulation))
  (_wrap_Poly_Triangulation_NbTriangles (ff-pointer self)))

(defmethod get-triangle ((self poly-triangulation) Index)
  (let ((triangle (allocate-instance (load-time-value (find-class 'poly-triangle)))))
    (setf (ff-pointer triangle) (_wrap_Poly_Triangulation_Triangle (ff-pointer self) Index))
    ;;(oc:finalize triangle)
    triangle))

(defmethod number-of-nodes ((self poly-triangulation))
  (_wrap_Poly_Triangulation_NbNodes (ff-pointer self)))

(defmethod get-node ((self poly-triangulation) Index)
  (let ((node (allocate-instance (load-time-value (find-class 'gp:pnt)))))
    (setf (ptr node) (_wrap_Poly_Triangulation_Node (ff-pointer self) Index)) 
    ;;(oc:finalize node :native)
    node))
    
