(in-package :oc)

(defmethod initialize-instance :after ((object brep-offset-api-make-thick-solid) &rest initargs &key)
  (declare (ignore initargs))
  (setf (ff-pointer object) (_wrap_new_BRepOffsetAPI_MakeThickSolid))
  (oc:finalize object)
  (values))

#|
7.1.0
BRepOffsetAPI_MakeThickSolid (const TopoDS_Shape &S, 
                              const TopTools_ListOfShape &ClosingFaces,
                              const Standard_Real Offset,
                              const Standard_Real Tol,
                              const BRepOffset_Mode Mode = BRepOffset_Skin,
                              const Standard_Boolean Intersection = Standard_False,
                              const Standard_Boolean SelfInter = Standard_False,
                              const GeomAbs_JoinType Join = GeomAbs_Arc,
                              const Standard_Boolean RemoveIntEdges = Standard_False)
7.8.0
void MakeThickSolidByJoin (const TopoDS_Shape &S,
                           const TopTools_ListOfShape &ClosingFaces,
                           const Standard_Real Offset,
                           const Standard_Real Tol,
                           const BRepOffset_Mode Mode=BRepOffset_Skin,
                           const Standard_Boolean Intersection=Standard_False,
                           const Standard_Boolean SelfInter=Standard_False,
                           const GeomAbs_JoinType Join=GeomAbs_Arc,
                           const Standard_Boolean RemoveIntEdges=Standard_False,
                           const Message_ProgressRange &theRange=Message_ProgressRange())
|#

(defmethod make-thick-solid-by-Join ((object brep-offset-api-make-thick-solid) &rest rest
				     &key S ClosingFaces Offset Tol Mode
				       (Intersection nil Intersection-supplied-p)
				       (SelfInter nil SelfInter-supplied-p)
				       (Join nil Join-supplied-p)
				       (RemoveIntEdges nil RemoveIntEdges-supplied-p)
				     &allow-other-keys)
  (cond ((and S ClosingFaces Offset Tol Mode Intersection-supplied-p
	      SelfInter-supplied-p Join-supplied-p RemoveIntEdges-supplied-p)
	 (_wrap_BRepOffsetAPI_MakeThickSolid_MakeThickSolidByJoin__SWIG_1 (ff-pointer object) (ff-pointer S) (ff-pointer ClosingFaces)
									  (coerce Offset 'double-float) (coerce Tol 'double-float)
									  Mode Intersection
									  SelfInter Join
									  RemoveIntEdges))
	((and S ClosingFaces Offset Tol Mode Intersection-supplied-p
	      SelfInter-supplied-p Join-supplied-p)
	 (_wrap_BRepOffsetAPI_MakeThickSolid_MakeThickSolidByJoin__SWIG_2 (ff-pointer object) (ff-pointer S) (ff-pointer ClosingFaces)
									  (coerce Offset 'double-float) (coerce Tol 'double-float)
									  Mode Intersection
									  SelfInter Join))
	((and S ClosingFaces Offset Tol Mode Intersection-supplied-p SelfInter-supplied-p)
	 (_wrap_BRepOffsetAPI_MakeThickSolid_MakeThickSolidByJoin__SWIG_3 (ff-pointer object) (ff-pointer S) (ff-pointer ClosingFaces)
									  (coerce Offset 'double-float) (coerce Tol 'double-float)
									  Mode Intersection
									  SelfInter))
	((and S ClosingFaces Offset Tol Mode Intersection-supplied-p)
	 (_wrap_BRepOffsetAPI_MakeThickSolid_MakeThickSolidByJoin__SWIG_4 (ff-pointer object) (ff-pointer S) (ff-pointer ClosingFaces)
									  (coerce Offset 'double-float) (coerce Tol 'double-float)
									  Mode Intersection))
	((and S ClosingFaces Offset Tol Mode)
	 (_wrap_BRepOffsetAPI_MakeThickSolid_MakeThickSolidByJoin__SWIG_5 (ff-pointer object) (ff-pointer S) (ff-pointer ClosingFaces)
									  (coerce Offset 'double-float) (coerce Tol 'double-float)
									  Mode))
	((and S ClosingFaces Offset Tol)
	 (_wrap_BRepOffsetAPI_MakeThickSolid_MakeThickSolidByJoin__SWIG_6 (ff-pointer object) (ff-pointer S) (ff-pointer ClosingFaces)
									  (coerce Offset 'double-float) (coerce Tol 'double-float)))
	(t (error "Invalid arguments to method MakeThickSolidByJoin ~S" rest))))


    
