(in-package :oc)

(defmethod initialize-instance :after ((self step-control-Writer) &rest initargs &key &allow-other-keys)
  (declare (ignore initargs))
  (setf (ff-pointer self) (_wrap_new_STEPControl_Writer))
  (oc:finalize self)
  (values))

(defmethod step-write ((self step-control-writer) filename)
  (_wrap_STEPControl_Writer_Write (ff-pointer self) filename))
  
(defmethod transfer ((self step-control-Writer) (ts topods-shape) mode)
   (_wrap_STEPControl_Writer_Transfer (ff-pointer self) (ff-pointer ts) mode))

