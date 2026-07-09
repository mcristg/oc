
%{
#include <Geom_Curve.hxx>
#include <gp_GTrsf2d.hxx>
#include <Geom_Surface.hxx>
#include <Geom_Geometry.hxx>
#include <Geom_BoundedCurve.hxx>
#include <Geom_BoundedSurface.hxx>
#include <Geom_BezierCurve.hxx>
#include <Geom_BezierSurface.hxx>
#include <Geom_BSplineCurve.hxx>
#include <Geom_BSplineSurface.hxx>
#include <Geom_Circle.hxx>
#include <Geom_Conic.hxx>
#include <Geom_ConicalSurface.hxx>
#include <Geom_CylindricalSurface.hxx>
#include <Geom_Ellipse.hxx>
#include <Geom_ElementarySurface.hxx>
#include <Geom_Hyperbola.hxx>
#include <Geom_Line.hxx>
#include <Geom_OffsetCurve.hxx>
#include <Geom_OffsetSurface.hxx>
#include <Geom_Parabola.hxx>
#include <Geom_Plane.hxx>
#include <Geom_RectangularTrimmedSurface.hxx>
#include <Geom_SphericalSurface.hxx>
#include <Geom_SurfaceOfLinearExtrusion.hxx>
#include <Geom_SurfaceOfRevolution.hxx>
#include <Geom_SweptSurface.hxx>
#include <Geom_ToroidalSurface.hxx>
#include <Geom_TrimmedCurve.hxx>
#include <Geom2d_Geometry.hxx>
#include <Geom2d_Curve.hxx>
#include <Geom2d_Line.hxx>
#include <Geom2d_OffsetCurve.hxx>
#include <Geom2d_Conic.hxx>
#include <Geom2d_Circle.hxx>
#include <Geom2d_Ellipse.hxx>
#include <Geom2d_Hyperbola.hxx>
#include <Geom2d_Parabola.hxx>
#include <Geom2d_BoundedCurve.hxx>
#include <Geom2d_BezierCurve.hxx>
#include <Geom2d_BSplineCurve.hxx>
#include <Geom2d_TrimmedCurve.hxx>

typedef occ::handle<Geom_Geometry> Handle_Geom_Geometry;
typedef occ::handle<Geom_BoundedCurve> Handle_Geom_BoundedCurve;
typedef occ::handle<Geom_Conic> Handle_Geom_Conic;
typedef occ::handle<Geom_ElementarySurface> Handle_Geom_ElementarySurface;
typedef occ::handle<Geom_SweptSurface> Handle_Geom_SweptSurface;
typedef occ::handle<Geom_BezierCurve> Handle_Geom_BezierCurve;
typedef occ::handle<Geom_BSplineCurve> Handle_Geom_BSplineCurve;
typedef occ::handle<Geom_Circle> Handle_Geom_Circle;
typedef occ::handle<Geom_Ellipse> Handle_Geom_Ellipse;
typedef occ::handle<Geom_TrimmedCurve> Handle_Geom_TrimmedCurve;
typedef occ::handle<Geom_OffsetCurve> Handle_Geom_OffsetCurve;
typedef occ::handle<Geom_Hyperbola> Handle_Geom_Hyperbola;
typedef occ::handle<Geom_Line> Handle_Geom_Line;
typedef occ::handle<Geom_Parabola> Handle_Geom_Parabola;
typedef occ::handle<Geom_BezierSurface> Handle_Geom_BezierSurface;
typedef occ::handle<Geom_BSplineSurface> Handle_Geom_BSplineSurface;
typedef occ::handle<Geom_RectangularTrimmedSurface> Handle_Geom_RectangularTrimmedSurface;
typedef occ::handle<Geom_SphericalSurface> Handle_Geom_SphericalSurface;
typedef occ::handle<Geom_ToroidalSurface> Handle_Geom_ToroidalSurface;
typedef occ::handle<Geom_OffsetSurface> Handle_Geom_OffsetSurface;
typedef occ::handle<Geom_SurfaceOfRevolution> Handle_Geom_SurfaceOfRevolution;
typedef occ::handle<Geom_ConicalSurface> Handle_Geom_ConicalSurface;
typedef occ::handle<Geom_CylindricalSurface> Handle_Geom_CylindricalSurface;
typedef occ::handle<Geom_SurfaceOfLinearExtrusion> Handle_Geom_SurfaceOfLinearExtrusion;
typedef occ::handle<Geom_Plane> Handle_Geom_Plane;

#include <NCollection_Array2.hxx>
typedef NCollection_Array2<gp_Pnt> TColgp_Array2OfPnt;
%}

%rename(Geom_Geometry) Handle_Geom_Geometry;
%rename(Geom_Curve) Handle_Geom_Curve;
%rename(Geom_Surface) Handle_Geom_Surface;
%rename(Geom_Conic) Handle_Geom_Conic;
%rename(Geom_ElementarySurface) Handle_Geom_ElementarySurface;
%rename(Geom_SweptSurface) Handle_Geom_SweptSurface;
%rename(Geom_BoundedCurve) Handle_Geom_BoundedCurve;
%rename(Geom_BoundedSurface) Handle_Geom_BoundedSurface;
%rename(Geom_BezierCurve) Handle_Geom_BezierCurve;
%rename(Geom_BSplineCurve) Handle_Geom_BSplineCurve;
%rename(Geom_Circle) Handle_Geom_Circle;
%rename(Geom_Ellipse) Handle_Geom_Ellipse;
%rename(Geom_TrimmedCurve) Handle_Geom_TrimmedCurve;
%rename(Geom_OffsetCurve) Handle_Geom_OffsetCurve;
%rename(Geom_Hyperbola) Handle_Geom_Hyperbola;
%rename(Geom_Line) Handle_Geom_Line;
%rename(Geom_Parabola) Handle_Geom_Parabola;
%rename(Geom_BezierSurface) Handle_Geom_BezierSurface;
%rename(Geom_BSplineSurface) Handle_Geom_BSplineSurface;
%rename(Geom_RectangularTrimmedSurface) Handle_Geom_RectangularTrimmedSurface;
%rename(Geom_SphericalSurface) Handle_Geom_SphericalSurface;
%rename(Geom_ToroidalSurface) Handle_Geom_ToroidalSurface;
%rename(Geom_OffsetSurface) Handle_Geom_OffsetSurface;
%rename(Geom_SurfaceOfRevolution) Handle_Geom_SurfaceOfRevolution;
%rename(Geom_ConicalSurface) Handle_Geom_ConicalSurface;
%rename(Geom_CylindricalSurface) Handle_Geom_CylindricalSurface;
%rename(Geom_SurfaceOfLinearExtrusion) Handle_Geom_SurfaceOfLinearExtrusion;
%rename(Geom_Plane) Handle_Geom_Plane;

