%{
#include <Standard_Transient.hxx>
#include <Geom2d_Geometry.hxx>
#include <Geom2d_Point.hxx>
#include <Geom2d_CartesianPoint.hxx>
#include <Geom2d_Vector.hxx>
#include <Geom2d_VectorWithMagnitude.hxx>
#include <Geom2d_Direction.hxx>
#include <Geom2d_AxisPlacement.hxx>
#include <Geom2d_Transformation.hxx>
#include <Geom2d_Curve.hxx>
#include <Geom2d_Line.hxx>
#include <Geom2d_OffsetCurve.hxx>
#include <Geom2d_Conic.hxx>
#include <gp_Circ2d.hxx>
#include <Geom2d_Circle.hxx>
#include <gp_Elips2d.hxx>
#include <Geom2d_Ellipse.hxx>
#include <gp_Hypr2d.hxx>
#include <Geom2d_Hyperbola.hxx>
#include <Geom2d_Parabola.hxx>
#include <Geom2d_BoundedCurve.hxx>
#include <Geom2d_BezierCurve.hxx>
#include <Geom2d_BSplineCurve.hxx>
#include <Geom2d_TrimmedCurve.hxx>
#include <Bisector_Curve.hxx>
#include <Bisector_BisecAna.hxx>
#include <Bisector_BisecCC.hxx>
#include <Bisector_BisecPC.hxx>

typedef occ::handle<Geom2d_Geometry> Handle_Geom2d_Geometry;
typedef occ::handle<Geom2d_Point> Handle_Geom2d_Point;
typedef occ::handle<Geom2d_CartesianPoint> Handle_Geom2d_CartesianPoint;
typedef occ::handle<Geom2d_Vector> Handle_Geom2d_Vector;
typedef occ::handle<Geom2d_VectorWithMagnitude> Handle_Geom2d_VectorWithMagnitude;
typedef occ::handle<Geom2d_Direction> Handle_Geom2d_Direction;
typedef occ::handle<Geom2d_AxisPlacement> Handle_Geom2d_AxisPlacement;
typedef occ::handle<Geom2d_Transformation> Handle_Geom2d_Transformation;
typedef occ::handle<Bisector_Curve> Handle_Bisector_Curve;
typedef occ::handle<Bisector_BisecCC> Handle_Bisector_BisecCC;
typedef occ::handle<Bisector_BisecPC> Handle_Bisector_BisecPC;
typedef occ::handle<Geom2d_Line> Handle_Geom2d_Line;
typedef occ::handle<Geom2d_OffsetCurve> Handle_Geom2d_OffsetCurve;
typedef occ::handle<Geom2d_Conic> Handle_Geom2d_Conic;
typedef occ::handle<Geom2d_Circle> Handle_Geom2d_Circle;
typedef occ::handle<Geom2d_Ellipse> Handle_Geom2d_Ellipse;
typedef occ::handle<Geom2d_Hyperbola> Handle_Geom2d_Hyperbola;
typedef occ::handle<Geom2d_Parabola> Handle_Geom2d_Parabola;
typedef occ::handle<Geom2d_BoundedCurve> Handle_Geom2d_BoundedCurve;
typedef occ::handle<Geom2d_BezierCurve> Handle_Geom2d_BezierCurve;
typedef occ::handle<Geom2d_BSplineCurve> Handle_Geom2d_BSplineCurve;
typedef occ::handle<Geom2d_TrimmedCurve> Handle_Geom2d_TrimmedCurve;
  %}

%rename(Geom2d_Geometry) Handle_Geom2d_Geometry;
%rename(Geom2d_Point) Handle_Geom2d_Point;
%rename(Geom2d_CartesianPoint) Handle_Geom2d_CartesianPoint;
%rename(Geom2d_Vector) Handle_Geom2d_Vector;
%rename(Geom2d_VectorWithMagnitude) Handle_Geom2d_VectorWithMagnitude;
%rename(Geom2d_Direction) Handle_Geom2d_Direction;
%rename(Geom2d_AxisPlacement) Handle_Geom2d_AxisPlacement;
%rename(Geom2d_Transformation) Handle_Geom2d_Transformation;
%rename(Geom2d_Curve) Handle_Geom2d_Curve;
%rename(Geom2d_Line) Handle_Geom2d_Line;
%rename(Geom2d_OffsetCurve) Handle_Geom2d_OffsetCurve;
%rename(Geom2d_Conic) Handle_Geom2d_Conic;
%rename(Geom2d_Circle) Handle_Geom2d_Circle;
%rename(Geom2d_Ellipse) Handle_Geom2d_Ellipse;
%rename(Geom2d_Hyperbola) Handle_Geom2d_Hyperbola;
%rename(Geom2d_Parabola) Handle_Geom2d_Parabola;
%rename(Geom2d_BoundedCurve) Handle_Geom2d_BoundedCurve;
%rename(Geom2d_BezierCurve) Handle_Geom2d_BezierCurve;
%rename(Geom2d_BSplineCurve) Handle_Geom2d_BSplineCurve;
%rename(Geom2d_TrimmedCurve) Handle_Geom2d_TrimmedCurve;
%rename(Bisector_Curve) Handle_Bisector_Curve;
%rename(Bisector_BisecAna) Handle_Bisector_BisecAna;
%rename(Bisector_BisecCC) Handle_Bisector_BisecCC;
%rename(Bisector_BisecPC) Handle_Bisector_BisecPC;

%nodefaultdtor Handle_Geom2d_Geometry;
class Handle_Geom2d_Geometry : public Handle_Standard_Transient
{
  Handle_Geom2d_Geometry()=0;
};

