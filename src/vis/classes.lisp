(in-package :oc)

;;

(defclass prsmgr-presentable-object (standard-transient) ())

(defclass selectmgr-Selectable-object (prsmgr-presentable-object) ())

(defclass ais-interactive-object (selectmgr-Selectable-object) ())

(defclass ais-shape (ais-interactive-object) ())

(defclass ais-interactive-context (standard-transient) ())

(defclass graphic3d-material-aspect (standard-transient) ())

(export '(ais-interactive-context
          ais-interactive-object
          ais-shape
          graphic3d-material-aspect
          prsmgr-presentable-object
          selectmgr-Selectable-object          
          ))
          
          