%nodefaultdtor Handle_Geom_Geometry;
class Handle_Geom_Geometry : public Handle_Standard_Transient
{
  Handle_Geom_Geometry()=0;
};

%extend Handle_Geom_Geometry
{
  void Mirror (const gp_Pnt& P) {
    (*self)->Mirror(P);
  }
  void Mirror (const gp_Ax1& A1) {
    (*self)->Mirror(A1);
  }
  void Mirror (const gp_Ax2& A2) {
    (*self)->Mirror(A2);
  }
  void Rotate (const gp_Ax1& A1, const double Ang) {
    (*self)->Rotate(A1, Ang);
  }
  void Scale (const gp_Pnt& P, const double S) {
    (*self)->Scale(P, S);
  }
  void Translate (const gp_Vec& V) {
    (*self)->Translate(V);
  }
  void Translate (const gp_Pnt& P1, const gp_Pnt& P2) {
    (*self)->Translate(P1, P2);
  }
  void Transform (const gp_Trsf& T) {
    (*self)->Transform(T);
  }
  Handle_Geom_Geometry Mirrored (const gp_Pnt& P) {
    return (*self)->Mirrored(P);
  }
  Handle_Geom_Geometry Mirrored (const gp_Ax1& A1) {
    return (*self)->Mirrored(A1);
  }
  Handle_Geom_Geometry Mirrored (const gp_Ax2& A2) {
    return (*self)->Mirrored(A2);
  }
  Handle_Geom_Geometry Rotated (const gp_Ax1& A1, const double Ang) {
    return (*self)->Rotated(A1, Ang);
  }
  Handle_Geom_Geometry Scaled (const gp_Pnt& P, const double S) {
    return (*self)->Scaled(P, S);
  }
  Handle_Geom_Geometry Transformed (const gp_Trsf& T) {
    return (*self)->Transformed(T);
  }
  Handle_Geom_Geometry Translated (const gp_Vec& V) {
    return (*self)->Translated(V);
  }
  Handle_Geom_Geometry Translated (const gp_Pnt& P1, const gp_Pnt& P2) {
    return (*self)->Translated(P1, P2);
  }
  Handle_Geom_Geometry Copy() {
    return (*self)->Copy();
  }
    
}
%nodefaultdtor Handle_Geom_Curve;
class Handle_Geom_Curve: public Handle_Geom_Geometry
{
  Handle_Geom_Curve()=0;
};

%extend Handle_Geom_Curve
{
  void Reverse() {
    (*self)->Reverse();
  }
  double ReversedParameter (const double U) {
    return (*self)->ReversedParameter(U);
  }
  double TransformedParameter (const double U, const gp_Trsf& T) {
    return (*self)->TransformedParameter(U, T);
  }
  double ParametricTransformation (const gp_Trsf& T) {
    return (*self)->ParametricTransformation(T);
  }
  Handle_Geom_Curve Reversed() {
    return (*self)->Reversed();
  }
  double FirstParameter() {
    return (*self)->FirstParameter();
  }  
  double LastParameter() {
    return (*self)->LastParameter();
  }  
  bool IsClosed() {
    return (*self)->IsClosed();
  }  
  bool IsPeriodic() {
    return (*self)->IsPeriodic();
  }  
  double Period() {
    return (*self)->Period();
  }
  GeomAbs_Shape Continuity() {
    return (*self)->Continuity();
  }
  bool IsCN (const int N) {
    return (*self)->IsCN(N);
  }
  void D0 (const double U, gp_Pnt& P) {
    (*self)->D0(U, P);
  }
  void D1 (const double U, gp_Pnt& P, gp_Vec& V1) {
    (*self)->D1(U, P, V1);
  }
  void D2 (const double U, gp_Pnt& P, gp_Vec& V1, gp_Vec& V2) {
    (*self)->D2(U, P, V1, V2);
  }
  void D3 (const double U, gp_Pnt& P, gp_Vec& V1, gp_Vec& V2, gp_Vec& V3) {
    (*self)->D3(U, P, V1, V2, V3);
  }
  gp_Vec DN (const double U, const int N) {
    return (*self)->DN(U, N);
  }
  gp_Pnt Value(const double U) {
    return (*self)->Value(U);
  }
  int GeometryType()
  {
    if (STANDARD_TYPE(Geom_BezierCurve) == (*self)->DynamicType())
      {
	return 100;
      }
    else if (STANDARD_TYPE(Geom_BSplineCurve) == (*self)->DynamicType())
      {
	return 101;
      }
    else if (STANDARD_TYPE(Geom_Circle) == (*self)->DynamicType())
      {
	return 102;
      }
    else if (STANDARD_TYPE(Geom_Ellipse) == (*self)->DynamicType())
      {
	return 103;
      }
    else if (STANDARD_TYPE(Geom_TrimmedCurve) == (*self)->DynamicType())
      {
	return 104;
      }
    else if (STANDARD_TYPE(Geom_OffsetCurve) == (*self)->DynamicType())
      {
	return 105;
      }
    else if (STANDARD_TYPE(Geom_Hyperbola) == (*self)->DynamicType())
      {
	return 106;
      }
    else if (STANDARD_TYPE(Geom_Line) == (*self)->DynamicType())
      {
	return 107;
      }
    else if (STANDARD_TYPE(Geom_Parabola) == (*self)->DynamicType())
      {
	return 108;
      }
    
    return -1;
  }
  
}
%nodefaultdtor Handle_Geom_Surface;
class Handle_Geom_Surface: public Handle_Geom_Geometry
{
  Handle_Geom_Surface()=0;
};