%extend Handle_Geom2d_Geometry
{
  void Mirror (const gp_Pnt2d& P)
  {
    (*self)->Mirror(P);
  }
  void Mirror (const gp_Ax2d& A)
  {
    (*self)->Mirror(A);
  }
  void Rotate (const gp_Pnt2d& P, const double Ang) {
    (*self)->Rotate(P, Ang);
  }
  void Scale (const gp_Pnt2d& P, const double S) {
    (*self)->Scale(P, S);
  }
  void Translate (const gp_Vec2d& V) {
    (*self)->Translate(V);
  }
  void Translate (const gp_Pnt2d& P1, const gp_Pnt2d& P2) {
    (*self)->Translate(P1, P2);
  }
  Handle_Geom2d_Geometry Mirrored (const gp_Pnt2d& P) {
    return (*self)->Mirrored(P);
  }
  Handle_Geom2d_Geometry Mirrored (const gp_Ax2d& A) {
    return (*self)->Mirrored(A);
  }
  Handle_Geom2d_Geometry Rotated (const gp_Pnt2d& P, const double Ang) {
    return (*self)->Rotated(P, Ang);
  }
  Handle_Geom2d_Geometry Scaled (const gp_Pnt2d& P, const double S) {
    return (*self)->Scaled(P, S);
  }
  Handle_Geom2d_Geometry Transformed (const gp_Trsf2d& T) {
    return (*self)->Transformed(T);
  }
  Handle_Geom2d_Geometry Translated (const gp_Vec2d& V) {
    return (*self)->Translated(V);
  }
  Handle_Geom2d_Geometry Translated (const gp_Pnt2d& P1, const gp_Pnt2d& P2) {
    return (*self)->Translated(P1, P2);
  }
  void Transform (const gp_Trsf2d& T) {
    (*self)->Transform(T);
  }
  Handle_Geom2d_Geometry Copy() {
    return (*self)->Copy();
  }
}
%nodefaultdtor Handle_Geom2d_Point;
class Handle_Geom2d_Point : public Handle_Geom2d_Geometry
{
  Handle_Geom2d_Point()=0;
};

%extend Handle_Geom2d_Point
{
  double Distance (const Handle_Geom2d_Point& Other) {
    return (*self)->Distance(Other);
  }
  double SquareDistance (const Handle_Geom2d_Point& Other) {
    return (*self)->SquareDistance(Other);
  }
  void Coord (double& X, double& Y) {
    (*self)->Coord(X, Y);
  }
  gp_Pnt2d Pnt2d() {
    return (*self)->Pnt2d();
  }
  double X() {
    return (*self)->X();
  }
  double Y() {
    return (*self)->Y();
  }
}
%nodefaultdtor Handle_Geom2d_CartesianPoint;
class Handle_Geom2d_CartesianPoint : public Handle_Geom2d_Point
{
  Handle_Geom2d_CartesianPoint()=0;
};

%extend Handle_Geom2d_CartesianPoint
{
  Handle_Geom2d_CartesianPoint(const gp_Pnt2d& P) {
    return new Handle_Geom2d_CartesianPoint(new Geom2d_CartesianPoint(P));
  }
  Handle_Geom2d_CartesianPoint(const double X, const double Y) {
    return new Handle_Geom2d_CartesianPoint(new Geom2d_CartesianPoint(X, Y));
  }
  void Delete() {
    self->~Handle_Geom2d_CartesianPoint();
  }
  void SetCoord (const double X, const double Y) {
    (*self)->SetCoord(X, Y);
  }
  void SetPnt2d (const gp_Pnt2d& P) {
    (*self)->SetPnt2d(P);
  }
  void SetX (const double X) {
    (*self)->SetX(X);
  }
  void SetY (const double Y) {
    (*self)->SetY(Y);
  }
}
%nodefaultdtor Handle_Geom2d_Vector;
class Handle_Geom2d_Vector : public Handle_Geom2d_Geometry
{
  Handle_Geom2d_Vector()=0;
};

%extend Handle_Geom2d_Vector
{
  void Reverse() {
    (*self)->Reverse();
  }
  Handle_Geom2d_Vector Reversed() {
    return (*self)->Reversed();
  }
  double Angle (const Handle_Geom2d_Vector& Other) {
    return (*self)->Angle(Other);
  }
  void Coord (double& X, double& Y) {
    (*self)->Coord(X, Y);
  }
  double Magnitude() {
    return (*self)->Magnitude();
  }
  double SquareMagnitude() {
    return (*self)->SquareMagnitude();
  }
  double X() {
    return (*self)->X();
  }
  double Y() {
    return (*self)->Y();
  }
  double Crossed (const Handle_Geom2d_Vector& Other) {
    return (*self)->Crossed(Other);
  }
  double Dot (const Handle_Geom2d_Vector& Other) {
    return (*self)->Dot(Other);
  }
  gp_Vec2d Vec2d() {
    return (*self)->Vec2d();
  }
  int GeometryType()
  {
    if (STANDARD_TYPE(Geom2d_VectorWithMagnitude) == (*self)->DynamicType())
      {
	return 312;
      }
    if (STANDARD_TYPE(Geom2d_Direction) == (*self)->DynamicType())
      {
	return 313;
      }
    return -1;
  }
}
%nodefaultdtor Handle_Geom2d_VectorWithMagnitude;
class Handle_Geom2d_VectorWithMagnitude : public Handle_Geom2d_Vector
{
  Handle_Geom2d_VectorWithMagnitude()=0;
};

