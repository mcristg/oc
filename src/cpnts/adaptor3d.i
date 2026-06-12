%{
#include <Standard_Handle.hxx>
#include <Adaptor3d_Curve.hxx> 
#include <GeomAdaptor_Curve.hxx>
#include <Adaptor3d_Surface.hxx>
#include <GeomAdaptor_Surface.hxx>

typedef occ::handle<Adaptor3d_Curve> Handle_Adaptor3d_Curve;
typedef occ::handle<Adaptor3d_Surface> Handle_Adaptor3d_Surface;
  %}

class Adaptor3d_Curve
{		
  Adaptor3d_Curve()=0;
 public:
  const gp_Pnt Value(const double U) const;
};

class GeomAdaptor_Curve  : public Adaptor3d_Curve
{
public:
    GeomAdaptor_Curve();
    GeomAdaptor_Curve(const Handle_Geom_Curve& C);
    GeomAdaptor_Curve(const Handle_Geom_Curve& C, const double UFirst, const double ULast);
    Handle_Adaptor3d_Curve ShallowCopy() const;
    void Reset ();
    void Load (const Handle_Geom_Curve& C);
    void Load (const Handle_Geom_Curve& C, const double UFirst, const double ULast);
    const Handle_Geom_Curve& Curve() const;
    double FirstParameter() const;
    double LastParameter() const;
    GeomAbs_Shape Continuity() const;
    int NbIntervals (const GeomAbs_Shape S) const;
    void Intervals(TColStd_Array1OfReal &T, const GeomAbs_Shape S) const;
    Handle_Adaptor3d_Curve Trim (const double First, const double Last, const double Tol) const;
    bool IsClosed() const;
    bool IsPeriodic() const;
    double Period() const;
    gp_Pnt Value(const double U) const;
    void D0(const double U, gp_Pnt &P) const;
    void D1(const double U, gp_Pnt &P, gp_Vec &V) const;
    void D2(const double U, gp_Pnt &P, gp_Vec &V1, gp_Vec &V2) const;
    void D3(const double U, gp_Pnt &P, gp_Vec &V1, gp_Vec &V2, gp_Vec &V3) const;
    gp_Vec DN(const double U, const int N) const;
    double Resolution(const double R3d) const;
    GeomAbs_CurveType GetType() const;
    gp_Lin Line() const;
    gp_Circ Circle() const;
    gp_Elips Ellipse() const;
    gp_Hypr Hyperbola() const;
    gp_Parab Parabola() const;
    int Degree() const;
    bool IsRational() const;
    int NbPoles() const;
    int NbKnots() const;
    Handle_Geom_BezierCurve Bezier() const;
    Handle_Geom_BSplineCurve BSpline() const;
    Handle_Geom_OffsetCurve OffsetCurve() const;
};

class Adaptor3d_Surface 
{
public:
  Adaptor3d_Surface()=0;
 
  Handle_Adaptor3d_Surface ShallowCopy() const;
 
  double FirstUParameter() const;
  
  double LastUParameter() const;
  
  double FirstVParameter() const;
  
  double LastVParameter() const;
  
  GeomAbs_Shape UContinuity() const;
  
  GeomAbs_Shape VContinuity() const;
  
  int NbUIntervals(const GeomAbs_Shape S);
  
  int NbVIntervals(const GeomAbs_Shape S) const;
  
  void UIntervals(TColStd_Array1OfReal &T, const GeomAbs_Shape S) const;
  
  void VIntervals(TColStd_Array1OfReal &T, const GeomAbs_Shape S) const;
  
  opencascade::handle< Adaptor3d_Surface > UTrim(const double First, const double Last, const double Tol) const;
  
  opencascade::handle< Adaptor3d_Surface > VTrim(const double First, const double Last, const double Tol) const;
  
  bool IsUClosed() const;
  
  bool IsVClosed() const;
  
  bool IsUPeriodic() const;
  
  double UPeriod() const;
  
  bool IsVPeriodic() const;
  
  double VPeriod() const;
  
  gp_Pnt Value(const double U, const double V) const;
  
  void D0(const double U, const double V, gp_Pnt &P) const;
  
  void D1(const double U, const double V, gp_Pnt &P, gp_Vec &D1U, gp_Vec &D1V) const;
  
  void D2(const double U, const double V, gp_Pnt &P, gp_Vec &D1U, gp_Vec &D1V, gp_Vec &D2U, gp_Vec &D2V, gp_Vec &D2UV) const;
  
  void D3(const double U, const double V, gp_Pnt &P, gp_Vec &D1U, gp_Vec &D1V, gp_Vec &D2U, gp_Vec &D2V, gp_Vec &D2UV, gp_Vec &D3U, gp_Vec &D3V, gp_Vec &D3UUV, gp_Vec &D3UVV) const;
  
  gp_Vec DN(const double U, const double V, const int Nu, const int Nv) const;
  
  double UResolution(const double R3d) const;
  
  double VResolution(const double R3d) const;
  
  GeomAbs_SurfaceType GetType() const;
  
  gp_Pln Plane() const;
  
  gp_Cylinder Cylinder() const;
  
  gp_Cone Cone() const;
  
  gp_Sphere Sphere() const;
  
  gp_Torus Torus() const;
  
  int UDegree() const;
  
  int NbUPoles() const;
  
  int VDegree() const;
  
  int NbVPoles() const;
  
  int NbUKnots() const;
  
  int NbVKnots() const;
  
  bool IsURational() const;
  
  bool IsVRational() const;
  
  opencascade::handle< Geom_BezierSurface > Bezier() const;
  
  opencascade::handle< Geom_BSplineSurface > BSpline() const;
  
  gp_Ax1 AxeOfRevolution() const;
  
  gp_Dir Direction() const;
  
  opencascade::handle< Adaptor3d_Curve > BasisCurve() const;
  
  opencascade::handle< Adaptor3d_Surface > BasisSurface() const;
  
  double OffsetValue() const;
  
  ~Adaptor3d_Surface();
};

class GeomAdaptor_Surface  : public Adaptor3d_Surface
{
 public:
  GeomAdaptor_Surface();
  
  GeomAdaptor_Surface(const Handle_Geom_Surface& S);

  GeomAdaptor_Surface(const Handle_Geom_Surface& S, const double UFirst, const double ULast, const double VFirst, const double VLast, const double TolU = 0.0, const double TolV = 0.0);

  void Load (const Handle_Geom_Surface& S);

  void Load (const Handle_Geom_Surface& S, const double UFirst, const double ULast, const double VFirst, const double VLast, const double TolU = 0.0, const double TolV = 0.0);

  Handle_Geom_Surface& Surface() const;
};

  