%extend Handle_Geom_Surface
{
  void UReverse() {
    (*self)->UReverse();
  }
  Handle_Geom_Surface UReversed() {
    return (*self)->UReversed();
  }
  double UReversedParameter(const double U) {
    return (*self)->UReversedParameter(U);
  }
  void VReverse() {
    (*self)->VReverse();
  }
  double VReversedParameter(const double V) {
    return (*self)->VReversedParameter(V);
  }
  void TransformParameters (double& U, double& V, const gp_Trsf& T) {
    (*self)->TransformParameters(U, V, T);
  }
  gp_GTrsf2d ParametricTransformation (const gp_Trsf& T) {
    return (*self)->ParametricTransformation(T);
  }
  void Bounds (double& U1, double& U2, double& V1, double& V2) {
    (*self)->Bounds(U1, U2, V1, V2);
  }
  bool IsUClosed() {
    return (*self)->IsUClosed();
  }  
  bool IsVClosed() {
    return (*self)->IsVClosed();
  }
  bool IsUPeriodic() {
    return (*self)->IsUPeriodic();
  }  
  double UPeriod() {
    return (*self)->UPeriod();
  }  
  bool IsVPeriodic() {
    return (*self)->IsVPeriodic();
  }  
  double VPeriod() {
    return (*self)->VPeriod();
  }
  Handle_Geom_Curve UIso(const double U) {
    return (*self)->UIso(U);
  }
  Handle_Geom_Curve VIso(const double V) {
    return (*self)->VIso(V);
  }
  GeomAbs_Shape Continuity() {
    return (*self)->Continuity();
  }
  bool IsCNu (const int N) {
    return (*self)->IsCNu(N);
  }
  bool IsCNv (const int N) {
    return (*self)->IsCNv(N);
  }
  void D0 (const double U, const double V, gp_Pnt& P) {
    (*self)->D0(U, V, P);
  }
  void D1 (const double U, const double V, gp_Pnt& P, gp_Vec& D1U, gp_Vec& D1V) {
    (*self)->D1(U, V, P, D1U, D1V);
  }
  void D3 (const double U, const double V, gp_Pnt& P, gp_Vec& D1U, gp_Vec& D1V, gp_Vec& D2U, gp_Vec& D2V, gp_Vec& D2UV, gp_Vec& D3U, gp_Vec& D3V, gp_Vec& D3UUV, gp_Vec& D3UVV) {
    (*self)->D3(U, V, P, D1U, D1V, D2U, D2V, D2UV, D3U, D3V, D3UUV, D3UVV);
  }
  gp_Vec DN (const double U, const double V, const int Nu, const int Nv) {
    return (*self)->DN(U, V, Nu, Nv);
  }
  gp_Pnt Value(const double U,const double V) {
    return (*self)->Value(U, V);
  }  
  int GeometryType()
  {
    if (STANDARD_TYPE(Geom_BezierSurface) == (*self)->DynamicType())
      {
	return 200;
      }
    else if (STANDARD_TYPE(Geom_BSplineSurface) == (*self)->DynamicType())
      {
	return 201;
      }
    else if (STANDARD_TYPE(Geom_RectangularTrimmedSurface) == (*self)->DynamicType())
      {
	return 202;
      }
    else if (STANDARD_TYPE(Geom_SphericalSurface) == (*self)->DynamicType())
      {
	return 203;
      }
    else if (STANDARD_TYPE(Geom_ToroidalSurface) == (*self)->DynamicType())
      {
	return 204;
      }
    else if (STANDARD_TYPE(Geom_OffsetSurface) == (*self)->DynamicType())
      {
	return 205;
      }
    else if (STANDARD_TYPE(Geom_SurfaceOfRevolution) == (*self)->DynamicType())
      {
	return 206;
      }
    else if (STANDARD_TYPE(Geom_ConicalSurface) == (*self)->DynamicType())
      {
	return 207;
      }
    else if (STANDARD_TYPE(Geom_CylindricalSurface) == (*self)->DynamicType())
      {
	return 208;
      }
    else if (STANDARD_TYPE(Geom_SurfaceOfLinearExtrusion) == (*self)->DynamicType())
      {
	return 209;
      }
    else if (STANDARD_TYPE(Geom_Plane) == (*self)->DynamicType())
      {
	return 210;
      }
    
    return -1;
  }
}
%nodefaultdtor Handle_Geom_BoundedCurve;
class Handle_Geom_BoundedCurve : public Handle_Geom_Curve
{
  Handle_Geom_BoundedCurve()=0;
};

%extend Handle_Geom_BoundedCurve
{
	gp_Pnt EndPoint()	{
	  return (*self)->EndPoint();
	}	
	gp_Pnt StartPoint() {
	  return (*self)->StartPoint();
	}
}
%nodefaultdtor Handle_Geom_Conic;
class Handle_Geom_Conic : public Handle_Geom_Curve
{
  Handle_Geom_Conic()=0;
};

%extend Handle_Geom_Conic
{
  void SetAxis (const gp_Ax1& A1) {
    (*self)->SetAxis(A1);
  }
  void SetLocation (const gp_Pnt& P) {
    (*self)->SetLocation(P);
  }
  void SetPosition (const gp_Ax2& A2) {
    (*self)->SetPosition(A2);
  }
  gp_Ax1 Axis() {
    return (*self)->Axis();
  }
  double Eccentricity() {
    return (*self)->Eccentricity();
  }
  gp_Pnt Location() {
    return (*self)->Location();
  }
  gp_Ax2 Position() {
    return (*self)->Position();
  }
  gp_Ax1 XAxis() {
    return (*self)->XAxis();
  }
  gp_Ax1 YAxis() {
    return (*self)->YAxis();
  }
}
%nodefaultdtor Handle_Geom_BoundedSurface;
class Handle_Geom_BoundedSurface : public Handle_Geom_Surface
{
  Handle_Geom_BoundedSurface()=0;
};
%nodefaultdtor Handle_Geom_ElementarySurface;
class Handle_Geom_ElementarySurface : public Handle_Geom_Surface
{
  Handle_Geom_ElementarySurface()=0;
};