%extend Handle_Geom2d_VectorWithMagnitude
{
  Handle_Geom2d_VectorWithMagnitude(const gp_Vec2d& V) {
    return new Handle_Geom2d_VectorWithMagnitude(new Geom2d_VectorWithMagnitude(V));
  }
  Handle_Geom2d_VectorWithMagnitude(const double X, const double Y) {
    return new Handle_Geom2d_VectorWithMagnitude(new Geom2d_VectorWithMagnitude(X, Y));
  }
  Handle_Geom2d_VectorWithMagnitude(const gp_Pnt2d& P1, const gp_Pnt2d& P2) {
    return new Handle_Geom2d_VectorWithMagnitude(new Geom2d_VectorWithMagnitude(P1, P2));
  }
  void Delete() {
    self->~Handle_Geom2d_VectorWithMagnitude();
  }
  void SetCoord (const double X, const double Y) {
    (*self)->SetCoord(X, Y);
  }
  void SetVec2d (const gp_Vec2d& V) {
    (*self)->SetVec2d(V);
  }
  void SetX (const double X) {
    (*self)->SetX(X);
  }
  void SetY (const double Y) {
    (*self)->SetY(Y);
  }
  void Add (const Handle_Geom2d_Vector& Other) {
    (*self)->Add(Other);
  }
  Handle_Geom2d_VectorWithMagnitude Added (const Handle_Geom2d_Vector& Other) {
    return (*self)->Added(Other);
  }
  void Divide (const double Scalar) {
    (*self)->Divide(Scalar);
  }
  Handle_Geom2d_VectorWithMagnitude Divided (const double Scalar) {
    return (*self)->Divided(Scalar);
  }
  Handle_Geom2d_VectorWithMagnitude Multiplied (const double Scalar) {
    return (*self)->Multiplied(Scalar);
  }
  void Multiply (const double Scalar) {
    (*self)->Multiply(Scalar);
  }
  void Normalize() {
    (*self)->Normalize();
  }
  Handle_Geom2d_VectorWithMagnitude Normalized() {
    return (*self)->Normalized();
  }
  void Subtract (const Handle_Geom2d_Vector& Other) {
    (*self)->Subtract(Other);
  }
  Handle_Geom2d_VectorWithMagnitude Subtracted (const Handle_Geom2d_Vector& Other) {
    return (*self)->Subtracted(Other);
  }
  void Transform (const gp_Trsf2d& T) {
    (*self)->Transform(T);
  }
  Handle_Geom2d_Geometry Copy() {
    return (*self)->Copy();
  }
}
%nodefaultdtor Handle_Geom2d_Direction;
class Handle_Geom2d_Direction : public Handle_Geom2d_Vector
{
  Handle_Geom2d_Direction()=0;
};

%extend Handle_Geom2d_Direction
{
  Handle_Geom2d_Direction(const double X, const double Y) {
    return new Handle_Geom2d_Direction(new Geom2d_Direction(X, Y));
  }
  Handle_Geom2d_Direction(const gp_Dir2d& V) {
    return new Handle_Geom2d_Direction(new Geom2d_Direction(V));
  }
  void Delete() {
    self->~Handle_Geom2d_Direction();
  }  
  void SetCoord (const double X, const double Y) {
    (*self)->SetCoord(X, Y);
  }
  void SetDir2d (const gp_Dir2d& V) {
    (*self)->SetDir2d(V);
  }
  void SetX (const double X) {
    (*self)->SetX(X);
  }
  void SetY (const double Y) {
    (*self)->SetY(Y);
  }
  gp_Dir2d Dir2d() {
    return (*self)->Dir2d();
  }
}
%nodefaultdtor Handle_Geom2d_AxisPlacement;
class Handle_Geom2d_AxisPlacement : public Handle_Geom2d_Geometry
{
  Handle_Geom2d_AxisPlacement()=0;
};

%extend Handle_Geom2d_AxisPlacement
{
  Handle_Geom2d_AxisPlacement(const gp_Ax2d& A) {
    return new Handle_Geom2d_AxisPlacement(new Geom2d_AxisPlacement(A));
  }
  
  Handle_Geom2d_AxisPlacement(const gp_Pnt2d& P, const gp_Dir2d& V) {
    return new Handle_Geom2d_AxisPlacement(new Geom2d_AxisPlacement(P, V));
  }
  void Delete() {
    self->~Handle_Geom2d_AxisPlacement();
  }  
  void Reverse() {
    (*self)->Reverse();
  }
  Handle_Geom2d_AxisPlacement Reversed() {
    return (*self)->Reversed();
  }
  void SetAxis (const gp_Ax2d& A) {
    (*self)->SetAxis(A);
  }
  void SetDirection (const gp_Dir2d& V) {
    (*self)->SetDirection(V);
  }
  void SetLocation (const gp_Pnt2d& P) {
    (*self)->SetLocation(P);
  }
  double Angle (const Handle_Geom2d_AxisPlacement& Other) {
    return (*self)->Angle(Other);
  }
  gp_Ax2d Ax2d() {
    return (*self)->Ax2d();
  }
  gp_Dir2d Direction() {
    return (*self)->Direction();
  }
  gp_Pnt2d Location() {
    return (*self)->Location();
  }
}
		
%nodefaultdtor Handle_Geom2d_Transformation;  
class Handle_Geom2d_Transformation : public Handle_Standard_Transient
{
  Handle_Geom2d_Transformation()=0;
};

%extend Handle_Geom2d_Transformation
{
  Handle_Geom2d_Transformation() {
    return new Handle_Geom2d_Transformation(new Geom2d_Transformation());
  }
  Handle_Geom2d_Transformation(const gp_Trsf2d& T) {
    return new Handle_Geom2d_Transformation(new Geom2d_Transformation(T));
  }
  void Delete() {
    self->~Handle_Geom2d_Transformation();
  }  
  void SetMirror (const gp_Pnt2d& P) {
    (*self)->SetMirror(P);
  }
  void SetMirror (const gp_Ax2d& A) {
    (*self)->SetMirror(A);
  }
  void SetRotation (const gp_Pnt2d& P, const double Ang) {
    (*self)->SetRotation(P, Ang);
  }
  void SetScale (const gp_Pnt2d& P, const double S) {
    (*self)->SetScale(P, S);
  }
  void SetTransformation (const gp_Ax2d& FromSystem1, const gp_Ax2d& ToSystem2) {
    (*self)->SetTransformation(FromSystem1, ToSystem2);
  }
  void SetTransformation (const gp_Ax2d& ToSystem) {
    (*self)->SetTransformation(ToSystem);
  }
  void SetTranslation (const gp_Vec2d& V) {
    (*self)->SetTranslation(V);
  }
  void SetTranslation (const gp_Pnt2d& P1, const gp_Pnt2d& P2) {
    (*self)->SetTranslation(P1, P2);
  }
  void SetTrsf2d (const gp_Trsf2d& T) {
    (*self)->SetTrsf2d(T);
  }
  bool IsNegative() {
    return (*self)->IsNegative();
  }
  gp_TrsfForm Form() {
    return (*self)->Form();
  }
  double ScaleFactor() {
    return (*self)->ScaleFactor();
  }
  gp_Trsf2d Trsf2d() {
    return (*self)->Trsf2d();
  }
  double Value (const int Row, const int Col) {
    return (*self)->Value(Row, Col);
  }
  void Invert() {
    (*self)->Invert();
  }
  Handle_Geom2d_Transformation Inverted() {
    return (*self)->Inverted();
  }
  Handle_Geom2d_Transformation Multiplied (const Handle_Geom2d_Transformation& Other) {
    return (*self)->Multiplied(Other);
  }
  void Multiply (const Handle_Geom2d_Transformation& Other) {
    (*self)->Multiply(Other);
  }
  void Power (const int N) {
    (*self)->Power(N);
  }
  Handle_Geom2d_Transformation Powered (const int N) {
    return (*self)->Powered(N);
  }
  void PreMultiply (const Handle_Geom2d_Transformation& Other) {
    (*self)->PreMultiply(Other);
  }
  void Transforms (double& X, double& Y) {
    (*self)->Transforms(X, Y);
  }
  Handle_Geom2d_Transformation Copy() {
    return (*self)->Copy();
  }
}
  
