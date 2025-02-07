(in-package :oc)

(defun brep-tool-triangulation (face location)
  (let ((obj (_wrap_BRep_Tool_Triangulation (ff-pointer face) (ff-pointer location))))
    (if (cffi:null-pointer-p obj)
	nil
	(let ((poly (make-instance 'poly-triangulation)))
	  (setf  (ff-pointer poly) obj)
	  obj))))