%extend Handle_Geom_ElementarySurface
{

	gp_Ax1 Axis()
	{
		return (*self)->Axis();
	}
	
	gp_Pnt Location()
	{
		return (*self)->Location();
	}

	gp_Ax3 Position()
	{
		return (*self)->Position();
	}
	
}
%nodefaultdtor Handle_Geom_SweptSurface;
class Handle_Geom_SweptSurface : public Handle_Geom_Surface
{
  Handle_Geom_SweptSurface()=0;
};

%extend Handle_Geom_SweptSurface
{

	gp_Dir Direction()
	{
		return (*self)->Direction();
	}

    Handle_Geom_Curve BasisCurve()
	{
		return (*self)->BasisCurve();
	}

}
%nodefaultdtor Handle_Geom_BezierCurve;
class Handle_Geom_BezierCurve : public Handle_Geom_BoundedCurve {
  Handle_Geom_BezierCurve()=0;
};

%extend Handle_Geom_BezierCurve
{
  Handle_Geom_BezierCurve(const TColgp_Array1OfPnt& CurvePoles){
    return new Handle_Geom_BezierCurve(new Geom_BezierCurve(CurvePoles));
  }
  Handle_Geom_BezierCurve(const TColgp_Array1OfPnt& CurvePoles, const TColStd_Array1OfReal& PoleWeights){
    return new Handle_Geom_BezierCurve(new Geom_BezierCurve(CurvePoles, PoleWeights));
  }
  void Delete() {
    self->~Handle_Geom_BezierCurve();
  }  
  void Increase (const int Degree) {
    (*self)->Increase(Degree);
  }
  void InsertPoleAfter (const int Index, const gp_Pnt& P) {
    (*self)->InsertPoleAfter(Index, P);
  }
  void InsertPoleAfter (const int Index, const gp_Pnt& P, const double Weight) {

    (*self)->InsertPoleAfter(Index, P, Weight);
  }
  void InsertPoleBefore (const int Index, const gp_Pnt& P) {
    (*self)->InsertPoleBefore(Index, P);
  }
  void InsertPoleBefore (const int Index, const gp_Pnt& P, const double Weight) {
    (*self)->InsertPoleBefore(Index, P, Weight);
  }
  void RemovePole (const int Index) {
    (*self)->RemovePole(Index);
  }
  void Segment (const double U1, const double U2) {
    (*self)->Segment(U1, U2);
  }
  void SetPole (const int Index, const gp_Pnt& P) {
    (*self)->SetPole(Index, P);
  }
  void SetPole (const int Index, const gp_Pnt& P, const double Weight) {
    (*self)->SetPole(Index, P, Weight);
  }
  void SetWeight (const int Index, const double Weight) {
    (*self)->SetWeight(Index, Weight);
  }
  bool IsRational() {
    return (*self)->IsRational();
  }
  int Degree() {
    return (*self)->Degree();
  }
  int NbPoles() {
    return (*self)->NbPoles();
  }
  gp_Pnt Pole(const int Index) {
    return (*self)->Pole(Index);
  }
  const TColgp_Array1OfPnt& Poles () {
    return (*self)->Poles();
  }
  double Weight(const int Index) {
    return (*self)->Weight(Index);
  }
  const TColStd_Array1OfReal* Weights() {
    return (*self)->Weights();
  }
  void Resolution(double Tolerance3d, double& UTolerance) {
    return (*self)->Resolution(Tolerance3d, UTolerance);
  }
  static int MaxDegree() {
    return Geom_BezierCurve::MaxDegree();
  }
}


%nodefaultdtor Handle_Geom_BSplineCurve;
class Handle_Geom_BSplineCurve : public Handle_Geom_BoundedCurve {
    Handle_Geom_BSplineCurve()=0;
};