%nodefaultdtor Handle_Geom2d_Curve;  
class Handle_Geom2d_Curve : public Handle_Geom2d_Geometry
{
	Handle_Geom2d_Curve()=0;
};
%nodefaultdtor Handle_Bisector_Curve;  
class Handle_Bisector_Curve : public Handle_Geom2d_Curve
{
	Handle_Bisector_Curve()=0;
};

%extend Handle_Bisector_Curve
{
	double Parameter(const gp_Pnt2d &P)
	{
		return (*self)->Parameter(P);
	}
	
	bool IsExtendAtStart()
	{
		return (*self)->IsExtendAtStart();
	}
	
	bool IsExtendAtEnd()
	{
		return (*self)->IsExtendAtEnd();
	}
	
	int NbIntervals()
	{
		return (*self)->NbIntervals();
	}
	
	double IntervalFirst(const int index)
	{
		return (*self)->IntervalFirst(index);
	}
	
	double IntervalLast(const int index)
	{
		return (*self)->IntervalLast(index);
	}
}
%nodefaultdtor Handle_Bisector_BisecAna;  
class Handle_Bisector_BisecAna : public Handle_Bisector_Curve
{
	Handle_Bisector_BisecAna()=0;
};

%extend Handle_Bisector_BisecAna
{


}
%nodefaultdtor Handle_Bisector_BisecCC;  
class Handle_Bisector_BisecCC : public Handle_Bisector_Curve
{
	Handle_Bisector_BisecCC()=0;
};

%extend Handle_Bisector_BisecCC
{
    Handle_Bisector_BisecCC(const Handle_Geom2d_Curve& Cu1, const Handle_Geom2d_Curve& Cu2, const double Side1, const double Side2, 
            const gp_Pnt2d& Origin, const double DistMax = 500){
    return new Handle_Bisector_BisecCC(new Bisector_BisecCC(Cu1, Cu2, Side1, Side2, Origin, DistMax));
    }

}
%nodefaultdtor Handle_Bisector_BisecPC;
class Handle_Bisector_BisecPC : public Handle_Bisector_Curve
{
	Handle_Bisector_BisecPC()=0;
};

%extend Handle_Bisector_BisecPC
{

    Handle_Bisector_BisecPC(const Handle_Geom2d_Curve& Cu, const gp_Pnt2d& P, const double Side, const double DistMax = 500){
        return new Handle_Bisector_BisecPC(new Bisector_BisecPC(Cu, P, Side, DistMax));
    }

}

