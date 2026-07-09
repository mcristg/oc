(in-package :oc)

(defmethod foreign-free-fn ((object ais-shape))
  #'_wrap_AIS_Shape_Delete)


(defmethod foreign-free-fn ((object graphic3d-material-aspect))
  #'_wrap_delete_Graphic3d_MaterialAspect)
