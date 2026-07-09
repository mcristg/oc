(in-package :oc)

(defmethod initialize-instance :after ((instance ais-interactive-context)
				       &rest initargs
				       &key viewer-ptr &allow-other-keys)
  (let ((ff-pointer
	 (cond (viewer-ptr viewer-ptr)
	       (t (error "Invalid initargs to constructor: ~S" initargs)))))
    (setf (ff-pointer instance) ff-pointer)
    (values)))

(defmethod display ((context ais-interactive-context) (iobj ais-interactive-object) update-viewer-p)
  (_wrap_AIS_InteractiveContext_Display__SWIG_0 (ff-pointer context) (ff-pointer iobj) update-viewer-p))
  
(defmethod set-material ((context ais-interactive-context) 
                         (iobj ais-interactive-object)
                         (material-aspect graphic3d-material-aspect)
                         update-viewer-p)
  (_wrap_AIS_InteractiveContext_SetMaterial (ff-pointer context) (ff-pointer iobj)  (ff-pointer material-aspect) update-viewer-p))

(export '(display set-material))
