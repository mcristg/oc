(in-package :oc)

(defmethod initialize-instance :after ((instance brep-prim-api-make-revol)
                                       &rest initargs
                                       &key shape axis (angle nil angle-supplied-p) (copy nil copy-supplied-p)
                                       &allow-other-keys)
  (let ((ff-pointer
          (cond ((and (typep shape 'TopoDS-Shape)
                      (typep axis 'gp:Ax1)
                      (typep angle 'real)
                      copy-supplied-p)
                 (_wrap_new_BrepPrimAPI_MakeRevol__SWIG_0 (ff-pointer shape)
                                                          (ptr axis)
                                                          (coerce angle 'double-float)
                                                          (and copy t)))
                ((and (typep shape 'TopoDS-Shape)
                      (typep axis 'gp:Ax1)
                      (typep angle 'real)
                      (not copy-supplied-p))
                 (_wrap_new_BRepPrimAPI_MakeRevol__SWIG_1 (ff-pointer shape)
                                                          (ptr axis)
                                                          (coerce angle 'double-float)))
                ((and (typep shape 'TopoDS-Shape)
                      (typep axis 'gp:Ax1)
                      (not angle-supplied-p)
                      copy-supplied-p)
                 (_wrap_new_BRepPrimAPI_MakeRevol__SWIG_2 (ff-pointer shape)
                                                          (ptr axis)
                                                          (and copy t)))
                ((and (typep shape 'TopoDS-Shape)
                      (typep axis 'gp:Ax1)
                      (not angle-supplied-p)
                      (not copy-supplied-p))
                 (_wrap_new_BRepPrimAPI_MakeRevol__SWIG_3 (ff-pointer shape)
                                                          (ptr axis)))

                (t (error "Invalid arguments to constructor: ~S" initargs)))))
    (setf (ff-pointer instance) ff-pointer)
    (finalize instance)
    (values)))