%extend Handle_Geom_BSplineCurve
{
	//TODO check that this is not a big memory leak
	Handle_Geom_BSplineCurve(const TColgp_Array1OfPnt& Poles, const TColStd_Array1OfReal& Weights,
		    const TColStd_Array1OfReal& Knots, const TColStd_Array1OfInteger& Multiplicities,
		    const int Degree, const bool Periodic = false,
		    const bool CheckRational = true){
		return new Handle_Geom_BSplineCurve(new Geom_BSplineCurve(
			Poles, Weights, Knots, Multiplicities, Degree, Periodic, CheckRational));
	}

    //TODO check that this is not a big memory leak
    Handle_Geom_BSplineCurve(const TColgp_Array1OfPnt& Poles, const TColStd_Array1OfReal& Knots, 
            const TColStd_Array1OfInteger& Multiplicities, const int Degree, 
            const bool Periodic = false){
        return new Handle_Geom_BSplineCurve(new Geom_BSplineCurve(Poles, Knots, Multiplicities, 
            Degree, Periodic));
    }
    void Delete() {
    self->~Handle_Geom_BSplineCurve();
  }  
  void SetKnot(const int Index,const double K)
  {
    (*self)->SetKnot(Index,K);
  }
  
  void SetKnot(const int Index,const double K,const int M)
  {
    (*self)->SetKnot(Index,K,M);
  }

  void SetPeriodic()
  {
    (*self)->SetPeriodic();
  }
  
  void SetNotPeriodic()
  {
    (*self)->SetNotPeriodic();
  }
  
  void SetOrigin(const int Index)
  {
     (*self)->SetOrigin(Index);
  }

  void SetOrigin(const double U,const double Tol)
  {
     (*self)->SetOrigin(U,Tol);
  }
  
  void SetPole(const int Index,const gp_Pnt& P)
  {
    (*self)->SetPole(Index,P);
  }
  
  void SetPole(const int Index,const gp_Pnt& P,const double Weight)
  {
    (*self)->SetPole(Index,P,Weight);
  }
  
  void MovePoint(const double U,const gp_Pnt& P,const int Index1,const int Index2,int& FirstModifiedPole,int& LastModifiedPole)
  {
    (*self)->MovePoint(U,P,Index1,Index2,FirstModifiedPole,LastModifiedPole);
  }

  void MovePointAndTangent(const double U,const gp_Pnt& P,const gp_Vec& Tangent,const double Tolerance,const int StartingCondition,const int EndingCondition)
  {
    int ErrorStatus =0;
	(*self)->MovePointAndTangent(U,P,Tangent,Tolerance,StartingCondition,EndingCondition,ErrorStatus);
  }
  
  bool IsRational() const
  {
    return (*self)->IsRational();
  }
  
  GeomAbs_Shape Continuity() const
  {
    return (*self)->Continuity();
  }
  
  int Degree() const
  {
    return (*self)->Degree();
  }
  
  /*
  gp_Vec dN(const double U,const int N) const
  {
    return (*self)->DN(U,N);
  }
  */
  
  gp_Pnt LocalValue(const double U,const int FromK1,const int ToK2) const
  {
    return (*self)->LocalValue(U,FromK1,ToK2);
  }
  
  gp_Pnt EndPoint() const
  {
    return (*self)->EndPoint();
  }
  
  gp_Pnt StartPoint() const
  {
    return (*self)->StartPoint();
  }
  
  int NbKnots() const
  {
    return (*self)->NbKnots();
  }
  
  int NbPoles() const
  {
    return (*self)->NbPoles();
  }
  
  gp_Pnt Pole(const int Index) const
  {
    return (*self)->Pole(Index);
  }
  const TColgp_Array1OfPnt &Poles() const
  {
    return (*self)->Poles();
  }

  double Weight(const int Index) const
  {
    return (*self)->Weight(Index);
  }
  
  double Knot(const int Index) const
  {
    return (*self)->Knot(Index);
  }

  const TColStd_Array1OfReal &Knots() const
  {
    return (*self)->Knots();
  }

  
  int Multiplicity(const int Index) const
  {
    return (*self)->Multiplicity(Index);
  }
  
}
%nodefaultdtor Handle_Geom_Circle;
class Handle_Geom_Circle : public Handle_Geom_Conic {
  Handle_Geom_Circle()=0;
};
%extend Handle_Geom_Circle
{
	//TODO check that this is not a big memory leak
  Handle_Geom_Circle(const gp_Ax2& A2, const double R){
    return new Handle_Geom_Circle(new Geom_Circle(A2, R));
  }
  void Delete() {
    self->~Handle_Geom_Circle();
  }  
  double Radius()
  {
    return (*self)->Radius();
  }

}
%nodefaultdtor Handle_Geom_Ellipse;
class Handle_Geom_Ellipse : public Handle_Geom_Conic {
  Handle_Geom_Ellipse()=0;
};

%extend Handle_Geom_Ellipse
{
  Handle_Geom_Ellipse(const gp_Ax2& A2, const double majorRadius, const double minorRadius){
    return new Handle_Geom_Ellipse(new Geom_Ellipse(A2, majorRadius, minorRadius));
  }
  void Delete() {
    self->~Handle_Geom_Ellipse();
  }  
    gp_Ax1 Directrix1()
	{
		return (*self)->Directrix1();
	}

    gp_Ax1 Directrix2()
	{
		return (*self)->Directrix2();
	}
    
    double FocalDistance()
	{
		return (*self)->Focal();
	}
    
    gp_Pnt Focus1()
	{
		return (*self)->Focus1();
	}
    
    gp_Pnt Focus2()
	{
    	return (*self)->Focus2();
	}
    
    double MajorRadius()
	{
		return (*self)->MajorRadius();
	}
  
    double MinorRadius()
	{
		return (*self)->MinorRadius();
	}
    
    //parameter =  (1 - e * e) * MajorRadius
    
    double Parameter()
	{
		return (*self)->Parameter();
	}

}
%nodefaultdtor Handle_Geom_TrimmedCurve;
class Handle_Geom_TrimmedCurve : public Handle_Geom_BoundedCurve {
  Handle_Geom_TrimmedCurve()=0;
};

%extend Handle_Geom_TrimmedCurve
{

    Handle_Geom_TrimmedCurve(const Handle_Geom_Curve& C, const double U1, const double U2, 
        const bool Sense = true){
          return new Handle_Geom_TrimmedCurve(new Geom_TrimmedCurve(C, U1, U2, Sense));
    }
  void Delete() {
    self->~Handle_Geom_TrimmedCurve();
  }  
    Handle_Geom_Curve BasisCurve()
	{
		return (*self)->BasisCurve();
	}
}
%nodefaultdtor Handle_Geom_OffsetCurve;
class Handle_Geom_OffsetCurve : public Handle_Geom_Curve {
  Handle_Geom_OffsetCurve()=0;
};

%extend Handle_Geom_OffsetCurve
{

    Handle_Geom_OffsetCurve(const Handle_Geom_Curve& C, const double Offset, const gp_Dir& V){
          return new Handle_Geom_OffsetCurve(new Geom_OffsetCurve(C, Offset, V));
    }
    void Delete() {
      self->~Handle_Geom_OffsetCurve();
    }  
    gp_Dir Direction()
    {
    	return (*self)->Direction();
    }
    
    double Offset()
    {
    	return (*self)->Offset();
    }
    /*
    void getValueAt(double u, gp_Pnt &p, gp_Pnt &pBasis, gp_Vec &v1Basis)
    {
    	return (*self)->Value(u, p, pBasis, v1Basis);
    }
    */
    Handle_Geom_Curve BasisCurve()
    {
    	return (*self)->BasisCurve();
    }    

}
%nodefaultdtor Handle_Geom_Hyperbola;
class Handle_Geom_Hyperbola : public Handle_Geom_Conic {
    Handle_Geom_Hyperbola()=0;
};

