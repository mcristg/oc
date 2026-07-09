(in-package :cl-user)

(defparameter *vis-swig-lib*
  #+windows "vis.dll"
  #+darwin "vis.dylib"
  #+linux "vis.so")
 
(defun load-vis-librarie ()
  (cffi:load-foreign-library (concatenate 'string *oc-lib-path* *vis-swig-lib*)))

(load-vis-librarie)
