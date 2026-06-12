
%{
#include <BRep_Tool.hxx>
#include <Geom_Curve.hxx>
#include <BRep_Builder.hxx>
#include <TopoDS_Builder.hxx>
#include <TopLoc_Location.hxx>
#include <Poly_Triangulation.hxx>

typedef occ::handle<Geom_Surface> Handle_Geom_Surface;
typedef occ::handle<Geom_Curve> Handle_Geom_Curve;
typedef occ::handle<Poly_Triangulation> Handle_Poly_Triangulation;
typedef occ::handle<Poly_Polygon3D> Handle_Poly_Polygon3D;
typedef occ::handle<Geom2d_Curve> Handle_Geom2d_Curve;
typedef occ::handle<Poly_Polygon2D> Handle_Poly_Polygon2D;
typedef occ::handle<Poly_PolygonOnTriangulation> Handle_Poly_PolygonOnTriangulation;
%}
%nodefaultctor BRep_Tool;
%nodefaultdtor BRep_Tool;
class BRep_Tool
{
 public:
  static bool IsClosed(const TopoDS_Shape &S);
  static Handle_Geom_Surface& Surface (const TopoDS_Face& F, TopLoc_Location& L);
  static Handle_Geom_Surface Surface(const TopoDS_Face& F);
  static const Handle_Poly_Triangulation& Triangulation (const TopoDS_Face& F, TopLoc_Location& L);
  static double Tolerance(const TopoDS_Face& F);
  static bool NaturalRestriction (const TopoDS_Face& F);
  static bool IsGeometric (const TopoDS_Edge& E);
  static Handle_Geom_Curve& Curve (const TopoDS_Edge& E, TopLoc_Location& L, double& First, double& Last);
  static Handle_Geom_Curve Curve (const TopoDS_Edge& E, double& First, double& Last);
  static Handle_Poly_Polygon3D& Polygon3D (const TopoDS_Edge& E, TopLoc_Location& L);
  static Handle_Geom2d_Curve CurveOnSurface(const TopoDS_Edge& E, const TopoDS_Face& F, double& First, double& Last);
  static Handle_Geom2d_Curve CurveOnSurface (const TopoDS_Edge& E, const Handle_Geom_Surface& S, const TopLoc_Location& L, double& First, double& Last);
  static void CurveOnSurface (const TopoDS_Edge& E, Handle_Geom2d_Curve& C, Handle_Geom_Surface& S, TopLoc_Location& L, double& First, double& Last);
  static void CurveOnSurface (const TopoDS_Edge& E, Handle_Geom2d_Curve& C, Handle_Geom_Surface& S, TopLoc_Location& L, double& First, double& Last, const int Index);
  static Handle_Poly_Polygon2D PolygonOnSurface (const TopoDS_Edge& E, const TopoDS_Face& F);
  static Handle_Poly_Polygon2D PolygonOnSurface (const TopoDS_Edge& E, const Handle_Geom_Surface& S, const TopLoc_Location& L);
  static void PolygonOnSurface (const TopoDS_Edge& E, Handle_Poly_Polygon2D& C, Handle_Geom_Surface& S, TopLoc_Location& L);
  static void PolygonOnSurface (const TopoDS_Edge& E, Handle_Poly_Polygon2D& C, Handle_Geom_Surface& S, TopLoc_Location& L, const int Index);
  static Handle_Poly_PolygonOnTriangulation& PolygonOnTriangulation (const TopoDS_Edge& E, const Handle_Poly_Triangulation& T, const TopLoc_Location& L);
 static void PolygonOnTriangulation (const TopoDS_Edge& E, Handle_Poly_PolygonOnTriangulation& P, Handle_Poly_Triangulation& T, TopLoc_Location& L);
 static void PolygonOnTriangulation (const TopoDS_Edge& E, Handle_Poly_PolygonOnTriangulation& P, Handle_Poly_Triangulation& T, TopLoc_Location& L, const int Index);
  static bool IsClosed (const TopoDS_Edge& E, const TopoDS_Face& F);
  static bool IsClosed (const TopoDS_Edge& E, const Handle_Geom_Surface& S, const TopLoc_Location& L);
  static double Tolerance (const TopoDS_Edge& E);
  static bool SameParameter (const TopoDS_Edge& E);
  static bool SameRange (const TopoDS_Edge& E);
  static bool Degenerated (const TopoDS_Edge& E);
  static void Range (const TopoDS_Edge& E, double& First, double& Last);
  static void Range (const TopoDS_Edge& E, const Handle_Geom_Surface& S, const TopLoc_Location& L, double& First, double& Last);
  static void Range (const TopoDS_Edge& E, const TopoDS_Face& F, double& First, double& Last);
  static void UVPoints (const TopoDS_Edge& E, const Handle_Geom_Surface& S, const TopLoc_Location& L, gp_Pnt2d& PFirst, gp_Pnt2d& PLast);
  static void UVPoints (const TopoDS_Edge& E, const TopoDS_Face& F, gp_Pnt2d& PFirst, gp_Pnt2d& PLast);
  static void SetUVPoints (const TopoDS_Edge& E, const Handle_Geom_Surface& S, const TopLoc_Location& L, const gp_Pnt2d& PFirst, const gp_Pnt2d& PLast);
  static void SetUVPoints (const TopoDS_Edge& E, const TopoDS_Face& F, const gp_Pnt2d& PFirst, const gp_Pnt2d& PLast);
  static bool HasContinuity (const TopoDS_Edge& E, const TopoDS_Face& F1, const TopoDS_Face& F2);
  static GeomAbs_Shape Continuity (const TopoDS_Edge& E, const TopoDS_Face& F1, const TopoDS_Face& F2);
  static bool HasContinuity (const TopoDS_Edge& E, const Handle_Geom_Surface& S1, const Handle_Geom_Surface& S2, const TopLoc_Location& L1, const TopLoc_Location& L2);
  static GeomAbs_Shape Continuity (const TopoDS_Edge& E, const Handle_Geom_Surface& S1, const Handle_Geom_Surface& S2, const TopLoc_Location& L1, const TopLoc_Location& L2);
  static bool HasContinuity (const TopoDS_Edge& E);
  static gp_Pnt Pnt(const TopoDS_Vertex& V);
  static double Tolerance (const TopoDS_Vertex& V);
  static double Parameter (const TopoDS_Vertex& V, const TopoDS_Edge& E);
  static double Parameter (const TopoDS_Vertex& V, const TopoDS_Edge& E, const TopoDS_Face& F);
  static double Parameter (const TopoDS_Vertex& V, const TopoDS_Edge& E, const Handle_Geom_Surface& S, const TopLoc_Location& L);
  static gp_Pnt2d Parameters(const TopoDS_Vertex& V,const TopoDS_Face& F);
  static double MaxTolerance (const TopoDS_Shape& theShape, const TopAbs_ShapeEnum theSubShape);
};

