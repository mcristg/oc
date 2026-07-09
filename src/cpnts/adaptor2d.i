%{
  #include <Standard_Handle.hxx>
  #include <Adaptor2d_Curve2d.hxx>
  #include <Geom2dAdaptor_Curve.hxx>
 %}

class Adaptor2d_Curve2d
{		
  Adaptor2d_Curve2d()=0;
 public:
  virtual gp_Pnt2d Value(const double U) const;
};

class Geom2dAdaptor_Curve  : public Adaptor2d_Curve2d
{
public:
  Geom2dAdaptor_Curve();
  Geom2dAdaptor_Curve(const opencascade::handle< Geom2d_Curve > &C);
  Geom2dAdaptor_Curve(const opencascade::handle< Geom2d_Curve > &C, const double UFirst, const double ULast);
  void Load (const opencascade::handle< Geom2d_Curve > &C);
  void Load (const opencascade::handle< Geom2d_Curve > &C, const double UFirst, const double ULast);
  const opencascade::handle< Geom2d_Curve >& Curve() const;
  double FirstParameter() const;
  double LastParameter() const;
  GeomAbs_Shape Continuity() const;
  int NbIntervals (const GeomAbs_Shape S) const;
  void Intervals (TColStd_Array1OfReal& T, const GeomAbs_Shape S) const;
  opencascade::handle< Adaptor2d_Curve2d > Trim (const double First, const double Last, const double Tol) const;
  bool IsClosed() const;
  bool IsPeriodic() const;
  double Period() const;
  gp_Pnt2d Value (const double U) const;
  void D0 (const double U, gp_Pnt2d& P) const;
  void D1 (const double U, gp_Pnt2d& P, gp_Vec2d& V) const;
  void D2 (const double U, gp_Pnt2d& P, gp_Vec2d& V1, gp_Vec2d& V2) const;
  void D3 (const double U, gp_Pnt2d& P, gp_Vec2d& V1, gp_Vec2d& V2, gp_Vec2d& V3) const;
  gp_Vec2d DN (const double U, const int N) const;
  double Resolution (const double Ruv) const;
  GeomAbs_CurveType GetType() const;
  gp_Lin2d Line() const;
  gp_Circ2d Circle() const;
  gp_Elips2d Ellipse() const;
  gp_Hypr2d Hyperbola() const;
  gp_Parab2d Parabola() const;
  int Degree() const;
  bool IsRational() const;
  int NbPoles() const;
  int NbKnots() const;
  virtual int NbSamples() const;
  opencascade::handle< Geom2d_BezierCurve > Bezier() const;
  opencascade::handle< Geom2d_BSplineCurve > BSpline() const;
};

