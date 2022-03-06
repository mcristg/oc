(in-package :oc)

(defmethod initialize-instance :after ((instance brep-prim-api-make-revolution)
                                       &rest initargs
                                       &key Meridian
                                         (Axes nil Axes-supplied-p)
                                         (VMin nil VMin-supplied-p)
                                         (VMax nil VMax-supplied-p)
                                         (angle nil angle-supplied-p)
                                       &allow-other-keys)
  (let ((ff-pointer
          (cond ((and (typep Axes 'gp:Ax2)
                      (typep Meridian 'geom-curve)
                      (typep VMin 'real)
                      (typep VMax 'real)
                      (typep angle 'real))
                 (_wrap_new_BRepPrimAPI_MakeRevolution__SWIG_7 (ptr Axes)
                                                               (ff-pointer Meridian)
                                                               (coerce VMin 'double-float)
                                                               (coerce VMax 'double-float)
                                                               (coerce angle 'double-float)))
                ((and (typep Axes 'gp:Ax2)
                      (typep Meridian 'geom-curve)
                      (typep VMin 'real)
                      (typep VMax 'real)
                      (not angle-supplied-p))
                 (_wrap_new_BRepPrimAPI_MakeRevolution__SWIG_6 (ptr Axes)
                                                               (ff-pointer Meridian)
                                                               (coerce VMin 'double-float)
                                                               (coerce VMax 'double-float)))
                ((and (typep Axes 'gp:Ax2)
                      (typep Meridian 'geom-curve)
                      (not VMin-supplied-p)
                      (not VMax-supplied-p)
                      (typep angle 'real))
                 (_wrap_new_BRepPrimAPI_MakeRevolution__SWIG_5 (ptr Axes)
                                                               (ff-pointer Meridian)
                                                               (coerce angle 'double-float)))
                ((and (typep Axes 'gp:Ax2)
                      (typep Meridian 'geom-curve)
                      (not VMin-supplied-p)
                      (not VMax-supplied-p)
                      (not angle-supplied-p))
                 (_wrap_new_BRepPrimAPI_MakeRevolution__SWIG_4 (ptr Axes)
                                                               (ff-pointer Meridian)))
                ((and (not Axes-supplied-p)
                      (typep Meridian 'geom-curve)
                      (typep VMin 'real)
                      (typep VMax 'real)
                      (typep angle 'real))
                 (_wrap_new_BRepPrimAPI_MakeRevolution__SWIG_3 (ff-pointer Meridian)
                                                               (coerce VMin 'double-float)
                                                               (coerce VMax 'double-float)
                                                               (coerce angle 'double-float)))
                ((and (not Axes-supplied-p)
                      (typep Meridian 'geom-curve)
                      (typep VMin 'real)
                      (typep VMax 'real)
                      (not angle-supplied-p))
                 (_wrap_new_BRepPrimAPI_MakeRevolution__SWIG_2 (ff-pointer Meridian)
                                                               (coerce VMin 'double-float)
                                                               (coerce VMax 'double-float)))
                ((and (not Axes-supplied-p)
                      (typep Meridian 'geom-curve)
                      (not VMin-supplied-p)
                      (not VMax-supplied-p)
                      (typep angle 'real))
                 (_wrap_new_BRepPrimAPI_MakeRevolution__SWIG_1 (ff-pointer Meridian)
                                                               (coerce angle 'double-float)))
                ((and (not Axes-supplied-p)
                      (typep Meridian 'geom-curve)
                      (not VMin-supplied-p)
                      (not VMax-supplied-p)
                      (not angle-supplied-p))
                 (_wrap_new_BRepPrimAPI_MakeRevolution__SWIG_0 (ff-pointer Meridian)))

                (t (error "Invalid initargs to constructor: ~S" initargs)))))
    (setf (ff-pointer instance) ff-pointer)
    (finalize instance)
    (values)))
