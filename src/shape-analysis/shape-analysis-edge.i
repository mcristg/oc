%{#include <ShapeAnalysis_Edge.hxx>%}

class ShapeAnalysis_Edge 
{
public:
  ShapeAnalysis_Edge();

  bool HasCurve3d (const TopoDS_Edge& edge) const;

  bool Curve3d (const TopoDS_Edge& edge, Handle_Geom_Curve& C3d, double& cf, double& cl, const bool orient = true) const;

  bool IsClosed3d (const TopoDS_Edge& edge) const;

  bool HasPCurve (const TopoDS_Edge& edge, const TopoDS_Face& face) const;

  bool HasPCurve (const TopoDS_Edge& edge, const Handle_Geom_Surface& surface, const TopLoc_Location& location) const;

  bool PCurve (const TopoDS_Edge& edge, const TopoDS_Face& face, Handle_Geom2d_Curve& C2d, double& cf, double& cl, const bool orient = true) const;

  bool PCurve (const TopoDS_Edge& edge, const Handle_Geom_Surface& surface, const TopLoc_Location& location, Handle_Geom2d_Curve& C2d, double& cf, double& cl, const bool orient = true) const;

  bool BoundUV (const TopoDS_Edge& edge, const TopoDS_Face& face, gp_Pnt2d& first, gp_Pnt2d& last) const;

  bool BoundUV (const TopoDS_Edge& edge, const Handle_Geom_Surface& surface, const TopLoc_Location& location, gp_Pnt2d& first, gp_Pnt2d& last) const;

  bool IsSeam (const TopoDS_Edge& edge, const TopoDS_Face& face) const;

  TopoDS_Vertex FirstVertex (const TopoDS_Edge& edge) const;

  TopoDS_Vertex LastVertex (const TopoDS_Edge& edge) const;

  bool GetEndTangent2d (const TopoDS_Edge& edge, const TopoDS_Face& face, const bool atEnd, gp_Pnt2d& pos, gp_Vec2d& tang, const double dparam = 0.0) const;

  bool GetEndTangent2d (const TopoDS_Edge& edge, const Handle_Geom_Surface& surface, const TopLoc_Location& location, const bool atEnd, gp_Pnt2d& pos, gp_Vec2d& tang, const double dparam = 0.0) const;

  bool CheckVerticesWithCurve3d (const TopoDS_Edge& edge, const double preci = -1, const int vtx = 0);

  bool CheckVerticesWithPCurve (const TopoDS_Edge& edge, const TopoDS_Face& face, const double preci = -1, const int vtx = 0);

  bool CheckVerticesWithPCurve (const TopoDS_Edge& edge, const Handle_Geom_Surface& surface, const TopLoc_Location& location, const double preci = -1, const int vtx = 0);

  bool CheckVertexTolerance (const TopoDS_Edge& edge, const TopoDS_Face& face, double& toler1, double& toler2);

  bool CheckVertexTolerance (const TopoDS_Edge& edge, double& toler1, double& toler2);

  bool CheckCurve3dWithPCurve (const TopoDS_Edge& edge, const TopoDS_Face& face);

  bool CheckCurve3dWithPCurve (const TopoDS_Edge& edge, const Handle_Geom_Surface& surface, const TopLoc_Location& location);

  bool Status (const ShapeExtend_Status status) const;

  bool CheckSameParameter (const TopoDS_Edge& edge, double& maxdev, const int NbControl = 23);

  bool CheckSameParameter (const TopoDS_Edge& theEdge, const TopoDS_Face& theFace, double& theMaxdev, const int theNbControl = 23);

  bool CheckOverlapping (const TopoDS_Edge& theEdge1, const TopoDS_Edge& theEdge2, double& theTolOverlap, const double theDomainDist = 0.0);
};
