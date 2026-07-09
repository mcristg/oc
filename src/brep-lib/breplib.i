
%{
#include <BRepLib.hxx>
%}
%nodefaultctor BRepLib;
%nodefaultdtor BRepLib;
class BRepLib
{
 public:
  static void Precision (const double P);

  static double Precision();
  
  static void Plane (const Handle_Geom_Plane& P);

  static const Handle_Geom_Plane& Plane();

  static bool CheckSameRange (const TopoDS_Edge& E, const double Confusion = 1.0e-12);

  static void SameRange (const TopoDS_Edge& E, const double Tolerance = 1.0e-5);

  static bool BuildCurve3d (const TopoDS_Edge& E, const double Tolerance = 1.0e-5, const GeomAbs_Shape Continuity = GeomAbs_C1, const int MaxDegree = 14, const int MaxSegment = 0);

  static bool BuildCurves3d (const TopoDS_Shape& S, const double Tolerance, const GeomAbs_Shape Continuity = GeomAbs_C1, const int MaxDegree = 14, const int MaxSegment = 0);

  static bool BuildCurves3d (const TopoDS_Shape& S);

  static bool UpdateEdgeTol (const TopoDS_Edge& E, const double MinToleranceRequest, const double MaxToleranceToCheck);

  static bool UpdateEdgeTolerance (const TopoDS_Shape& S, const double MinToleranceRequest, const double MaxToleranceToCheck);

  static void SameParameter (const TopoDS_Edge& E, const double Tolerance = 1.0e-5);

  static void SameParameter (const TopoDS_Shape& S, const double Tolerance = 1.0e-5, const bool forced = false);

  static void UpdateTolerances (const TopoDS_Shape& S, const bool verifyFaceTolerance = false);

  static void UpdateInnerTolerances (const TopoDS_Shape& S);

  static bool OrientClosedSolid (TopoDS_Solid& solid);

  static void EncodeRegularity (const TopoDS_Shape& S, const double TolAng = 1.0e-10);

  static void EncodeRegularity (TopoDS_Edge& S, const TopoDS_Face& F1, const TopoDS_Face& F2, const double TolAng = 1.0e-10);
  
  static void SortFaces (const TopoDS_Shape& S, TopTools_ListOfShape& LF);
  
  static void ReverseSortFaces (const TopoDS_Shape& S, TopTools_ListOfShape& LF);

  static bool EnsureNormalConsistency (const TopoDS_Shape& S, const double theAngTol = 0.001, const bool ForceComputeNormals = false);

  static  void BoundingVertex(const NCollection_List<TopoDS_Shape>& theLV,
			      gp_Pnt& theNewCenter, double& theNewTol);

};
