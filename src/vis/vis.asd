(defsystem vis
  :description "A wrapper library for using OpenCASCADE with Lisp."
  :depends-on (:cffi)
  :author ""
  :serial t
  :components
  ((:file "foreign-librarie")
   (:file "vis")
   (:file "classes")
   (:file "finalizations")
   (:file "ais/ais-interactive-context")
   (:file "ais/ais-shape")
   (:file "tkservice/graphic3d-material-aspect")
   
   ))
   