%extend Handle_Geom_Hyperbola
{

	//TODO check that this is not a big memory leak
	Handle_Geom_Hyperbola(const gp_Ax2& A2, const double majorRadius, const double minorRadius){
		return new Handle_Geom_Hyperbola(new Geom_Hyperbola(A2, majorRadius, minorRadius));
	}
	void Delete() {
	  self->~Handle_Geom_Hyperbola();
	}  
    gp_Ax1 Asymptote1()
	{
		return (*self)->Asymptote1();
	}

    gp_Ax1 Asymptote2()
	{
		return (*self)->Asymptote2();
	}
    
    gp_Hypr ConjugateBranch1()
	{
		return (*self)->ConjugateBranch1();
	}
    
    gp_Hypr ConjugateBranch2()
	{
		return (*self)->ConjugateBranch2();
	}
    
    gp_Hypr OtherBranch()
	{
		return (*self)->OtherBranch();
	}
    
    gp_Ax1 Directrix1()
	{
		return (*self)->Directrix1();
	}
    
    gp_Ax1 Directrix2()
	{
		return (*self)->Directrix2();
	}
    
    double FocalDistance()
	{
		return (*self)->Focal();
	}
    
    gp_Pnt Focus1()
	{
		return (*self)->Focus1();
	}
    
    gp_Pnt Focus2()
	{
		return (*self)->Focus2();
	}
    
    double MajorRadius()
	{
		return (*self)->MajorRadius();
	}
  
	double MinorRadius()
	{
		return (*self)->MinorRadius();
	}

    double Parameter()
	{
		return (*self)->Parameter();
	}

    
}
%nodefaultdtor Handle_Geom_Line;
class Handle_Geom_Line : public Handle_Geom_Curve {
    Handle_Geom_Line()=0;
};

%extend Handle_Geom_Line
{

	//TODO check that this is not a big memory leak
	Handle_Geom_Line(const gp_Ax1& A1){
		return new Handle_Geom_Line(new Geom_Line(A1));
	}

	//TODO check that this is not a big memory leak
	Handle_Geom_Line(const gp_Pnt& P, const gp_Dir& V){
		return new Handle_Geom_Line(new Geom_Line(P, V));
	}
	void Delete() {
	  self->~Handle_Geom_Line();
	}  
	gp_Ax1 Position()
	{
		return (*self)->Position();
	}

	gp_Lin Lin()
	{
		return (*self)->Lin();
	}

}
%nodefaultdtor Handle_Geom_Parabola;
class Handle_Geom_Parabola : public Handle_Geom_Conic {
  Handle_Geom_Parabola()=0;
};


%extend Handle_Geom_Parabola
{

	Handle_Geom_Parabola(const gp_Ax2& A2, const double Focal){
		return new Handle_Geom_Parabola(new Geom_Parabola(A2, Focal));
	}
	void Delete() {
	  self->~Handle_Geom_Parabola();
	}  
	gp_Ax1 Directrix()
	{
		return (*self)->Directrix();
	}
	
	double FocalDistance()
	{
		return (*self)->Focal();
	}
	
	gp_Pnt Focus()
	{
		return (*self)->Focus();
	}

	double Parameter()
	{
		return (*self)->Parameter();
	}

}
%nodefaultdtor Handle_Geom_BezierSurface;
class Handle_Geom_BezierSurface : public Handle_Geom_BoundedSurface {
  Handle_Geom_BezierSurface()=0;
};

%extend Handle_Geom_BezierSurface
{

	Handle_Geom_BezierSurface(const TColgp_Array2OfPnt& SurfacePoles, const TColStd_Array2OfReal& PoleWeights){
		return new Handle_Geom_BezierSurface(new Geom_BezierSurface(SurfacePoles, PoleWeights));
	}
	void Delete() {
	  self->~Handle_Geom_BezierSurface();
	}  

	int NbUPoles()
    {
        return (*self)->NbUPoles();
    }
   
    int NbVPoles()
    {
        return (*self)->NbVPoles();
    }
    
    int UDegree()
    {
        return (*self)->UDegree();
    }
    
    int VDegree()
    {
        return (*self)->VDegree();
    }
    
    gp_Pnt Pole(const int indexU, const int indexV)
    {
        return (*self)->Pole(indexU, indexV);
    }

    // TODO
    //void poles(TColgp_HArray2OfPnt& outArray)
    //{
    //    return (*self)->Poles(outArray);
    //}
    
      
    double Weight(const int indexU, const int indexV)
    {
        return (*self)->Weight(indexU, indexV);
    }
    
    bool IsURational()
    {
        return (*self)->IsURational();
    }
    
    bool IsVRational()
    {
        return (*self)->IsVRational();
    }
    static int MaxDegree() {
      return Geom_BezierSurface::MaxDegree();
    }
    void Resolution(double tolerance3d, double& toleranceU, double& toleranceV)
    {
        return (*self)->Resolution(tolerance3d, toleranceU, toleranceV);
    }

}
%nodefaultdtor Handle_Geom_BSplineSurface;
class Handle_Geom_BSplineSurface : public Handle_Geom_BoundedSurface  {
  Handle_Geom_BSplineSurface()=0;
};