%extend BRep_Tool
{
  /*
  static Poly_Triangulation * Triangulation(const TopoDS_Face& F, TopLoc_Location& L) {
    Handle_Poly_Triangulation h = BRep_Tool::Triangulation(F, L);
    if(h.IsNull())
      return (Poly_Triangulation *) NULL;
    else
      return (Poly_Triangulation *)h.get();
  }
  */
  /*  static Poly_Polygon3D *Polygon3D (const TopoDS_Edge &E, TopLoc_Location &L) {
    Handle_Poly_Polygon3D h = BRep_Tool::Polygon3D(E, L);
    if (h.IsNull())
      return (Poly_Polygon3D *) NULL;
    else
      return (Poly_Polygon3D *)h.get();
  }							 
  static Poly_PolygonOnTriangulation * PolygonOnTriangulation (const TopoDS_Edge &E, const Handle_Poly_Triangulation &T, const TopLoc_Location &L) {
    Handle_Poly_PolygonOnTriangulation h = BRep_Tool::PolygonOnTriangulation(E, T, L);
    if (h.IsNull())
      return (Poly_PolygonOnTriangulation *) NULL;
    else
      return (Poly_PolygonOnTriangulation *)h.get();
  }
  static Poly_Polygon2D * PolygonOnSurface (const TopoDS_Edge &E, const TopoDS_Face &F) {
    Handle_Poly_Polygon2D h = BRep_Tool::PolygonOnSurface(E, F);
    if (h.IsNull())
      return (Poly_Polygon2D *) NULL;
    else
      return (Poly_Polygon2D *)h.get();
  }
  */
};

class BRep_Builder: public TopoDS_Builder
{
	public:
	BRep_Builder();
	void MakeFace(TopoDS_Face& F) const;
	void MakeFace(TopoDS_Face& F, const Handle_Geom_Surface& S, const double tol) const;
	void MakeFace(TopoDS_Face& F, const Handle_Geom_Surface& S, const TopLoc_Location& L, const double tol) const;
	
	void MakeEdge(TopoDS_Edge& E) const;
	void MakeEdge(TopoDS_Edge& E, const Handle_Geom_Curve& C, const double tol) const;
	void MakeEdge(TopoDS_Edge& E, const Handle_Geom_Curve& C, const TopLoc_Location& L, const double tol) const;
    void UpdateEdge(const TopoDS_Edge& edge, const Handle_Geom_Curve& C, const double tolerance) const; 
	void UpdateEdge(const TopoDS_Edge& edge, const Handle_Geom2d_Curve& C, const TopoDS_Face& F, const double tolerance) const;
	void UpdateEdge(const TopoDS_Edge& edge, const Handle_Geom2d_Curve& C1, const Handle_Geom2d_Curve& C2, const TopoDS_Face& F, const double tolerance) const;
	
	void MakeVertex(TopoDS_Vertex& V) const;
	void MakeVertex(TopoDS_Vertex& V, const gp_Pnt& P, const double tol) const;
	void UpdateVertex(const TopoDS_Vertex& vertex, const double u, const double v, const TopoDS_Face& face, const double tolerance) const;
	void UpdateVertex(const TopoDS_Vertex& vertex, const double tolerance) const;
	
	void Degenerated(const TopoDS_Edge& E, const bool D) const ;
};