%extend Handle_Geom2d_Curve
{
  void Reverse() {
    (*self)->Reverse();
  }
  double ReversedParameter (const double U) {
    return (*self)->ReversedParameter(U);
  }
  double TransformedParameter (const double U, const gp_Trsf2d& T) {
    return (*self)->TransformedParameter(U, T);
  }
  double ParametricTransformation (const gp_Trsf2d& T) {
    return (*self)->ParametricTransformation(T);
  }
  Handle_Geom2d_Curve Reversed() {
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
  double Period()
  {
    return (*self)->Period();
  }
  GeomAbs_Shape Continuity() {
    return (*self)->Continuity();
  }
  bool IsCN(const int N) {
    return (*self)->IsCN(N);
  }
  void D0 (const double U, gp_Pnt2d& P) {
    (*self)->D0(U, P);
  }
  void D1 (const double U, gp_Pnt2d& P, gp_Vec2d& V1) {
    (*self)->D1(U, P, V1);
  }
  void D2 (const double U, gp_Pnt2d& P, gp_Vec2d& V1, gp_Vec2d& V2) {
    (*self)->D2(U, P, V1, V2);
  }
  void D3 (const double U, gp_Pnt2d& P, gp_Vec2d& V1, gp_Vec2d& V2, gp_Vec2d& V3) {
    (*self)->D3(U, P, V1, V2, V3);
  }
  gp_Vec2d DN (const double U, const int N) {
    return (*self)->DN(U, N);
  }	  
  gp_Pnt2d Value(const double U)
  {
    return (*self)->Value(U);
  }
  int GeometryType()
  {
    if (STANDARD_TYPE(Geom2d_Line) == (*self)->DynamicType())
      {
	return 300;
      }
    else if (STANDARD_TYPE(Geom2d_Circle) == (*self)->DynamicType())
      {
	return 301;
      }
    else if (STANDARD_TYPE(Geom2d_Ellipse) == (*self)->DynamicType())
      {
	return 302;
      }
    else if (STANDARD_TYPE(Geom2d_Hyperbola) == (*self)->DynamicType())
      {
	return 303;
      }
    else if (STANDARD_TYPE(Geom2d_Parabola) == (*self)->DynamicType())
      {
	return 304;
      }
    else if (STANDARD_TYPE(Geom2d_OffsetCurve) == (*self)->DynamicType())
      {
	return 305;
      }
    else if (STANDARD_TYPE(Geom2d_BezierCurve) == (*self)->DynamicType())
      {
	return 306;
      }
    else if (STANDARD_TYPE(Geom2d_BSplineCurve) == (*self)->DynamicType())
      {
	return 307;
      }
    else if (STANDARD_TYPE(Geom2d_TrimmedCurve) == (*self)->DynamicType())
      {
	return 308;
      }
    else if (STANDARD_TYPE(Bisector_BisecAna) == (*self)->DynamicType())
      {
	return 309;
      }
    else if (STANDARD_TYPE(Bisector_BisecCC) == (*self)->DynamicType())
      {
	return 310;
      }
    else if (STANDARD_TYPE(Bisector_BisecPC) == (*self)->DynamicType())
      {
	return 311;
      }
		
    return -1;
  }
	
}
%nodefaultdtor Handle_Geom2d_Line;
class Handle_Geom2d_Line : public Handle_Geom2d_Curve
{
	Handle_Geom2d_Line()=0;
};

%extend Handle_Geom2d_Line
{
	Handle_Geom2d_Line(const gp_Ax2d& A){
		return new Handle_Geom2d_Line(new Geom2d_Line(A));
	}
	Handle_Geom2d_Line(const gp_Lin2d& L){
		return new Handle_Geom2d_Line(new Geom2d_Line(L));
	}
	Handle_Geom2d_Line(const gp_Pnt2d& P, const gp_Dir2d& V){
		return new Handle_Geom2d_Line(new Geom2d_Line(P, V));
	}
	void Delete() {
	  self->~Handle_Geom2d_Line();
	}  
	gp_Lin2d Lin2d() {
	  return (*self)->Lin2d();
	}	
	void SetLin2d (const gp_Lin2d& L) {
	  (*self)->SetLin2d(L);
	}
	void SetDirection (const gp_Dir2d& V) {
	  (*self)->SetDirection(V);
	}
	const gp_Dir2d Direction() {
	  //return (gp_Dir2d *)&(*self)->Direction();
	  return (*self)->Direction();
	}
	void SetLocation (const gp_Pnt2d& P) {
	  (*self)->SetLocation(P);
	}
	gp_Pnt2d Location()
	{
	  //return (gp_Pnt2d *)&(*self)->Location();
	  return (*self)->Location();
	}
	void SetPosition (const gp_Ax2d& A) {
	  (*self)->SetPosition(A);
	}
	gp_Ax2d Position()
	{
	  //return (gp_Ax2d *)&(*self)->Position();
	  return (*self)->Position();
	}
	void Reverse() {
	  (*self)->Reverse();
	}
	double ReversedParameter (const double U) {
	  return (*self)->ReversedParameter(U);
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
	GeomAbs_Shape Continuity() {
	  return (*self)->Continuity();
	}
	double Distance (const gp_Pnt2d& P) {
	  return (*self)->Distance(P);
	}
	bool IsCN (const int N) {
	  return (*self)->IsCN(N);
	}
	void Transform (const gp_Trsf2d& T) {
	  (*self)->Transform(T);
	}
	double TransformedParameter (const double U, const gp_Trsf2d& T) {
	  return (*self)->TransformedParameter(U, T);
	}
	double ParametricTransformation (const gp_Trsf2d& T) {
	  return (*self)->ParametricTransformation(T);
	}

}
%nodefaultdtor Handle_Geom2d_OffsetCurve;
class Handle_Geom2d_OffsetCurve : public Handle_Geom2d_Curve
{
	Handle_Geom2d_OffsetCurve()=0;
};

%extend Handle_Geom2d_OffsetCurve
{
	//TODO check that this is not a big memory leak
	Handle_Geom2d_OffsetCurve(const Handle_Geom2d_Curve& C, const double Offset){
		return new Handle_Geom2d_OffsetCurve(new Geom2d_OffsetCurve(C, Offset));
	}
	void Delete() {
	  self->~Handle_Geom2d_OffsetCurve();
	}  
	void SetBasisCurve (const Handle_Geom2d_Curve& C, const bool isNotCheckC0 = false) {
	  (*self)->SetBasisCurve(C, isNotCheckC0);

	}
	void SetOffsetValue (const double D) {
	  (*self)->SetOffsetValue(D);
	}
	Handle_Geom2d_Curve BasisCurve() {
	  return (*self)->BasisCurve();
	}
	double Offset() {
	  return (*self)->Offset();
	}
	GeomAbs_Shape GetBasisCurveContinuity() {
	  return (*self)->GetBasisCurveContinuity();
	}	
}
%nodefaultdtor Handle_Geom2d_Conic;
class Handle_Geom2d_Conic : public Handle_Geom2d_Curve
{
	Handle_Geom2d_Conic()=0;
};

%extend Handle_Geom2d_Conic
{
  void SetAxis (const gp_Ax22d& A){
    (*self)->SetAxis(A);
  }
  void SetXAxis (const gp_Ax2d& A) {
    (*self)->SetXAxis(A);
  }
  void SetYAxis (const gp_Ax2d& A) {
    (*self)->SetYAxis(A);
  }
  void SetLocation (const gp_Pnt2d& P) {
    (*self)->SetLocation(P);
  }
	gp_Ax2d XAxis()
	{
		return (*self)->XAxis();
	}

	gp_Ax2d YAxis()
	{
		return (*self)->YAxis();
	}
	
	double Eccentricity()
	{
		return (*self)->Eccentricity();
	}

	gp_Pnt2d Location()
	{
		return (*self)->Location();
	}

	gp_Ax22d Position()
	{
		return (*self)->Position();
	}

}
%nodefaultdtor Handle_Geom2d_Circle;
class Handle_Geom2d_Circle : public Handle_Geom2d_Conic
{
	Handle_Geom2d_Circle()=0;
};

%extend Handle_Geom2d_Circle
{
  Handle_Geom2d_Circle(const gp_Circ2d& C) {
    return new Handle_Geom2d_Circle(new Geom2d_Circle(C));
  }
  Handle_Geom2d_Circle(const gp_Ax2d& A, const double Radius, const bool Sense = true) {
    return new Handle_Geom2d_Circle(new Geom2d_Circle(A, Radius, Sense));
  }
  Handle_Geom2d_Circle(const gp_Ax22d& A, const double R){
    return new Handle_Geom2d_Circle(new Geom2d_Circle(A, R));
  }
  void Delete() {
    self->~Handle_Geom2d_Circle();
  }  
  void SetCirc2d(const gp_Circ2d& C) {
    (*self)->SetCirc2d(C);
  }
  void SetRadius(const double R) {
    (*self)->SetRadius(R);
  }
  gp_Circ2d Circ2d() {
    return (*self)->Circ2d();
  }
  double Radius() {
    return (*self)->Radius();
  }
}
%nodefaultdtor Handle_Geom2d_Ellipse;
class Handle_Geom2d_Ellipse : public Handle_Geom2d_Conic
{
  Handle_Geom2d_Ellipse()=0;
};

%extend Handle_Geom2d_Ellipse
{
  Handle_Geom2d_Ellipse(const gp_Elips2d& E) {
    return new Handle_Geom2d_Ellipse(new Geom2d_Ellipse(E));
  }
  Handle_Geom2d_Ellipse(const gp_Ax2d& MajorAxis, const double MajorRadius, const double MinorRadius, const bool Sense = true) {
    return new Handle_Geom2d_Ellipse(new Geom2d_Ellipse(MajorAxis, MajorRadius, MinorRadius, Sense));
  }
  Handle_Geom2d_Ellipse(const gp_Ax22d& Axis, const double MajorRadius, const double MinorRadius) {
    return new Handle_Geom2d_Ellipse(new Geom2d_Ellipse(Axis, MajorRadius, MinorRadius));
  }
  void Delete() {
    self->~Handle_Geom2d_Ellipse();
  }  
  void SetElips2d(const gp_Elips2d& E) {
    (*self)->SetElips2d(E);
  }
  void SetMajorRadius (const double MajorRadius) {
    (*self)->SetMajorRadius(MajorRadius);
  }
  void SetMinorRadius (const double MinorRadius) {
    (*self)->SetMinorRadius(MinorRadius);
  }
  gp_Elips2d Elips2d() {
    return (*self)->Elips2d();
  }
  gp_Ax2d Directrix1()
  {
    return (*self)->Directrix1();
  }
  gp_Ax2d Directrix2()
  {
    return (*self)->Directrix2();
  }
  double Focal()
  {
    return (*self)->Focal();
  }
  gp_Pnt2d Focus1()
  {
    return (*self)->Focus1();
  }
  gp_Pnt2d Focus2()
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
  double Parameter() {
    return (*self)->Parameter();
  }
}
%nodefaultdtor Handle_Geom2d_Hyperbola;
class Handle_Geom2d_Hyperbola : public Handle_Geom2d_Conic
{
  Handle_Geom2d_Hyperbola()=0;
};

%extend Handle_Geom2d_Hyperbola
{
  Handle_Geom2d_Hyperbola(const gp_Hypr2d& H) {
    return new Handle_Geom2d_Hyperbola(new Geom2d_Hyperbola(H));
  }
  Handle_Geom2d_Hyperbola(const gp_Ax2d& MajorAxis, const double MajorRadius, const double MinorRadius, const bool Sense = true) {
    return new Handle_Geom2d_Hyperbola(new Geom2d_Hyperbola(MajorAxis, MajorRadius, MinorRadius, Sense));
  }
  Handle_Geom2d_Hyperbola(const gp_Ax22d& Axis, const double MajorRadius, const double MinorRadius){
    return new Handle_Geom2d_Hyperbola(new Geom2d_Hyperbola(Axis, MajorRadius, MinorRadius));
  }
  void Delete() {
    self->~Handle_Geom2d_Hyperbola();
  }  
  void SetHypr2d (const gp_Hypr2d& H) {
    (*self)->SetHypr2d(H);
  }
  void SetMajorRadius(const double MajorRadius) {
    (*self)->SetMajorRadius(MajorRadius);
  }
  void SetMinorRadius(const double MinorRadius) {
    (*self)->SetMinorRadius(MinorRadius);
  }
  gp_Hypr2d Hypr2d() {
    return (*self)->Hypr2d();
  }
  gp_Ax2d Asymptote1() {
    return (*self)->Asymptote1();
  }
  gp_Ax2d Asymptote2() {
    return (*self)->Asymptote2();
  }
  gp_Hypr2d ConjugateBranch1() {
    return (*self)->ConjugateBranch1();
  }
  gp_Hypr2d ConjugateBranch2() {
    return (*self)->ConjugateBranch2();
  } 
  gp_Ax2d Directrix1() {
    return (*self)->Directrix1();
  }
  gp_Ax2d Directrix2() {
    return (*self)->Directrix2();
  }
  double Focal() {
    return (*self)->Focal();
  }
  gp_Pnt2d Focus1() {
    return (*self)->Focus1();
  }
  gp_Pnt2d Focus2() {
    return (*self)->Focus2();
  }
  double MajorRadius() {
    return (*self)->MajorRadius();
  }
  double MinorRadius() {
    return (*self)->MinorRadius();
  }
  gp_Hypr2d OtherBranch() {
    return (*self)->OtherBranch();
  }
  double Parameter() {
    return (*self)->Parameter();
  }
}
%nodefaultdtor Handle_Geom2d_Parabola;
class Handle_Geom2d_Parabola : public Handle_Geom2d_Conic
{
  Handle_Geom2d_Parabola()=0;
};

%extend Handle_Geom2d_Parabola
{
  Handle_Geom2d_Parabola(const gp_Parab2d& Prb) {
    return new Handle_Geom2d_Parabola(new Geom2d_Parabola(Prb));
  }
  Handle_Geom2d_Parabola(const gp_Ax2d& MirrorAxis, const double Focal, const bool Sense = true) {
    return new Handle_Geom2d_Parabola(new Geom2d_Parabola(MirrorAxis, Focal, Sense));
  }
  Handle_Geom2d_Parabola(const gp_Ax22d& Axis, const double Focal){
    return new Handle_Geom2d_Parabola(new Geom2d_Parabola(Axis, Focal));
  }
  Handle_Geom2d_Parabola(const gp_Ax2d& D, const gp_Pnt2d& F){
    return new Handle_Geom2d_Parabola(new Geom2d_Parabola(D, F));
  }
  void Delete() {
    self->~Handle_Geom2d_Parabola();
  }  
  void SetFocal(const double Focal) {
    (*self)->SetFocal(Focal);
  }
  void SetParab2d (const gp_Parab2d& Prb) {
    (*self)->SetParab2d(Prb);
  }
  gp_Parab2d Parab2d() {
    return (*self)->Parab2d();
  }
  gp_Ax2d Directrix() {
    return (*self)->Directrix();
  }    
  gp_Pnt2d Focus() {
    return (*self)->Focus();
  }
  double Focal() {
    return (*self)->Focal();
  }
  double Parameter() {
    return (*self)->Parameter();
  }
}
%nodefaultdtor Handle_Geom2d_BoundedCurve;
class Handle_Geom2d_BoundedCurve : public Handle_Geom2d_Curve
{
  Handle_Geom2d_BoundedCurve()=0;
};

%extend Handle_Geom2d_BoundedCurve
{
	gp_Pnt2d EndPoint()
	{
		return (*self)->EndPoint();
	}
	
	gp_Pnt2d StartPoint()
	{
		return (*self)->StartPoint();
	}
}
%nodefaultdtor Handle_Geom2d_BezierCurve;
class Handle_Geom2d_BezierCurve : public Handle_Geom2d_BoundedCurve
{
  Handle_Geom2d_BezierCurve()=0;
};

%extend Handle_Geom2d_BezierCurve
{
  Handle_Geom2d_BezierCurve(const TColgp_Array1OfPnt2d& CurvePoles) {
    return new Handle_Geom2d_BezierCurve(new Geom2d_BezierCurve(CurvePoles));
  }
  Handle_Geom2d_BezierCurve(const TColgp_Array1OfPnt2d& CurvePoles, const TColStd_Array1OfReal& PoleWeights){
    return new Handle_Geom2d_BezierCurve(new Geom2d_BezierCurve(CurvePoles, PoleWeights));
  }
  void Delete() {
    self->~Handle_Geom2d_BezierCurve();
  }  
  void Increase (const int Degree) {
    (*self)->Increase(Degree);
  }
  void InsertPoleAfter (const int Index, const gp_Pnt2d& P, const double Weight = 1.0) {
    (*self)->InsertPoleAfter(Index, P, Weight);
  }
  void InsertPoleBefore (const int Index, const gp_Pnt2d& P, const double Weight = 1.0) {
    (*self)->InsertPoleAfter(Index, P, Weight);
  }
  void RemovePole (const int Index) {
    (*self)->RemovePole(Index);
  }
  void Segment (const double U1, const double U2) {
    (*self)->Segment(U1, U2);
  }
  void SetPole (const int Index, const gp_Pnt2d& P) {
    (*self)->SetPole(Index, P);
  }
  void SetPole (const int Index, const gp_Pnt2d& P, const double Weight) {
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
  const gp_Pnt2d Pole(const int Index) {
    return (*self)->Pole(Index);
  }
  const TColgp_Array1OfPnt2d Poles() {
    return (*self)->Poles();
  }
  double Weight(const int Index) {
    return (*self)->Weight(Index);
  }
  const TColStd_Array1OfReal* Weights() {
    return (*self)->Weights();
  }
  static int MaxDegree() {
    return Geom2d_BezierCurve::MaxDegree();
  }
  void Resolution (const double ToleranceUV, double& UTolerance) {
    (*self)->Resolution(ToleranceUV, UTolerance);
  }
}
%nodefaultdtor Handle_Geom2d_BSplineCurve;
class Handle_Geom2d_BSplineCurve : public Handle_Geom2d_BoundedCurve
{
  Handle_Geom2d_BSplineCurve()=0;
};

%extend Handle_Geom2d_BSplineCurve
{
	Handle_Geom2d_BSplineCurve(const TColgp_Array1OfPnt2d& Poles, const TColStd_Array1OfReal& Knots, 
            const TColStd_Array1OfInteger& Multiplicities, const int Degree, 
            const bool Periodic = false){
	    return new Handle_Geom2d_BSplineCurve(new Geom2d_BSplineCurve(Poles, Knots, Multiplicities,
            Degree, Periodic));
	}

    Handle_Geom2d_BSplineCurve(const TColgp_Array1OfPnt2d& Poles, const TColStd_Array1OfReal& Weights, 
            const TColStd_Array1OfReal& Knots, const TColStd_Array1OfInteger& Multiplicities, 
            const int Degree, const bool Periodic = false){
        return new Handle_Geom2d_BSplineCurve(new Geom2d_BSplineCurve(Poles, Weights, Knots, 
            Multiplicities, Degree, Periodic));
    }
    void Delete() {
      self->~Handle_Geom2d_BSplineCurve();
    }  
    void IncreaseDegree (const int Degree) {
      (*self)->IncreaseDegree(Degree);
    }
    void IncreaseMultiplicity (const int Index, const int M) {
      (*self)->IncreaseMultiplicity(Index, M);
    }
    void IncreaseMultiplicity (const int I1, const int I2, const int M) {
      (*self)->IncreaseMultiplicity(I1, I2, M);
    }
    void IncrementMultiplicity (const int I1, const int I2, const int M) {
      (*self)->IncrementMultiplicity(I1, I2, M);
    }
    void InsertKnot (const double U, const int M = 1, const double ParametricTolerance = 0.0) {
      (*self)->InsertKnot(U, M, ParametricTolerance);
    }
    void InsertKnots (const TColStd_Array1OfReal& Knots, const TColStd_Array1OfInteger& Mults, const double ParametricTolerance = 0.0, const bool Add = false){
      (*self)->InsertKnots(Knots, Mults, ParametricTolerance, Add);
    }
    bool RemoveKnot (const int Index, const int M, const double Tolerance) {
      return (*self)->RemoveKnot(Index, M, Tolerance);
    }
    void InsertPoleAfter (const int Index, const gp_Pnt2d& P, const double Weight = 1.0) {
      (*self)->InsertPoleAfter(Index, P, Weight);
    }
    void InsertPoleBefore (const int Index, const gp_Pnt2d& P, const double Weight = 1.0) {
      (*self)->InsertPoleBefore(Index, P, Weight);
    }
    void RemovePole (const int Index) {
      (*self)->RemovePole(Index);
    }
    void Segment (const double U1, const double U2) {
      (*self)->Segment(U1, U2);
    }
    void SetKnot (const int Index, const double K) {
      (*self)->SetKnot(Index, K);
    }
    void SetKnots (const TColStd_Array1OfReal& K) {
      (*self)->SetKnots(K);
    }
    void SetKnot (const int Index, const double K, const int M) {
      (*self)->SetKnot(Index, K, M);
    }
    void PeriodicNormalization (double& U) {
      (*self)->PeriodicNormalization(U);
    }
    void SetPeriodic() {
      (*self)->SetPeriodic();
    }
    void SetOrigin (const int Index) {
      (*self)->SetOrigin(Index);
    }
    void SetNotPeriodic() {
      (*self)->SetNotPeriodic();
    }
    void SetPole (const int Index, const gp_Pnt2d& P) {
      (*self)->SetPole(Index, P);
    }
    void SetPole (const int Index, const gp_Pnt2d& P, const double Weight) {
      (*self)->SetPole(Index, P, Weight);
    }
    void SetWeight (const int Index, const double Weight) {
      (*self)->SetWeight(Index, Weight);
    }
    void MovePoint (const double U, const gp_Pnt2d& P, const int Index1, const int Index2, int& FirstModifiedPole, int& LastModifiedPole) {
      (*self)->MovePoint(U, P, Index1, Index2, FirstModifiedPole, LastModifiedPole);
    }
    void MovePointAndTangent (const double U, const gp_Pnt2d& P, const gp_Vec2d& Tangent, const double Tolerance, const int StartingCondition, const int EndingCondition, int& ErrorStatus) {
      return (*self)->MovePointAndTangent(U, P, Tangent, Tolerance, StartingCondition, EndingCondition, ErrorStatus);
    }
    bool IsG1 (const double theTf, const double theTl, const double theAngTol) {
      return (*self)->IsG1(theTf, theTl, theAngTol);
    }
    bool IsRational() {
      return (*self)->IsRational();
    }
    int Degree() {
      return (*self)->Degree();
    }
    gp_Pnt2d LocalValue (const double U, const int FromK1, const int ToK2) {
      return (*self)->LocalValue(U, FromK1, ToK2);
    }
    void LocalD0 (const double U, const int FromK1, const int ToK2, gp_Pnt2d& P) {
      (*self)->LocalD0(U, FromK1, ToK2, P);
    }
    void LocalD1 (const double U, const int FromK1, const int ToK2, gp_Pnt2d& P, gp_Vec2d& V1) {
      (*self)->LocalD1(U, FromK1, ToK2, P, V1);
    }
    void LocalD2 (const double U, const int FromK1, const int ToK2, gp_Pnt2d& P, gp_Vec2d& V1, gp_Vec2d& V2) {
      (*self)->LocalD2(U, FromK1, ToK2, P, V1, V2);
    }
    void LocalD3 (const double U, const int FromK1, const int ToK2, gp_Pnt2d& P, gp_Vec2d& V1, gp_Vec2d& V2, gp_Vec2d& V3) {
      (*self)->LocalD3(U, FromK1, ToK2, P, V1, V2, V3);
    }
    gp_Vec2d LocalDN (const double U, const int FromK1, const int ToK2, const int N) {
      return (*self)->LocalDN(U, FromK1, ToK2, N);
    }
    int FirstUKnotIndex() {
      return (*self)->FirstUKnotIndex();
    }
    double Knot(const int Index) {
        return (*self)->Knot(Index);
    }
    const TColStd_Array1OfReal& Knots() {
      return (*self)->Knots();
    }
    const TColStd_Array1OfReal& KnotSequence() {
      return (*self)->KnotSequence();
    }
    GeomAbs_BSplKnotDistribution KnotDistribution() {
      return (*self)->KnotDistribution();
    }
    int LastUKnotIndex() {
      return (*self)->LastUKnotIndex();
    }
    void LocateU (const double U, const double ParametricTolerance, int& I1, int& I2, const bool WithKnotRepetition = false) {
      (*self)->LocateU(U,  ParametricTolerance, I1, I2, WithKnotRepetition);
    }
    int Multiplicity(const int Index) {
        return (*self)->Multiplicity(Index);
    }
    const TColStd_Array1OfInteger& Multiplicities() {
      return (*self)->Multiplicities();
    }
    int NbKnots() {
        return(*self)->NbKnots();
    }
    int NbPoles() {
        return(*self)->NbPoles();
    }
    const gp_Pnt2d& Pole(const int Index) {
        return (*self)->Pole(Index);
    }
    const TColgp_Array1OfPnt2d& Poles() {
      return (*self)->Poles();
    }
    double Weight(const int Index) {
        return (*self)->Weight(Index);
    }
    const TColStd_Array1OfReal* Weights() {
      return (*self)->Weights();
    }
    static int MaxDegree() {
      return Geom2d_BSplineCurve::MaxDegree();
    }
    void Resolution (const double ToleranceUV, double& UTolerance) {
      (*self)->Resolution(ToleranceUV, UTolerance);
    }
}
%nodefaultdtor Handle_Geom2d_TrimmedCurve;
class Handle_Geom2d_TrimmedCurve : public Handle_Geom2d_BoundedCurve
{
  Handle_Geom2d_TrimmedCurve()=0;
};

%extend Handle_Geom2d_TrimmedCurve
{
  Handle_Geom2d_TrimmedCurve(const Handle_Geom2d_Curve& C, const double U1, const double U2, const bool Sense = true)
    {
      return new Handle_Geom2d_TrimmedCurve(new Geom2d_TrimmedCurve(C, U1, U2, Sense));
    }
  void Delete() {
    self->~Handle_Geom2d_TrimmedCurve();
  }  
  Handle_Geom2d_Curve BasisCurve() {
    return (*self)->BasisCurve();
  }
  void SetTrim (const double U1, const double U2, const bool Sense = true, const bool theAdjustPeriodic = true) {
    (*self)->SetTrim(U1, U2, Sense, theAdjustPeriodic);
  }
}
   