%extend Handle_Geom_BSplineSurface
{

    Handle_Geom_BSplineSurface(const TColgp_Array2OfPnt& Poles, const TColStd_Array2OfReal& Weights, const TColStd_Array1OfReal& UKnots, 
            const TColStd_Array1OfReal& VKnots, const TColStd_Array1OfInteger& UMults, const TColStd_Array1OfInteger& VMults, 
            const int UDegree, const int VDegree, const bool UPeriodic = false, 
            const bool VPeriodic = false) {
        return new Handle_Geom_BSplineSurface(new Geom_BSplineSurface(Poles, Weights, UKnots, VKnots, UMults, VMults,
            UDegree, VDegree, UPeriodic, VPeriodic));
    }
    void Delete() {
	  self->~Handle_Geom_BSplineSurface();
	}  

	bool IsURational()
    {
        return (*self)->IsURational();
    }
    
    bool IsVRational()
    {
        return (*self)->IsVRational();
    }
    
	int FirstUKnotIndex()
    {
        return (*self)->FirstUKnotIndex();
    }
    
	int FirstVKnotIndex()
    {
        return (*self)->FirstVKnotIndex();
    }
    
    int LastUKnotIndex()
    {
        return (*self)->LastUKnotIndex();
    }
    
    int LastVKnotIndex()
    {
        return (*self)->LastVKnotIndex();
    }
    
    int NbUPoles()
    {
        return (*self)->NbUPoles();
    }
   
    int NbVPoles()
    {
        return (*self)->NbVPoles();
    }
    
    int NbUKnots()
    {
        return (*self)->NbUKnots();
    }
   
    int NbVKnots()
    {
        return (*self)->NbVKnots();
    }
    
    gp_Pnt Pole(const int indexU, const int indexV)
    {
        return (*self)->Pole(indexU, indexV);
    }

    // TODO
    //void poles(TColgp_HArray2OfPnt& outArray)
    //{
    //    return (*self)->Poles(outArray);
    //}
    
     
    int UDegree()
    {
        return (*self)->UDegree();
    }
    
    int VDegree()
    {
        return (*self)->VDegree();
    }
     
    double UKnot(const int indexUKnot)
    {
        return (*self)->UKnot(indexUKnot);
    }
    
    double VKnot(const int indexVKnot)
    {
        return (*self)->VKnot(indexVKnot);
    }
    
    // TODO
    //void getKnotsU(TColStd_HArray1OfReal& outArray)
    //{
    //    return (*self)->UKnots(outArray);
    //}
    
    // TODO
    //void getKnotsV(TColStd_HArray1OfReal& outArray)
    //{
    //    return (*self)->VKnots(outArray);
    //}
    
    // TODO
    //void getKnotSequenceU(TColStd_HArray1OfReal& outArray)
    //{
    //    return (*self)->UKnotSequence(outArray);
    //}
    
    // TODO
    //void getKnotSequenceV(TColStd_HArray1OfReal& outArray)
    //{
    //    return (*self)->VKnotSequence(outArray);
    //}
    
    int UMultiplicity(const int indexUKnot)
    {
		return (*self)->UMultiplicity(indexUKnot);
    }
    
    int VMultiplicity(const int indexVKnot)
    {
		return (*self)->VMultiplicity(indexVKnot);
    }
    
    // TODO
    //void getMultiplicitiesU(TColStd_HArray1OfInteger& outArray)
    //{
    //    return (*self)->UMultiplicities(outArray);
    //}
    
    // TODO
    //void getMultiplicitiesV(TColStd_HArray1OfInteger& outArray)
    //{
    //    return (*self)->VMultiplicites(outArray);
    //}
    
    double Weight(const int indexU, const int indexV)
    {
        return (*self)->Weight(indexU, indexV);
    }
    
    //TODO
    //void getWeights(TColStd_HArray1OfReal& outArray)
    //{
    //    return (*self)->Weights(outArray);
    //}
    static int MaxDegree() {
      return Geom_BSplineSurface::MaxDegree();
    }
    void Resolution(double tolerance3d, double& toleranceU, double& toleranceV)
    {
      (*self)->Resolution(tolerance3d, toleranceU, toleranceV);
    }

}
%nodefaultdtor Handle_Geom_RectangularTrimmedSurface;
class Handle_Geom_RectangularTrimmedSurface : public Handle_Geom_BoundedSurface  {
  Handle_Geom_RectangularTrimmedSurface()=0;
};


%extend Handle_Geom_RectangularTrimmedSurface
{

    Handle_Geom_RectangularTrimmedSurface(const Handle_Geom_Surface& S, const double U1, const double U2, 
            const double V1, const double V2, const bool USense = true, 
            const bool VSense = true){
        return new Handle_Geom_RectangularTrimmedSurface(new Geom_RectangularTrimmedSurface(S, U1, U2, V1, V2, USense, VSense));
     }
    void Delete() {
	  self->~Handle_Geom_RectangularTrimmedSurface();
	}  

    Handle_Geom_Surface BasisSurface()
	{
        return (*self)->BasisSurface();	
	}

    void Bounds(double& u1, double& u2, double& v1, double& v2) 
    {
        (*self)->Bounds(u1, u2, v1, v2);
    } 


}
%nodefaultdtor Handle_Geom_SphericalSurface;
class Handle_Geom_SphericalSurface : public Handle_Geom_ElementarySurface {
  Handle_Geom_SphericalSurface()=0;
};

%extend Handle_Geom_SphericalSurface
{

    Handle_Geom_SphericalSurface(const gp_Ax3& A3, const double Radius){
        return new Handle_Geom_SphericalSurface(new Geom_SphericalSurface(A3, Radius));
    }
    void Delete() {
      self->~Handle_Geom_SphericalSurface();
    }  

    gp_Sphere Sphere()
	{
	    return (*self)->Sphere();	
	}

    double Area()
	{
	    return (*self)->Area();	
	}
    
    void Coefficients(double& outA1, double& outA2, double& outA3, double& outB1, double& outB2, double& outB3, double& outC1, double& outC2, double& outC3, double& outD)
	{
		return (*self)->Coefficients(outA1, outA2, outA3, outB1, outB2, outB3, outC1, outC2, outC3, outD);
	}
    
    double Radius()
	{   
		return (*self)->Radius();	
	}
    
    double Volume()
	{   
		return (*self)->Volume();	
	}

}
%nodefaultdtor Handle_Geom_ToroidalSurface;
class Handle_Geom_ToroidalSurface : public Handle_Geom_ElementarySurface {
    Handle_Geom_ToroidalSurface()=0;    
};

%extend Handle_Geom_ToroidalSurface
{

    Handle_Geom_ToroidalSurface(const gp_Ax3& A3, const double MajorRadius, const double MinorRadius){
        return new Handle_Geom_ToroidalSurface(new Geom_ToroidalSurface(A3, MajorRadius, MinorRadius));
    }
    void Delete() {
      self->~Handle_Geom_ToroidalSurface();
    }  
    gp_Torus Torus()
	{
	    return (*self)->Torus();	
	}

    double Area()
	{
	    return (*self)->Area();	
	}
    
    //TODO
    //void getCoefficients(TColStd_HArray1OfReal& outArray)
    //{
    //    return (*self)->Coefficients(outArray);
    //}
    
    double MajorRadius()
	{
		return (*self)->MajorRadius();
	}
  
    double MinorRadius()
	{
		return (*self)->MinorRadius();
	}
    
    double Volume()
	{   
		return (*self)->Volume();	
	}
        
}
%nodefaultdtor Handle_Geom_OffsetSurface;
class Handle_Geom_OffsetSurface : public Handle_Geom_Surface {
  Handle_Geom_OffsetSurface()=0;
};

%extend Handle_Geom_OffsetSurface
{
    Handle_Geom_OffsetSurface(const Handle_Geom_Surface& S, const double Offset){
        return new Handle_Geom_OffsetSurface(new Geom_OffsetSurface(S, Offset)); 
    }
    void Delete() {
      self->~Handle_Geom_OffsetSurface();
    }  
    double Offset()
	{
		return (*self)->Offset();	
	}
	
	Handle_Geom_Surface BasisSurface()
	{
        return (*self)->BasisSurface();	
	}
	
}
%nodefaultdtor Handle_Geom_SurfaceOfRevolution;
class Handle_Geom_SurfaceOfRevolution : public Handle_Geom_SweptSurface {
  Handle_Geom_SurfaceOfRevolution()=0;
};

%extend Handle_Geom_SurfaceOfRevolution
{

    Handle_Geom_SurfaceOfRevolution(const Handle_Geom_Curve& C, const gp_Ax1& A1){
        return new Handle_Geom_SurfaceOfRevolution(new Geom_SurfaceOfRevolution(C, A1));
    }
    void Delete() {
      self->~Handle_Geom_SurfaceOfRevolution();
    }  
	gp_Ax1 Axis()
	{
		return (*self)->Axis();	
	}
	
	gp_Pnt Location()
	{
		return (*self)->Location();	
	}
	
	gp_Ax2 ReferencePlane()
	{
		return (*self)->ReferencePlane();	
	}

    /* FIXME TODO @fixme @todo missing base curve getter for constructor */

}
%nodefaultdtor Handle_Geom_ConicalSurface;
class Handle_Geom_ConicalSurface : public Handle_Geom_ElementarySurface {
  Handle_Geom_ConicalSurface()=0;
};

%extend Handle_Geom_ConicalSurface
{

	//TODO check that this is not a big memory leak
	Handle_Geom_ConicalSurface(const gp_Ax3& A3, const double Ang, const double Radius){
		return new Handle_Geom_ConicalSurface(new Geom_ConicalSurface(A3, Ang, Radius));
	}
    void Delete() {
      self->~Handle_Geom_ConicalSurface();
    }  
    gp_Cone Cone()
	{
		return (*self)->Cone();	
	}

    gp_Pnt Apex()
	{
		return (*self)->Apex();	
	}

    void Coefficients(double& outA1, double& outA2, double& outA3, double& outB1, double& outB2, double& outB3, double& outC1, double& outC2, double& outC3, double& outD)
    {
    	(*self)->Coefficients(outA1, outA2, outA3, outB1, outB2, outB3, outC1, outC2, outC3, outD);
    }
    
    double ReferenceRadius()
	{   
		return (*self)->RefRadius();	
	}
 
    double SemiAngle()
	{   
		return (*self)->SemiAngle();	
	}

}
%nodefaultdtor Handle_Geom_CylindricalSurface;
class Handle_Geom_CylindricalSurface : public Handle_Geom_ElementarySurface {
  Handle_Geom_CylindricalSurface()=0;
};

%extend Handle_Geom_CylindricalSurface
{

	//TODO check that this is not a big memory leak
	Handle_Geom_CylindricalSurface(const gp_Ax3& A3, const double Radius){
		return new Handle_Geom_CylindricalSurface(new Geom_CylindricalSurface(A3, Radius));
	}
	Handle_Geom_CylindricalSurface(const gp_Ax2& A2, const double Radius){
		return new Handle_Geom_CylindricalSurface(new Geom_CylindricalSurface(A2, Radius));
	}
    void Delete() {
      self->~Handle_Geom_CylindricalSurface();
    }  
    gp_Cylinder Cylinder()
	{
		return (*self)->Cylinder();	
	}
    
    void Coefficients(double& outA1, double& outA2, double& outA3, double& outB1, double& outB2, double& outB3, double& outC1, double& outC2, double& outC3, double& outD)
	{
		return (*self)->Coefficients(outA1, outA2, outA3, outB1, outB2, outB3, outC1, outC2, outC3, outD);
	}

    double Radius()
	{   
		return (*self)->Radius();	
	}
}
%nodefaultdtor Handle_Geom_SurfaceOfLinearExtrusion;
class Handle_Geom_SurfaceOfLinearExtrusion : public Handle_Geom_SweptSurface {
  Handle_Geom_SurfaceOfLinearExtrusion()=0;
};

%extend Handle_Geom_SurfaceOfLinearExtrusion 
{
    Handle_Geom_SurfaceOfLinearExtrusion(const Handle_Geom_Curve& C, const gp_Dir& V){
        return new Handle_Geom_SurfaceOfLinearExtrusion(new Geom_SurfaceOfLinearExtrusion(C, V));
    }
    void Delete() {
      self->~Handle_Geom_SurfaceOfLinearExtrusion();
    }  
}
%nodefaultdtor Handle_Geom_Plane;
class Handle_Geom_Plane : public Handle_Geom_ElementarySurface {
  Handle_Geom_Plane()=0;
};

%extend Handle_Geom_Plane
{

	//TODO check that this is not a big memory leak
	Handle_Geom_Plane(const gp_Ax3& A3){
		return new Handle_Geom_Plane(new Geom_Plane(A3));
	}
    void Delete() {
      self->~Handle_Geom_Plane();
    }  
    gp_Pln Plane()
	{
		return (*self)->Pln();	
	}

    void Coefficients(double& outA, double& outB, double& outC, double& outD)
	{
		return (*self)->Coefficients(outA, outB, outC, outD);
	}

}

