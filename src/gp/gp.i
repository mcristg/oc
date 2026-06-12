
%{
#include <gp_XY.hxx>
#include <gp_XYZ.hxx>
#include <gp_Pnt.hxx>
#include <gp_Pnt2d.hxx>
#include <gp_Dir2d.hxx>
#include <gp_Vec2d.hxx>
#include <gp_Ax2d.hxx>
#include <gp_Ax22d.hxx>
#include <gp_Circ2d.hxx>
#include <gp_Elips2d.hxx>
#include <gp_Hypr2d.hxx>
#include <gp_Parab2d.hxx>
#include <gp_Pln.hxx>
#include <gp_Vec.hxx>
#include <gp_Dir.hxx>
#include <gp_Ax3.hxx>
#include <gp_Ax2.hxx>
#include <gp_Ax1.hxx>
#include <gp_Mat2d.hxx>
#include <gp_Mat.hxx>
#include <gp_TrsfForm.hxx>
#include <gp_Trsf2d.hxx>
#include <gp_GTrsf2d.hxx>
#include <gp_Trsf.hxx>
#include <gp_TrsfNLerp.hxx>
#include <gp_GTrsf.hxx>
#include <gp_Lin.hxx>
#include <gp_Circ.hxx>
#include <gp_Elips.hxx>
#include <gp_Cone.hxx>
#include <gp_Cylinder.hxx>
#include <gp_Parab.hxx>
#include <gp_Hypr.hxx>
#include <gp_Torus.hxx>
#include <gp_Sphere.hxx>
#include <gp_Lin2d.hxx>
#include <gp_EulerSequence.hxx>
#include <gp_Quaternion.hxx>
#include <gp_QuaternionNLerp.hxx>
#include <gp_QuaternionSLerp.hxx>
%}

enum gp_TrsfForm
{
  Identity,
  Rotation,
  Translation,
  Central_Symmetry,
  Rotational_Symmetry,
  Bilateral_Symmetry,
  Scale,
  Compound,
  Other
};

enum gp_EulerSequence
{
  Euler_Angles,

  Yaw_Pitch_Roll,

  Extrinsic_XYZ,
  Extrinsic_XZY,
  Extrinsic_YZX,
  Extrinsic_YXZ,
  Extrinsic_ZXY,
  Extrinsic_ZYX,

  Intrinsic_XYZ,
  Intrinsic_XZY,
  Intrinsic_YZX,
  Intrinsic_YXZ,
  Intrinsic_ZXY,
  Intrinsic_ZYX,

  Extrinsic_XYX,
  Extrinsic_XZX,
  Extrinsic_YZY,
  Extrinsic_YXY,
  Extrinsic_ZYZ,
  Extrinsic_ZXZ,

  Intrinsic_XYX,
  Intrinsic_XZX,
  Intrinsic_YZY,
  Intrinsic_YXY,
  Intrinsic_ZXZ,
  Intrinsic_ZYZ
};

class gp_XYZ
{
 public:
  gp_XYZ();
  gp_XYZ(const double X, const double Y, const double Z);
  void SetCoord (const double X, const double Y, const double Z);
  void SetX (const double X);
  void SetY (const double Y);
  void SetZ (const double Z);
  void Coord (double& X, double& Y, double& Z) const;
  double X() const;
  double Y() const;
  double Z() const;
  double Modulus() const;
  double SquareModulus() const;
  bool IsEqual (const gp_XYZ& Other, const double Tolerance) const;
  void Add (const gp_XYZ& Other);
  gp_XYZ Added (const gp_XYZ& Other) const;
  void Cross (const gp_XYZ& Right);
  gp_XYZ Crossed (const gp_XYZ& Right) const;
  double CrossMagnitude (const gp_XYZ& Right) const;
  double CrossSquareMagnitude (const gp_XYZ& Right) const;
  void CrossCross (const gp_XYZ& Coord1, const gp_XYZ& Coord2);
  gp_XYZ CrossCrossed (const gp_XYZ& Coord1, const gp_XYZ& Coord2) const;
  void Divide (const double Scalar);
  gp_XYZ Divided (const double Scalar) const;
  double Dot (const gp_XYZ& Other) const;
  double DotCross (const gp_XYZ& Coord1, const gp_XYZ& Coord2) const;
  void Multiply (const double Scalar);
  void Multiply (const gp_XYZ& Other);
  void Multiply (const gp_Mat& Matrix);
  gp_XYZ Multiplied (const double Scalar) const;
  gp_XYZ Multiplied (const gp_XYZ& Other) const;
  gp_XYZ Multiplied (const gp_Mat& Matrix) const;
  void Normalize();
  gp_XYZ Normalized() const;
  void Reverse();
  gp_XYZ Reversed() const;
  void Subtract (const gp_XYZ& Right);
  gp_XYZ Subtracted (const gp_XYZ& Right) const;
  void SetLinearForm (const double A1, const gp_XYZ& XYZ1, const double A2, const gp_XYZ& XYZ2, const double A3, const gp_XYZ& XYZ3, const gp_XYZ& XYZ4);
  void SetLinearForm (const double A1, const gp_XYZ& XYZ1, const double A2, const gp_XYZ& XYZ2, const double A3, const gp_XYZ& XYZ3);
  void SetLinearForm (const double A1, const gp_XYZ& XYZ1, const double A2, const gp_XYZ& XYZ2, const gp_XYZ& XYZ3);
  void SetLinearForm (const double A1, const gp_XYZ& XYZ1, const double A2, const gp_XYZ& XYZ2);
  void SetLinearForm (const double A1, const gp_XYZ& XYZ1, const gp_XYZ& XYZ2);
  void SetLinearForm (const gp_XYZ& XYZ1, const gp_XYZ& XYZ2);
};  

class gp_Pnt
{
 public:
  gp_Pnt();
  gp_Pnt(const gp_XYZ& Coord);
  gp_Pnt(const double Xp, const double Yp, const double Zp);
  void SetCoord (const double Xp, const double Yp, const double Zp);
  void SetX (const double X);
  void SetY (const double Y);
  void SetZ (const double Z);
  void Coord (double& Xp, double& Yp, double& Zp) const;
  double X() const;
  double Y() const;
  double Z() const;
  const gp_XYZ& Coord() const;
  void BaryCenter (const double Alpha, const gp_Pnt& P, const double Beta);
  bool IsEqual (const gp_Pnt& Other, const double LinearTolerance) const;
  double Distance (const gp_Pnt& Other) const;
  double SquareDistance (const gp_Pnt& Other) const;
  void Mirror (const gp_Pnt& P);
  gp_Pnt Mirrored (const gp_Pnt& P) const;
  void Mirror (const gp_Ax1& A1);
  gp_Pnt Mirrored (const gp_Ax1& A1) const;
  void Mirror (const gp_Ax2& A2);
  gp_Pnt Mirrored (const gp_Ax2& A2) const;
  void Rotate (const gp_Ax1& A1, const double Ang);
  gp_Pnt Rotated (const gp_Ax1& A1, const double Ang) const;
  void Scale (const gp_Pnt& P, const double S);
  gp_Pnt Scaled (const gp_Pnt& P, const double S) const;
  void Transform (const gp_Trsf& T);
  gp_Pnt Transformed (const gp_Trsf& T) const;
  void Translate (const gp_Vec& V);
  gp_Pnt Translated (const gp_Vec& V) const;
  void Translate (const gp_Pnt& P1, const gp_Pnt& P2);
  gp_Pnt Translated (const gp_Pnt& P1, const gp_Pnt& P2) const;
};

class gp_Pnt2d
{
 public:
  gp_Pnt2d();
  gp_Pnt2d(const gp_XY& Coord);
  gp_Pnt2d(const double Xp, const double Yp);
  void SetCoord (const double Xp, const double Yp);
  void SetX (const double X);
  void SetY (const double Y);
  double X() const;
  double Y() const;
  const gp_XY& Coord() const;
  bool IsEqual (const gp_Pnt2d& Other, const double LinearTolerance) const;
  double Distance (const gp_Pnt2d& Other) const;
  double SquareDistance (const gp_Pnt2d& Other) const;
  void Mirror (const gp_Pnt2d& P);
  gp_Pnt2d Mirrored (const gp_Pnt2d& P) const;
  void Mirror (const gp_Ax2d& A);
  gp_Pnt2d Mirrored (const gp_Ax2d& A) const;
  void Rotate (const gp_Pnt2d& P, const double Ang);
  gp_Pnt2d Rotated (const gp_Pnt2d& P, const double Ang) const;
  void Scale (const gp_Pnt2d& P, const double S);
  gp_Pnt2d Scaled (const gp_Pnt2d& P, const double S) const;
  void Transform (const gp_Trsf2d& T);
  gp_Pnt2d Transformed (const gp_Trsf2d& T) const;
  gp_Pnt2d Translated (const gp_Vec2d& V) const;
  void Translate (const gp_Pnt2d& P1, const gp_Pnt2d& P2);
  gp_Pnt2d Translated (const gp_Pnt2d& P1, const gp_Pnt2d& P2) const;  
};

class gp_Dir2d
{
 public:
  gp_Dir2d();
  gp_Dir2d(const gp_Vec2d& V);
  gp_Dir2d(const gp_XY& Coord);
  gp_Dir2d(const double Xv, const double Yv);
  void SetCoord (const double Xv, const double Yv);
  void SetX (const double X);
  void SetY (const double Y);
  double X() const;
  double Y() const;
  bool IsEqual (const gp_Dir2d& Other, const double AngularTolerance) const;
  bool IsNormal (const gp_Dir2d& Other, const double AngularTolerance) const;
  bool IsOpposite (const gp_Dir2d& Other, const double AngularTolerance) const;
  bool IsParallel (const gp_Dir2d& Other, const double AngularTolerance) const;
  double Angle (const gp_Dir2d& Other) const;
  double Crossed (const gp_Dir2d& Right) const;
  double Dot (const gp_Dir2d& Other) const;
  void Reverse();
  gp_Dir2d Reversed() const;
  void Mirror (const gp_Dir2d& V);
  gp_Dir2d Mirrored (const gp_Dir2d& V) const;
  void Mirror (const gp_Ax2d& A);
  gp_Dir2d Mirrored (const gp_Ax2d& A) const;
  void Rotate (const double Ang);
  gp_Dir2d Rotated (const double Ang) const;
  void Transform (const gp_Trsf2d& T);
  gp_Dir2d Transformed (const gp_Trsf2d& T) const;
};

class gp_Vec2d
{
 public:
  gp_Vec2d();
  gp_Vec2d(const gp_Dir2d& V);
  gp_Vec2d(const gp_XY& Coord);
  gp_Vec2d(const double Xv, const double Yv);
  gp_Vec2d(const gp_Pnt2d& P1, const gp_Pnt2d& P2);
  void SetCoord (const double Xv, const double Yv);
  void SetX (const double X);
  void SetY (const double Y);
  double X() const;
  double Y() const;
  bool IsEqual (const gp_Vec2d& Other, const double LinearTolerance, const double AngularTolerance) const;
  bool IsNormal (const gp_Vec2d& Other, const double AngularTolerance) const;
  bool IsOpposite (const gp_Vec2d& Other, const double AngularTolerance) const;
  bool IsParallel (const gp_Vec2d& Other, const double AngularTolerance) const;
  double Angle (const gp_Vec2d& Other) const;
  double Magnitude() const;
  double SquareMagnitude() const;
  void Add (const gp_Vec2d& Other);
  gp_Vec2d Added (const gp_Vec2d& Other) const;
  double Crossed (const gp_Vec2d& Right) const;
  double CrossMagnitude (const gp_Vec2d& Right) const;
  double CrossSquareMagnitude (const gp_Vec2d& Right) const;
  void Divide (const double Scalar);
  gp_Vec2d Divided (const double Scalar) const;
  double Dot (const gp_Vec2d& Other) const;
  gp_Vec2d GetNormal() const;
  void Multiply (const double Scalar);
  gp_Vec2d Multiplied (const double Scalar) const;
  void Normalize();
  gp_Vec2d Normalized() const;
  void Reverse();
  gp_Vec2d Reversed() const;
  void Subtract (const gp_Vec2d& Right);
  gp_Vec2d Subtracted (const gp_Vec2d& Right) const;
  void SetLinearForm (const double A1, const gp_Vec2d& V1, const double A2, const gp_Vec2d& V2, const gp_Vec2d& V3);
  void SetLinearForm (const double A1, const gp_Vec2d& V1, const double A2, const gp_Vec2d& V2);
  void SetLinearForm (const double A1, const gp_Vec2d& V1, const gp_Vec2d& V2);
  void SetLinearForm (const gp_Vec2d& Left, const gp_Vec2d& Right);
  void Mirror (const gp_Vec2d& V);
  gp_Vec2d Mirrored (const gp_Vec2d& V) const;
  void Mirror (const gp_Ax2d& A1);
  gp_Vec2d Mirrored (const gp_Ax2d& A1) const;
  void Rotate (const double Ang);
  gp_Vec2d Rotated (const double Ang) const;
  void Scale (const double S);
  gp_Vec2d Scaled (const double S) const;
  void Transform (const gp_Trsf2d& T);
  gp_Vec2d Transformed (const gp_Trsf2d& T) const;
};

class gp_Ax2d
{
 public:
  gp_Ax2d();
  gp_Ax2d(const gp_Pnt2d& P, const gp_Dir2d& V);
  void SetLocation (const gp_Pnt2d& Locat);
  void SetDirection (const gp_Dir2d& V);
  const gp_Pnt2d& Location() const;
  const gp_Dir2d& Direction() const;
  bool IsCoaxial (const gp_Ax2d& Other, const double AngularTolerance, const double LinearTolerance) const;
  bool IsNormal (const gp_Ax2d& Other, const double AngularTolerance) const;
  bool IsOpposite (const gp_Ax2d& Other, const double AngularTolerance) const;
  bool IsParallel (const gp_Ax2d& Other, const double AngularTolerance) const;
  double Angle (const gp_Ax2d& Other) const;
  void Reverse();
  gp_Ax2d Reversed() const;
  void Mirror (const gp_Pnt2d& P);
  gp_Ax2d Mirrored (const gp_Pnt2d& P) const;
  void Mirror (const gp_Ax2d& A);
  gp_Ax2d Mirrored (const gp_Ax2d& A) const;
  void Rotate (const gp_Pnt2d& P, const double Ang);
  gp_Ax2d Rotated (const gp_Pnt2d& P, const double Ang) const;
  void Scale (const gp_Pnt2d& P, const double S);
  gp_Ax2d Scaled (const gp_Pnt2d& P, const double S) const;
  void Transform (const gp_Trsf2d& T);
  gp_Ax2d Transformed (const gp_Trsf2d& T) const;
  void Translate (const gp_Vec2d& V);
  gp_Ax2d Translated (const gp_Vec2d& V) const;
  void Translate (const gp_Pnt2d& P1, const gp_Pnt2d& P2);
  gp_Ax2d Translated (const gp_Pnt2d& P1, const gp_Pnt2d& P2) const;
};

class gp_Ax22d
{
 public:
  gp_Ax22d();
  gp_Ax22d(const gp_Pnt2d& P, const gp_Dir2d& Vx, const gp_Dir2d& Vy);
  gp_Ax22d(const gp_Pnt2d& P, const gp_Dir2d& V, const bool Sense = true);
  gp_Ax22d(const gp_Ax2d& A, const bool Sense = true);
  void SetAxis (const gp_Ax22d& A1);
  void SetXAxis (const gp_Ax2d& A1);
  void SetYAxis (const gp_Ax2d& A1);
  void SetLocation (const gp_Pnt2d& P);
  void SetXDirection (const gp_Dir2d& Vx);
  void SetYDirection (const gp_Dir2d& Vy);
  gp_Ax2d XAxis() const;
  gp_Ax2d YAxis() const;
  const gp_Pnt2d& Location() const;
  const gp_Dir2d& XDirection() const;
  const gp_Dir2d& YDirection() const;
  void Mirror (const gp_Pnt2d& P);
  gp_Ax22d Mirrored (const gp_Pnt2d& P) const;
  void Mirror (const gp_Ax2d& A);
  gp_Ax22d Mirrored (const gp_Ax2d& A) const;
  void Rotate (const gp_Pnt2d& P, const double Ang);
  gp_Ax22d Rotated (const gp_Pnt2d& P, const double Ang) const;
  void Scale (const gp_Pnt2d& P, const double S);
  gp_Ax22d Scaled (const gp_Pnt2d& P, const double S) const;
  void Transform (const gp_Trsf2d& T);
  gp_Ax22d Transformed (const gp_Trsf2d& T) const;
  void Translate (const gp_Vec2d& V);
  gp_Ax22d Translated (const gp_Vec2d& V) const;
  void Translate (const gp_Pnt2d& P1, const gp_Pnt2d& P2);
  gp_Ax22d Translated (const gp_Pnt2d& P1, const gp_Pnt2d& P2) const;
};

class gp_Circ2d
{
 public:
  gp_Circ2d();
  gp_Circ2d(const gp_Ax2d& XAxis, const double Radius, const bool Sense = true);
  gp_Circ2d(const gp_Ax22d& Axis, const double Radius);
  void SetLocation (const gp_Pnt2d& P);
  void SetXAxis (const gp_Ax2d& A);
  void SetAxis (const gp_Ax22d& A);
  void SetYAxis (const gp_Ax2d& A);
  void SetRadius (const double Radius);
  double Area() const;
  void Coefficients (double& A, double& B, double& C, double& D, double& E, double& F) const;
  bool Contains (const gp_Pnt2d& P, const double LinearTolerance) const;
  double Distance (const gp_Pnt2d& P) const;
  double SquareDistance (const gp_Pnt2d& P) const;
  double Length() const;
  const gp_Pnt2d& Location() const;
  double Radius() const;
  const gp_Ax22d& Axis() const;
  const gp_Ax22d& Position() const;
  gp_Ax2d XAxis() const;
  gp_Ax2d YAxis() const;
  void Reverse();
  gp_Circ2d Reversed() const;
  bool IsDirect() const;
  void Mirror (const gp_Pnt2d& P);
  gp_Circ2d Mirrored (const gp_Pnt2d& P) const;
  void Mirror (const gp_Ax2d& A);
  gp_Circ2d Mirrored (const gp_Ax2d& A) const;
  void Rotate (const gp_Pnt2d& P, const double Ang);
  gp_Circ2d Rotated (const gp_Pnt2d& P, const double Ang) const;
  void Scale (const gp_Pnt2d& P, const double S);
  gp_Circ2d Scaled (const gp_Pnt2d& P, const double S) const;
  void Transform (const gp_Trsf2d& T);
  gp_Circ2d Transformed (const gp_Trsf2d& T) const;
  void Translate (const gp_Vec2d& V);
  gp_Circ2d Translated (const gp_Vec2d& V) const;
  void Translate (const gp_Pnt2d& P1, const gp_Pnt2d& P2);
  gp_Circ2d Translated (const gp_Pnt2d& P1, const gp_Pnt2d& P2) const;
};

class gp_Elips2d
{
 public:
  gp_Elips2d();
  gp_Elips2d(const gp_Ax2d& MajorAxis, const double MajorRadius, const double MinorRadius, const bool Sense = true);
  gp_Elips2d(const gp_Ax22d& A, const double MajorRadius, const double MinorRadius);
  void SetLocation (const gp_Pnt2d& P);
  void SetMajorRadius (const double MajorRadius);
  void SetMinorRadius (const double MinorRadius);
  void SetAxis (const gp_Ax22d& A);
  void SetXAxis (const gp_Ax2d& A);
  void SetYAxis (const gp_Ax2d& A);
  double Area() const;
  void Coefficients (double& A, double& B, double& C, double& D, double& E, double& F) const;
  gp_Ax2d Directrix1() const;
  gp_Ax2d Directrix2() const;
  double Eccentricity() const;
  double Focal() const;
  gp_Pnt2d Focus1() const;
  gp_Pnt2d Focus2() const;
  const gp_Pnt2d& Location() const;
  double MajorRadius() const;
  double MinorRadius() const;
  double Parameter() const;
  const gp_Ax22d& Axis() const;
  gp_Ax2d XAxis() const;
  gp_Ax2d YAxis() const;
  void Reverse();
  bool IsDirect() const;
  void Mirror (const gp_Pnt2d& P);
  gp_Elips2d Mirrored (const gp_Pnt2d& P) const;
  void Mirror (const gp_Ax2d& A);
  gp_Elips2d Mirrored (const gp_Ax2d& A) const;
  void Rotate (const gp_Pnt2d& P, const double Ang);
  gp_Elips2d Rotated (const gp_Pnt2d& P, const double Ang) const;
  void Scale (const gp_Pnt2d& P, const double S);
  gp_Elips2d Scaled (const gp_Pnt2d& P, const double S) const;
  void Transform (const gp_Trsf2d& T);
  gp_Elips2d Transformed (const gp_Trsf2d& T) const;
  void Translate (const gp_Vec2d& V);
  gp_Elips2d Translated (const gp_Vec2d& V) const;
  void Translate (const gp_Pnt2d& P1, const gp_Pnt2d& P2);
  gp_Elips2d Translated (const gp_Pnt2d& P1, const gp_Pnt2d& P2) const;  
};

class gp_Hypr2d
{
 public:
  gp_Hypr2d();
  gp_Hypr2d(const gp_Ax2d& MajorAxis, const double MajorRadius, const double MinorRadius, const bool Sense = true);
  gp_Hypr2d(const gp_Ax22d& A, const double MajorRadius, const double MinorRadius);
  void SetLocation (const gp_Pnt2d& P);
  void SetMajorRadius (const double MajorRadius);
  void SetMinorRadius (const double MinorRadius);
  void SetAxis (const gp_Ax22d& A);
  void SetXAxis (const gp_Ax2d& A);
  void SetYAxis (const gp_Ax2d& A);
  gp_Ax2d Asymptote1() const;
  gp_Ax2d Asymptote2() const;
  void Coefficients (double& A, double& B, double& C, double& D, double& E, double& F) const;
  gp_Hypr2d ConjugateBranch1() const;
  gp_Hypr2d ConjugateBranch2() const;
  gp_Ax2d Directrix1() const;
  gp_Ax2d Directrix2() const;
  double Eccentricity() const;
  double Focal() const;
  gp_Pnt2d Focus1() const;
  gp_Pnt2d Focus2() const;
  const gp_Pnt2d& Location() const;
  double MajorRadius() const;
  double MinorRadius() const;
  gp_Hypr2d OtherBranch() const;
  double Parameter() const;
  const gp_Ax22d& Axis() const;
  gp_Ax2d XAxis() const;
  gp_Ax2d YAxis() const;
  void Reverse();
  gp_Hypr2d Reversed() const;
  bool IsDirect() const;
  void Mirror (const gp_Pnt2d& P);
  gp_Hypr2d Mirrored (const gp_Pnt2d& P) const;
  void Mirror (const gp_Ax2d& A);
  gp_Hypr2d Mirrored (const gp_Ax2d& A) const;
  void Rotate (const gp_Pnt2d& P, const double Ang);
  gp_Hypr2d Rotated (const gp_Pnt2d& P, const double Ang) const;
  void Scale (const gp_Pnt2d& P, const double S);
  gp_Hypr2d Scaled (const gp_Pnt2d& P, const double S) const;
  void Transform (const gp_Trsf2d& T);
  gp_Hypr2d Transformed (const gp_Trsf2d& T) const;
  void Translate (const gp_Vec2d& V);
  gp_Hypr2d Translated (const gp_Vec2d& V) const;
  void Translate (const gp_Pnt2d& P1, const gp_Pnt2d& P2);
  gp_Hypr2d Translated (const gp_Pnt2d& P1, const gp_Pnt2d& P2) const;
};

class gp_Parab2d
{
 public:
  gp_Parab2d();
  gp_Parab2d(const gp_Ax2d& theMirrorAxis,
             const double theFocalLength,
             const bool theSense = true);
  gp_Parab2d(const gp_Ax22d& theAxes, const double theFocalLength);
  gp_Parab2d(const gp_Ax2d& theDirectrix,
	     const gp_Pnt2d& theFocus,
	     const bool theSense = true);
  void SetFocal (const double Focal);
  void SetLocation (const gp_Pnt2d& P);
  void SetMirrorAxis (const gp_Ax2d& A);
  void SetAxis (const gp_Ax22d& A);
  void Coefficients (double& A, double& B,
		     double& C, double& D,
		     double& E, double& F) const;
  gp_Ax2d Directrix() const;
  double Focal() const;
  gp_Pnt2d Focus() const;
  gp_Pnt2d Location() const;
  gp_Ax2d MirrorAxis() const;
  gp_Ax22d Axis() const;
  double Parameter() const;
  void Reverse();
  gp_Parab2d Reversed() const;
  bool IsDirect() const;
  void Mirror (const gp_Pnt2d& P);
  gp_Parab2d Mirrored (const gp_Pnt2d& P) const;
  void Mirror (const gp_Ax2d& A);
  void Rotate (const gp_Pnt2d& P, const double Ang);
  gp_Parab2d Rotated (const gp_Pnt2d& P, const double Ang) const;
  void Scale (const gp_Pnt2d& P, const double S);
  gp_Parab2d Scaled (const gp_Pnt2d& P, const double S) const;
  void Transform (const gp_Trsf2d& T);
  gp_Parab2d Transformed (const gp_Trsf2d& T) const;
  gp_Parab2d Translated (const gp_Vec2d& V) const;
  void Translate (const gp_Pnt2d& P1, const gp_Pnt2d& P2);
  gp_Parab2d Translated (const gp_Pnt2d& P1, const gp_Pnt2d& P2) const;
};
  

class gp_Pln
{
 public:
  gp_Pln(const gp_Ax3& A3);
  gp_Pln(const gp_Pnt& P, const gp_Dir& V);
  gp_Pln(const double A, const double B, const double C, const double D);
  void Coefficients (double& A, double& B, double& C, double& D) const;
  void SetAxis (const gp_Ax1& A1);
  void SetLocation (const gp_Pnt& Loc);
  void SetPosition (const gp_Ax3& A3);
  void UReverse();
  void VReverse();
  bool Direct() const;
  const gp_Ax1& Axis() const;
  const gp_Pnt& Location() const;
  const gp_Ax3& Position() const;
  double Distance (const gp_Pnt& P) const;
  double Distance (const gp_Lin& L) const;
  double Distance (const gp_Pln& Other) const;
  double SquareDistance (const gp_Pnt& P) const;
  double SquareDistance (const gp_Lin& L) const;
  double SquareDistance (const gp_Pln& Other) const;
  gp_Ax1 XAxis() const;
  gp_Ax1 YAxis() const;
  bool Contains (const gp_Pnt& P, const double LinearTolerance) const;
  bool Contains (const gp_Lin& L, const double LinearTolerance, const double AngularTolerance) const;
  void Mirror (const gp_Pnt& P);
  gp_Pln Mirrored (const gp_Pnt& P) const;
  void Mirror (const gp_Ax1& A1);
  gp_Pln Mirrored (const gp_Ax1& A1) const;
  void Mirror (const gp_Ax2& A2);
  gp_Pln Mirrored (const gp_Ax2& A2) const;
  void Rotate (const gp_Ax1& A1, const double Ang);
  gp_Pln Rotated (const gp_Ax1& A1, const double Ang) const;
  void Scale (const gp_Pnt& P, const double S);
  gp_Pln Scaled (const gp_Pnt& P, const double S) const;
  void Transform (const gp_Trsf& T);
  gp_Pln Transformed (const gp_Trsf& T) const;
  void Translate (const gp_Vec& V);
  gp_Pln Translated (const gp_Vec& V) const;
  void Translate (const gp_Pnt& P1, const gp_Pnt& P2);
  gp_Pln Translated (const gp_Pnt& P1, const gp_Pnt& P2) const;
};

class gp_Vec
{
 public:
  gp_Vec();
  gp_Vec(const gp_Dir& V);
  gp_Vec(const gp_XYZ& Coord);
  gp_Vec(const double Xv, const double Yv, const double Zv);
  gp_Vec(const gp_Pnt& P1, const gp_Pnt& P2);
  void SetCoord (const double Xv, const double Yv, const double Zv);
  void SetX (const double X);
  void SetY (const double Y);
  void SetZ (const double Z);
  double X() const;
  double Y() const;
  double Z() const;
  bool IsEqual (const gp_Vec& Other, const double LinearTolerance, const double AngularTolerance) const;
  bool IsNormal (const gp_Vec& Other, const double AngularTolerance) const;
  bool IsOpposite (const gp_Vec& Other, const double AngularTolerance) const;
  bool IsParallel (const gp_Vec& Other, const double AngularTolerance) const;
  double Angle (const gp_Vec& Other) const;
  double AngleWithRef (const gp_Vec& Other, const gp_Vec& VRef) const;
  double Magnitude() const;
  double SquareMagnitude() const;
  void Add (const gp_Vec& Other);
  gp_Vec Added (const gp_Vec& Other) const;
  void Subtract (const gp_Vec& Right);
  gp_Vec Subtracted (const gp_Vec& Right) const;
  void Multiply (const double Scalar);
  gp_Vec Multiplied (const double Scalar) const;
  void Divide (const double Scalar);
  gp_Vec Divided (const double Scalar) const;
  void Cross (const gp_Vec& Right);
  gp_Vec Crossed (const gp_Vec& Right) const;
  double CrossMagnitude (const gp_Vec& Right) const;
  double CrossSquareMagnitude (const gp_Vec& Right) const;
  void CrossCross (const gp_Vec& V1, const gp_Vec& V2);
  gp_Vec CrossCrossed (const gp_Vec& V1, const gp_Vec& V2) const;
  double Dot (const gp_Vec& Other) const;
  double DotCross (const gp_Vec& V1, const gp_Vec& V2) const;
  void Normalize();
  gp_Vec Normalized() const;
  void Reverse();
  gp_Vec Reversed() const;
  void SetLinearForm (const double A1, const gp_Vec& V1, const double A2, const gp_Vec& V2, const double A3, const gp_Vec& V3, const gp_Vec& V4);
  void SetLinearForm (const double A1, const gp_Vec& V1, const double A2, const gp_Vec& V2, const double A3, const gp_Vec& V3);
  void SetLinearForm (const double A1, const gp_Vec& V1, const double A2, const gp_Vec& V2, const gp_Vec& V3);
  void SetLinearForm (const double A1, const gp_Vec& V1, const double A2, const gp_Vec& V2);
  void SetLinearForm (const double A1, const gp_Vec& V1, const gp_Vec& V2);
  void SetLinearForm (const gp_Vec& V1, const gp_Vec& V2);
  void Mirror (const gp_Vec& V);
  gp_Vec Mirrored (const gp_Vec& V) const;
  void Mirror (const gp_Ax1& A1);
  gp_Vec Mirrored (const gp_Ax1& A1) const;
  void Mirror (const gp_Ax2& A2);
  gp_Vec Mirrored (const gp_Ax2& A2) const;
  void Rotate (const gp_Ax1& A1, const double Ang);
  gp_Vec Rotated (const gp_Ax1& A1, const double Ang) const;
  void Scale (const double S);
  gp_Vec Scaled (const double S) const;
  void Transform (const gp_Trsf& T);
  gp_Vec Transformed (const gp_Trsf& T) const;  
};



class gp_Dir
{
 public:
  gp_Dir();
  gp_Dir(const gp_Vec& V);
  gp_Dir(const gp_XYZ& Coord);
  gp_Dir(const double Xv, const double Yv, const double Zv);
  void SetCoord (const double Xv, const double Yv, const double Zv);
  void SetX (const double X);
  void SetY (const double Y);
  void SetZ (const double Z);
  double X() const;
  double Y() const;
  double Z() const;
  bool IsEqual (const gp_Dir& Other, const double AngularTolerance) const;
  bool IsNormal (const gp_Dir& Other, const double AngularTolerance) const;
  bool IsOpposite (const gp_Dir& Other, const double AngularTolerance) const;
  bool IsParallel (const gp_Dir& Other, const double AngularTolerance) const;
  double Angle (const gp_Dir& Other) const;
  double AngleWithRef (const gp_Dir& Other, const gp_Dir& VRef) const;
  void Cross (const gp_Dir& Right);
  gp_Dir Crossed (const gp_Dir& Right) const;
  void CrossCross (const gp_Dir& V1, const gp_Dir& V2);
  gp_Dir CrossCrossed (const gp_Dir& V1, const gp_Dir& V2) const;
  double Dot (const gp_Dir& Other) const;
  double DotCross (const gp_Dir& V1, const gp_Dir& V2) const;
  void Reverse();
  gp_Dir Reversed() const;
  void Mirror (const gp_Dir& V);
  gp_Dir Mirrored (const gp_Dir& V) const;
  void Mirror (const gp_Ax1& A1);
  gp_Dir Mirrored (const gp_Ax1& A1) const;
  void Mirror (const gp_Ax2& A2);
  gp_Dir Mirrored (const gp_Ax2& A2) const;
  void Rotate (const gp_Ax1& A1, const double Ang);
  gp_Dir Rotated (const gp_Ax1& A1, const double Ang) const;
  void Transform (const gp_Trsf& T);
  gp_Dir Transformed (const gp_Trsf& T) const;
};

class gp_Ax3
{
 public:
  gp_Ax3();
  gp_Ax3(const gp_Ax2& A);
  gp_Ax3(const gp_Pnt& P, const gp_Dir& N, const gp_Dir& Vx);
  gp_Ax3(const gp_Pnt& P, const gp_Dir& V);
  void XReverse();
  void YReverse();
  void ZReverse();
  void SetAxis (const gp_Ax1& A1);
  void SetDirection (const gp_Dir& V);
  void SetLocation (const gp_Pnt& P);
  void SetXDirection (const gp_Dir& Vx);
  void SetYDirection (const gp_Dir& Vy);
  double Angle (const gp_Ax3& Other) const;
  const gp_Ax1& Axis() const;
  gp_Ax2 Ax2() const;
  const gp_Dir& Direction() const;
  const gp_Pnt& Location() const;
  const gp_Dir& XDirection() const;
  const gp_Dir& YDirection() const;
  bool Direct() const;
  bool IsCoplanar (const gp_Ax3& Other, const double LinearTolerance, const double AngularTolerance) const;
  bool IsCoplanar (const gp_Ax1& A1, const double LinearTolerance, const double AngularTolerance) const;
  void Mirror (const gp_Pnt& P);
  gp_Ax3 Mirrored (const gp_Pnt& P) const;
  void Mirror (const gp_Ax1& A1);
  gp_Ax3 Mirrored (const gp_Ax1& A1) const;
  void Mirror (const gp_Ax2& A2);
  gp_Ax3 Mirrored (const gp_Ax2& A2) const;
  void Rotate (const gp_Ax1& A1, const double Ang);
  gp_Ax3 Rotated (const gp_Ax1& A1, const double Ang) const;
  void Scale (const gp_Pnt& P, const double S);
  gp_Ax3 Scaled (const gp_Pnt& P, const double S) const;
  void Transform (const gp_Trsf& T);
  gp_Ax3 Transformed (const gp_Trsf& T) const;
  void Translate (const gp_Vec& V);
  gp_Ax3 Translated (const gp_Vec& V) const;
  void Translate (const gp_Pnt& P1, const gp_Pnt& P2);
  gp_Ax3 Translated (const gp_Pnt& P1, const gp_Pnt& P2) const;
};

class gp_Ax2
{
 public:
  gp_Ax2();
  gp_Ax2(const gp_Pnt& P, const gp_Dir& N, const gp_Dir& Vx);
  gp_Ax2(const gp_Pnt& P, const gp_Dir& V);
  void SetAxis (const gp_Ax1& A1);
  void SetDirection (const gp_Dir& V);
  void SetLocation (const gp_Pnt& P);
  void SetXDirection (const gp_Dir& Vx);
  void SetYDirection (const gp_Dir& Vy);
  double Angle (const gp_Ax2& Other) const;
  const gp_Ax1& Axis() const;
  const gp_Dir& Direction() const;
  const gp_Pnt& Location() const;
  const gp_Dir& XDirection() const;
  const gp_Dir& YDirection() const;
  bool IsCoplanar (const gp_Ax2& Other, const double LinearTolerance, const double AngularTolerance) const;
  bool IsCoplanar (const gp_Ax1& A1, const double LinearTolerance, const double AngularTolerance) const;
  void Mirror (const gp_Pnt& P);
  gp_Ax2 Mirrored (const gp_Pnt& P) const;
  void Mirror (const gp_Ax1& A1);
  gp_Ax2 Mirrored (const gp_Ax1& A1) const;
  void Mirror (const gp_Ax2& A2);
  gp_Ax2 Mirrored (const gp_Ax2& A2) const;
  void Rotate (const gp_Ax1& A1, const double Ang);
  gp_Ax2 Rotated (const gp_Ax1& A1, const double Ang) const;
  void Scale (const gp_Pnt& P, const double S);
  gp_Ax2 Scaled (const gp_Pnt& P, const double S) const;
  void Transform (const gp_Trsf& T);
  gp_Ax2 Transformed (const gp_Trsf& T) const;
  void Translate (const gp_Vec& V);
  gp_Ax2 Translated (const gp_Vec& V) const;
  void Translate (const gp_Pnt& P1, const gp_Pnt& P2);
  gp_Ax2 Translated (const gp_Pnt& P1, const gp_Pnt& P2) const;
};

class gp_Ax1
{
 public:
  gp_Ax1();
  gp_Ax1(const gp_Pnt& P, const gp_Dir& V);
  void SetDirection (const gp_Dir& V);
  void SetLocation (const gp_Pnt& P);
  const gp_Dir& Direction() const;
  const gp_Pnt& Location() const;
  bool IsCoaxial (const gp_Ax1& Other, const double AngularTolerance, const double LinearTolerance) const;
  bool IsNormal (const gp_Ax1& Other, const double AngularTolerance) const;
  bool IsOpposite (const gp_Ax1& Other, const double AngularTolerance) const;
  bool IsParallel (const gp_Ax1& Other, const double AngularTolerance) const;
  double Angle (const gp_Ax1& Other) const;
  void Reverse();
  gp_Ax1 Reversed() const;
  void Mirror (const gp_Pnt& P);
  gp_Ax1 Mirrored (const gp_Pnt& P) const;
  void Mirror (const gp_Ax1& A1);
  gp_Ax1 Mirrored (const gp_Ax1& A1) const;
  void Mirror (const gp_Ax2& A2);
  gp_Ax1 Mirrored (const gp_Ax2& A2) const;
  void Rotate (const gp_Ax1& A1, const double Ang);
  gp_Ax1 Rotated (const gp_Ax1& A1, const double Ang) const;
  void Scale (const gp_Pnt& P, const double S);
  gp_Ax1 Scaled (const gp_Pnt& P, const double S) const;
  void Transform (const gp_Trsf& T);
  gp_Ax1 Transformed (const gp_Trsf& T) const;
  void Translate (const gp_Vec& V);
  gp_Ax1 Translated (const gp_Vec& V) const;
  void Translate (const gp_Pnt& P1, const gp_Pnt& P2);
  gp_Ax1 Translated (const gp_Pnt& P1, const gp_Pnt& P2) const;
};

class gp_Trsf2d
{
 public:
  gp_Trsf2d();
  gp_Trsf2d(const gp_Trsf& T);
  void SetMirror (const gp_Pnt2d& P);
  void SetMirror (const gp_Ax2d& A);
  void SetRotation (const gp_Pnt2d& P, const double Ang);
  void SetScale (const gp_Pnt2d& P, const double S);
  void SetTransformation (const gp_Ax2d& FromSystem1, const gp_Ax2d& ToSystem2);
  void SetTransformation (const gp_Ax2d& ToSystem);
  void SetTranslation (const gp_Vec2d& V);
  void SetTranslation (const gp_Pnt2d& P1, const gp_Pnt2d& P2);
  void SetTranslationPart (const gp_Vec2d& V);
  void SetScaleFactor (const double S);
  bool IsNegative() const;
  gp_TrsfForm Form() const;
  double ScaleFactor() const;
  const gp_XY& TranslationPart() const;
  gp_Mat2d VectorialPart() const;
  gp_Mat2d& HVectorialPart() const;
  double RotationPart() const;
  double Value (const int Row, const int Col) const;
  void Invert();
  gp_Trsf2d Inverted() const;
  gp_Trsf2d Multiplied (const gp_Trsf2d& T) const;
  void Multiply (const gp_Trsf2d& T);
  void PreMultiply (const gp_Trsf2d& T);
  void Power (const int N);
  gp_Trsf2d Powered (const int N);
  void Transforms (double& X, double& Y) const;
  void Transforms (gp_XY& Coord) const;
  void SetValues (const double a11, const double a12, const double a13, const double a21, const double a22, const double a23);
};

class gp_GTrsf2d
{
 public:
  gp_GTrsf2d();
  gp_GTrsf2d(const gp_Trsf2d& T);
  gp_GTrsf2d(const gp_Mat2d& M, const gp_XY& V);
  void SetAffinity (const gp_Ax2d& A, const double Ratio);
  void SetValue (const int Row, const int Col, const double Value);
  void SetTranslationPart (const gp_XY& Coord);
  void SetTrsf2d (const gp_Trsf2d& T);
  void SetVectorialPart (const gp_Mat2d& Matrix);
  bool IsNegative() const;
  bool IsSingular() const;
  gp_TrsfForm Form() const;
  const gp_XY& TranslationPart() const;
  const gp_Mat2d& VectorialPart() const;
  double Value (const int Row, const int Col) const;
  void Invert();
  gp_GTrsf2d Inverted() const;
  gp_GTrsf2d Multiplied (const gp_GTrsf2d& T) const;
  void Multiply (const gp_GTrsf2d& T);
  void PreMultiply (const gp_GTrsf2d& T);
  void Power (const int N);
  gp_GTrsf2d Powered (const int N) const;
  void Transforms (gp_XY& Coord) const;
  gp_XY Transformed (const gp_XY& Coord) const;
  void Transforms (double& X, double& Y) const;
  gp_Trsf2d Trsf2d() const;
};

class gp_Trsf
{
 public:
  gp_Trsf();
  gp_Trsf(const gp_Trsf2d& T);
  void SetMirror (const gp_Pnt& P);
  void SetMirror (const gp_Ax1& A1);
  void SetMirror (const gp_Ax2& A2);
  void SetRotation(const gp_Ax1& A1,const double Ang);
  void SetRotation (const gp_Quaternion& R);
  void SetScale (const gp_Pnt& P, const double S);
  void SetDisplacement (const gp_Ax3& FromSystem1, const gp_Ax3& ToSystem2);
  void SetTransformation (const gp_Ax3& FromSystem1, const gp_Ax3& ToSystem2);
  void SetTransformation (const gp_Ax3& ToSystem);
  void SetTransformation (const gp_Quaternion& R, const gp_Vec& T);
  void SetTranslation(const gp_Vec& V);
  void SetTranslation (const gp_Pnt& P1, const gp_Pnt& P2);
  void SetTranslationPart (const gp_Vec& V);
  void SetScaleFactor (const double S);
  void SetForm (const gp_TrsfForm P);
  void SetValues(const double a11,const double a12,
		 const double a13,const double a14,const double a21,
		 const double a22,const double a23,const double a24,
		 const double a31,const double a32,const double a33,
		 const double a34);
  bool IsNegative() const;
  gp_TrsfForm Form() const;
  double ScaleFactor() const;
  const gp_XYZ& TranslationPart() const;
  bool GetRotation (gp_XYZ& theAxis, double& theAngle) const;
  gp_Quaternion GetRotation() const;
  gp_Mat VectorialPart() const;
  gp_Mat& HVectorialPart() const;
  double Value (const int Row, const int Col) const;
  void Invert();
  gp_Trsf Inverted() const;
  gp_Trsf Multiplied (const gp_Trsf& T) const;
  void Multiply (const gp_Trsf& T);
  void PreMultiply (const gp_Trsf& T);
  void Power (const int N);
  gp_Trsf Powered (const int N) const;
  void Transforms (double& X, double& Y, double& Z) const;
  void Transforms (gp_XYZ& Coord) const;	
};

%{ 
typedef NCollection_Lerp<gp_Trsf> gp_TrsfNLerp;
  %}

class gp_TrsfNLerp
{
 public:
  gp_TrsfNLerp();
  gp_TrsfNLerp(const gp_Trsf& theStart, const gp_Trsf& theEnd);
  void Init (const gp_Trsf& theStart, const gp_Trsf& theEnd);
  void Interpolate (double theT, gp_Trsf& theResult);
};  

class gp_GTrsf
{
 public:
  gp_GTrsf();
  gp_GTrsf(const gp_Trsf& T);
  gp_GTrsf(const gp_Mat& M, const gp_XYZ& V);
  void SetAffinity (const gp_Ax1& A1, const double Ratio);
  void SetAffinity (const gp_Ax2& A2, const double Ratio);
  void SetValue (const int Row, const int Col, const double Value);
  void SetVectorialPart (const gp_Mat& Matrix);
  void SetTranslationPart (const gp_XYZ& Coord);
  void SetTrsf (const gp_Trsf& T);
  bool IsNegative() const;
  bool IsSingular() const;
  gp_TrsfForm Form() const;
  void SetForm();
  const gp_XYZ& TranslationPart() const;
  const gp_Mat& VectorialPart() const;
  double Value (const int Row, const int Col) const;
  void Invert();
  gp_GTrsf Inverted() const;
  gp_GTrsf Multiplied (const gp_GTrsf& T) const;
  void Multiply (const gp_GTrsf& T);
  void PreMultiply (const gp_GTrsf& T);
  void Power (const int N);
  gp_GTrsf Powered (const int N) const;
  void Transforms (gp_XYZ& Coord) const;
  void Transforms (double& X, double& Y, double& Z) const;
  gp_Trsf Trsf() const;
};  

class gp_Circ
{
 public:
  gp_Circ();
  gp_Circ(const gp_Ax2& A2, const double Radius);
  void SetAxis (const gp_Ax1& A1);
  void SetLocation (const gp_Pnt& P);
  void SetPosition (const gp_Ax2& A2);
  void SetRadius (const double Radius);
  double Area() const;
  const gp_Ax1& Axis() const;
  double Length() const;
  const gp_Pnt& Location() const;
  const gp_Ax2& Position() const;
  double Radius() const;
  gp_Ax1 XAxis() const;
  gp_Ax1 YAxis() const;
  double Distance (const gp_Pnt& P) const;
  double SquareDistance (const gp_Pnt& P) const;
  bool Contains (const gp_Pnt& P, const double LinearTolerance) const;
  void Mirror (const gp_Pnt& P);
  gp_Circ Mirrored (const gp_Pnt& P) const;
  void Mirror (const gp_Ax1& A1);
  gp_Circ Mirrored (const gp_Ax1& A1) const;
  void Mirror (const gp_Ax2& A2);
  gp_Circ Mirrored (const gp_Ax2& A2) const;
  void Rotate (const gp_Ax1& A1, const double Ang);
  gp_Circ Rotated (const gp_Ax1& A1, const double Ang) const;
  void Scale (const gp_Pnt& P, const double S);
  gp_Circ Scaled (const gp_Pnt& P, const double S) const;
  void Transform (const gp_Trsf& T);
  gp_Circ Transformed (const gp_Trsf& T) const;
  void Translate (const gp_Vec& V);
  gp_Circ Translated (const gp_Vec& V) const;
  void Translate (const gp_Pnt& P1, const gp_Pnt& P2);
  gp_Circ Translated (const gp_Pnt& P1, const gp_Pnt& P2) const;
};

class gp_Elips
{
 public:
  gp_Elips();
  gp_Elips(const gp_Ax2& A2, const double MajorRadius, const double MinorRadius);
  void SetAxis (const gp_Ax1& A1);
  void SetLocation (const gp_Pnt& P);
  void SetMajorRadius (const double MajorRadius);
  void SetMinorRadius (const double MinorRadius);
  void SetPosition (const gp_Ax2& A2);
  double Area() const;
  const gp_Ax1& Axis() const;
  gp_Ax1 Directrix1() const;
  gp_Ax1 Directrix2() const;
  double Eccentricity() const;
  double Focal() const;
  gp_Pnt Focus1() const;
  gp_Pnt Focus2() const;
  const gp_Pnt& Location() const;
  double MajorRadius() const;
  double MinorRadius() const;
  double Parameter() const;
  const gp_Ax2& Position() const;
  gp_Ax1 XAxis() const;
  gp_Ax1 YAxis() const;
  void Mirror (const gp_Pnt& P);
  gp_Elips Mirrored (const gp_Pnt& P) const;
  void Mirror (const gp_Ax1& A1);
  gp_Elips Mirrored (const gp_Ax1& A1) const;
  void Mirror (const gp_Ax2& A2);
  gp_Elips Mirrored (const gp_Ax2& A2) const;
  void Rotate (const gp_Ax1& A1, const double Ang);
  gp_Elips Rotated (const gp_Ax1& A1, const double Ang) const;
  void Scale (const gp_Pnt& P, const double S);
  gp_Elips Scaled (const gp_Pnt& P, const double S) const;
  void Transform (const gp_Trsf& T);
  gp_Elips Transformed (const gp_Trsf& T) const;
  void Translate (const gp_Vec& V);
  gp_Elips Translated (const gp_Vec& V) const;
  void Translate (const gp_Pnt& P1, const gp_Pnt& P2);
  gp_Elips Translated (const gp_Pnt& P1, const gp_Pnt& P2) const;
};

class gp_Cone
{
 public:
  gp_Cone();
  gp_Cone(const gp_Ax3& A3, const double Ang, const double Radius);
  void SetAxis (const gp_Ax1& A1);
  void SetLocation (const gp_Pnt& Loc);
  void SetPosition (const gp_Ax3& A3);
  void SetRadius (const double R);
  void SetSemiAngle (const double Ang);
  gp_Pnt Apex() const;
  void UReverse();
  void VReverse();
  bool Direct() const;
  const gp_Ax1& Axis() const;
  void Coefficients (double& A1, double& A2, double& A3, double& B1, double& B2, double& B3, double& C1, double& C2, double& C3, double& D) const;
  const gp_Pnt& Location() const;
  const gp_Ax3& Position() const;
  double RefRadius() const;
  double SemiAngle() const;
  gp_Ax1 XAxis() const;
  gp_Ax1 YAxis() const;
  void Mirror (const gp_Pnt& P);
  gp_Cone Mirrored (const gp_Pnt& P) const;
  void Mirror (const gp_Ax1& A1);
  gp_Cone Mirrored (const gp_Ax1& A1) const;
  void Mirror (const gp_Ax2& A2);
  gp_Cone Mirrored (const gp_Ax2& A2) const;
  void Rotate (const gp_Ax1& A1, const double Ang);
  gp_Cone Rotated (const gp_Ax1& A1, const double Ang) const;
  void Scale (const gp_Pnt& P, const double S);
  gp_Cone Scaled (const gp_Pnt& P, const double S) const;
  void Transform (const gp_Trsf& T);
  gp_Cone Transformed (const gp_Trsf& T) const;
  void Translate (const gp_Vec& V);
  gp_Cone Translated (const gp_Vec& V) const;
  void Translate (const gp_Pnt& P1, const gp_Pnt& P2);
  gp_Cone Translated (const gp_Pnt& P1, const gp_Pnt& P2) const;  
};

class gp_Cylinder
{
 public:
  gp_Cylinder();
  gp_Cylinder(const gp_Ax3& A3, const double Radius);
  void SetAxis (const gp_Ax1& A1);
  void SetLocation (const gp_Pnt& Loc);
  void SetPosition (const gp_Ax3& A3);
  void SetRadius (const double R);
  void UReverse();
  void VReverse();
  bool Direct() const;
  const gp_Ax1& Axis() const;
  void Coefficients (double& A1, double& A2, double& A3, double& B1, double& B2, double& B3, double& C1, double& C2, double& C3, double& D) const;
  const gp_Pnt& Location() const;
  const gp_Ax3& Position() const;
  double Radius() const;
  gp_Ax1 XAxis() const;
  gp_Ax1 YAxis() const;
  void Mirror (const gp_Pnt& P);
  gp_Cylinder Mirrored (const gp_Pnt& P) const;
  void Mirror (const gp_Ax1& A1);
  gp_Cylinder Mirrored (const gp_Ax1& A1) const;
  void Mirror (const gp_Ax2& A2);
  gp_Cylinder Mirrored (const gp_Ax2& A2) const;
  void Rotate (const gp_Ax1& A1, const double Ang);
  gp_Cylinder Rotated (const gp_Ax1& A1, const double Ang) const;
  gp_Cylinder Scaled (const gp_Pnt& P, const double S) const;
  void Transform (const gp_Trsf& T);
  gp_Cylinder Transformed (const gp_Trsf& T) const;
  void Translate (const gp_Vec& V);
  gp_Cylinder Translated (const gp_Vec& V) const;
  void Translate (const gp_Pnt& P1, const gp_Pnt& P2);
  gp_Cylinder Translated (const gp_Pnt& P1, const gp_Pnt& P2) const;
};

class gp_Parab
{
 public:
  gp_Parab();
  gp_Parab(const gp_Ax2& A2,const double Focal);
  gp_Parab(const gp_Ax1& D,const gp_Pnt& F);
  void SetAxis (const gp_Ax1& A1);
  void SetFocal (const double Focal);
  void SetLocation (const gp_Pnt& P);
  void SetPosition (const gp_Ax2& A2);
  const gp_Ax1& Axis() const;
  gp_Ax1 Directrix() const;
  double Focal() const;
  gp_Pnt Focus() const;
  const gp_Pnt& Location() const;
  double Parameter() const;
  const gp_Ax2& Position() const;
  gp_Ax1 XAxis() const;
  gp_Ax1 YAxis() const;
  void Mirror (const gp_Pnt& P);
  gp_Parab Mirrored (const gp_Pnt& P) const;
  void Mirror (const gp_Ax1& A1);
  gp_Parab Mirrored (const gp_Ax1& A1) const;
  void Mirror (const gp_Ax2& A2);
  gp_Parab Mirrored (const gp_Ax2& A2) const;
  void Rotate (const gp_Ax1& A1, const double Ang);
  gp_Parab Rotated (const gp_Ax1& A1, const double Ang) const;
  void Scale (const gp_Pnt& P, const double S);
  gp_Parab Scaled (const gp_Pnt& P, const double S) const;
  void Transform (const gp_Trsf& T);
  gp_Parab Transformed (const gp_Trsf& T) const;
  void Translate (const gp_Vec& V);
  gp_Parab Translated (const gp_Vec& V) const;
  void Translate (const gp_Pnt& P1, const gp_Pnt& P2);
  gp_Parab Translated (const gp_Pnt& P1, const gp_Pnt& P2) const;
};

class gp_Hypr
{
 public:
  gp_Hypr();
  gp_Hypr(const gp_Ax2& A2,const double MajorRadius,const double MinorRadius);
  void SetAxis (const gp_Ax1& A1);
  void SetLocation (const gp_Pnt& P);
  void SetMajorRadius (const double MajorRadius);
  void SetMinorRadius (const double MinorRadius);
  void SetPosition (const gp_Ax2& A2);
  gp_Ax1 Asymptote1() const;
  gp_Ax1 Asymptote2() const;
  const gp_Ax1& Axis() const;
  gp_Hypr ConjugateBranch1() const;
  gp_Hypr ConjugateBranch2() const;
  gp_Ax1 Directrix1() const;
  gp_Ax1 Directrix2() const;
  double Eccentricity() const;
  double Focal() const;
  gp_Pnt Focus1() const;
  gp_Pnt Focus2() const;
  const gp_Pnt& Location() const;
  double MajorRadius() const;
  double MinorRadius() const;
  gp_Hypr OtherBranch() const;
  double Parameter() const;
  const gp_Ax2& Position() const;
  gp_Ax1 XAxis() const;
  gp_Ax1 YAxis() const;
  void Mirror (const gp_Pnt& P);
  gp_Hypr Mirrored (const gp_Pnt& P) const;
  void Mirror (const gp_Ax1& A1);
  gp_Hypr Mirrored (const gp_Ax1& A1) const;
  void Mirror (const gp_Ax2& A2);
  gp_Hypr Mirrored (const gp_Ax2& A2) const;
  void Rotate (const gp_Ax1& A1, const double Ang);
  gp_Hypr Rotated (const gp_Ax1& A1, const double Ang) const;
  void Scale (const gp_Pnt& P, const double S);
  gp_Hypr Scaled (const gp_Pnt& P, const double S) const;
  void Transform (const gp_Trsf& T);
  gp_Hypr Transformed (const gp_Trsf& T) const;
  void Translate (const gp_Vec& V);
  gp_Hypr Translated (const gp_Vec& V) const;
  void Translate (const gp_Pnt& P1, const gp_Pnt& P2);
  gp_Hypr Translated (const gp_Pnt& P1, const gp_Pnt& P2) const;      
};

%{
typedef NCollection_Array1<double> TColStd_Array1OfReal;
  %}

class gp_Torus
{
 public:
  gp_Torus();
  gp_Torus(const gp_Ax3& A3, double& MajorRadius, double& MinorRadius);
  void SetAxis (const gp_Ax1& A1);
  void SetLocation (const gp_Pnt& Loc);
  void SetMajorRadius (const double MajorRadius);
  void SetMinorRadius (const double MinorRadius);
  void SetPosition (const gp_Ax3& A3);
  double Area() const;
  void UReverse();
  void VReverse();
  bool Direct() const;
  const gp_Ax1& Axis() const;
  void Coefficients (TColStd_Array1OfReal& Coef) const;
  const gp_Pnt& Location() const;
  const gp_Ax3& Position() const;
  double MajorRadius() const;
  double MinorRadius() const;
  double Volume() const;
  gp_Ax1 XAxis() const;
  gp_Ax1 YAxis() const;
  void Mirror (const gp_Pnt& P);
  gp_Torus Mirrored (const gp_Pnt& P) const;
  void Mirror (const gp_Ax1& A1);
  gp_Torus Mirrored (const gp_Ax1& A1) const;
  void Mirror (const gp_Ax2& A2);
  gp_Torus Mirrored (const gp_Ax2& A2) const;
  void Rotate (const gp_Ax1& A1, const double Ang);
  gp_Torus Rotated (const gp_Ax1& A1, const double Ang) const;
  void Scale (const gp_Pnt& P, const double S);
  gp_Torus Scaled (const gp_Pnt& P, const double S) const;
  void Transform (const gp_Trsf& T);
  gp_Torus Transformed (const gp_Trsf& T) const;
  void Translate (const gp_Vec& V);
  gp_Torus Translated (const gp_Vec& V) const;
  void Translate (const gp_Pnt& P1, const gp_Pnt& P2);
  gp_Torus Translated (const gp_Pnt& P1, const gp_Pnt& P2) const;
};

class gp_Sphere
{
 public:
  gp_Sphere();
  gp_Sphere(const gp_Ax3& A3, double& radius);
  void SetLocation (const gp_Pnt& Loc);
  void SetPosition (const gp_Ax3& A3);
  void SetRadius (const double R);
  double Area() const;
  void Coefficients (double& A1, double& A2, double& A3, double& B1, double& B2, double& B3, double& C1, double& C2, double& C3, double& D) const;
  void UReverse();
  void VReverse();
  bool Direct() const;
  const gp_Pnt& Location() const;
  const gp_Ax3& Position() const;
  double Radius() const;
  double Volume() const;
  gp_Ax1 XAxis() const;
  gp_Ax1 YAxis() const;
  void Mirror (const gp_Pnt& P);
  gp_Sphere Mirrored (const gp_Pnt& P) const;
  void Mirror (const gp_Ax1& A1);
  gp_Sphere Mirrored (const gp_Ax1& A1) const;
  void Mirror (const gp_Ax2& A2);
  gp_Sphere Mirrored (const gp_Ax2& A2) const;
  void Rotate (const gp_Ax1& A1, const double Ang);
  gp_Sphere Rotated (const gp_Ax1& A1, const double Ang) const;
  void Scale (const gp_Pnt& P, const double S);
  gp_Sphere Scaled (const gp_Pnt& P, const double S) const;
  void Transform (const gp_Trsf& T);
  gp_Sphere Transformed (const gp_Trsf& T) const;
  void Translate (const gp_Vec& V);
  gp_Sphere Translated (const gp_Vec& V) const;
  void Translate (const gp_Pnt& P1, const gp_Pnt& P2);
  gp_Sphere Translated (const gp_Pnt& P1, const gp_Pnt& P2) const;
};

class gp_XY
{
 public:
  gp_XY();
  gp_XY(const double X, const double Y);
  void SetCoord (const double X, const double Y);
  void SetX (const double X);
  void SetY (const double Y);
  double X() const;
  double Y() const;
  double Modulus() const;
  double SquareModulus() const;
  bool IsEqual (const gp_XY& Other, const double Tolerance) const;
  void Add (const gp_XY& Other);
  gp_XY Added (const gp_XY& Other) const;
  double Crossed (const gp_XY& Right) const;
  double CrossMagnitude (const gp_XY& Right) const;
  double CrossSquareMagnitude (const gp_XY& Right) const;
  void Divide (const double Scalar);
  gp_XY Divided (const double Scalar) const;
  double Dot (const gp_XY& Other) const;
  void Multiply (const double Scalar);
  void Multiply (const gp_XY& Other);
  void Multiply (const gp_Mat2d& Matrix);
  gp_XY Multiplied (const double Scalar) const;
  gp_XY Multiplied (const gp_XY& Other) const;
  gp_XY Multiplied (const gp_Mat2d& Matrix) const;
  void Normalize();
  gp_XY Normalized() const;
  void Reverse();
  gp_XY Reversed() const;
  void SetLinearForm (const double A1, const gp_XY& XY1, const double A2, const gp_XY& XY2);
  void SetLinearForm (const double A1, const gp_XY& XY1, const double A2, const gp_XY& XY2, const gp_XY& XY3);
  void SetLinearForm (const double A1, const gp_XY& XY1, const gp_XY& XY2);
  void SetLinearForm (const gp_XY& XY1, const gp_XY& XY2);
  void Subtract (const gp_XY& Right);
  gp_XY Subtracted (const gp_XY& Right) const;  
};

class gp_Lin
{
 public:
  gp_Lin();
  gp_Lin(const gp_Ax1& A1);
  gp_Lin(const gp_Pnt& P, const gp_Dir& V);
  void Reverse();
  gp_Lin Reversed() const;
  void SetDirection (const gp_Dir& V);
  void SetLocation (const gp_Pnt& P);
  void SetPosition (const gp_Ax1& A1);
  const gp_Dir& Direction() const;
  const gp_Pnt& Location() const;
  const gp_Ax1& Position() const;
  double Angle (const gp_Lin& Other) const;
  bool Contains (const gp_Pnt& P, const double LinearTolerance) const;
  double Distance (const gp_Pnt& P) const;
  double Distance (const gp_Lin& Other) const;
  double SquareDistance (const gp_Pnt& P) const;
  double SquareDistance (const gp_Lin& Other) const;
  gp_Lin Normal (const gp_Pnt& P) const;
  void Mirror (const gp_Pnt& P);
  gp_Lin Mirrored (const gp_Pnt& P) const;
  void Mirror (const gp_Ax1& A1);
  gp_Lin Mirrored (const gp_Ax1& A1) const;
  void Mirror (const gp_Ax2& A2);
  gp_Lin Mirrored (const gp_Ax2& A2) const;
  void Rotate (const gp_Ax1& A1, const double Ang);
  gp_Lin Rotated (const gp_Ax1& A1, const double Ang) const;
  void Scale (const gp_Pnt& P, const double S);
  gp_Lin Scaled (const gp_Pnt& P, const double S) const;
  void Transform (const gp_Trsf& T);
  gp_Lin Transformed (const gp_Trsf& T) const;
  void Translate (const gp_Vec& V);
  gp_Lin Translated (const gp_Vec& V) const;
  void Translate (const gp_Pnt& P1, const gp_Pnt& P2);
  gp_Lin Translated (const gp_Pnt& P1, const gp_Pnt& P2) const;
};

class gp_Lin2d
{
 public:
  gp_Lin2d();
  gp_Lin2d(const gp_Ax2d& A);
  gp_Lin2d(const gp_Pnt2d& P, const gp_Dir2d& V);
  gp_Lin2d(const double A, const double B, const double C);
  void Reverse();
  gp_Lin2d Reversed() const;
  void SetDirection (const gp_Dir2d& V);
  void SetLocation (const gp_Pnt2d& P);
  void SetPosition (const gp_Ax2d& A);
  void Coefficients (double& A, double& B, double& C) const;
  const gp_Dir2d& Direction() const;
  const gp_Pnt2d& Location() const;
  const gp_Ax2d& Position() const;
  double Angle (const gp_Lin2d& Other) const;
  bool Contains (const gp_Pnt2d& P, const double LinearTolerance) const;
  double Distance (const gp_Pnt2d& P) const;
  double Distance (const gp_Lin2d& Other) const;
  double SquareDistance (const gp_Pnt2d& P) const;
  double SquareDistance (const gp_Lin2d& Other) const;
  gp_Lin2d Normal (const gp_Pnt2d& P) const;
  void Mirror (const gp_Pnt2d& P);
  gp_Lin2d Mirrored (const gp_Pnt2d& P) const;
  void Mirror (const gp_Ax2d& A);
  gp_Lin2d Mirrored (const gp_Ax2d& A) const;
  void Rotate (const gp_Pnt2d& P, const double Ang);
  gp_Lin2d Rotated (const gp_Pnt2d& P, const double Ang) const;
  void Scale (const gp_Pnt2d& P, const double S);
  gp_Lin2d Scaled (const gp_Pnt2d& P, const double S) const;
  void Transform (const gp_Trsf2d& T);
  gp_Lin2d Transformed (const gp_Trsf2d& T) const;
  void Translate (const gp_Vec2d& V);
  gp_Lin2d Translated (const gp_Vec2d& V) const;
  void Translate (const gp_Pnt2d& P1, const gp_Pnt2d& P2);
  gp_Lin2d Translated (const gp_Pnt2d& P1, const gp_Pnt2d& P2) const;
};

class gp_Mat
{
 public:
  gp_Mat();
  gp_Mat(const double a11, const double a12, const double a13, const double a21, const double a22, const double a23, const double a31, const double a32, const double a33);
  gp_Mat(const gp_XYZ& Col1, const gp_XYZ& Col2, const gp_XYZ& Col3);
  void SetCol (const int Col, const gp_XYZ& Value);
  void SetCols (const gp_XYZ& Col1, const gp_XYZ& Col2, const gp_XYZ& Col3);
  void SetCross (const gp_XYZ& Ref);
  void SetDiagonal (const double X1, const double X2, const double X3);
  void SetDot (const gp_XYZ& Ref);
  void SetIdentity();
  void SetRotation (const gp_XYZ& Axis, const double Ang);
  void SetRow (const int Row, const gp_XYZ& Value);
  void SetRows (const gp_XYZ& Row1, const gp_XYZ& Row2, const gp_XYZ& Row3);
  void SetScale (const double S);
  void SetValue (const int Row, const int Col, const double Value);
  gp_XYZ Column (const int Col) const;
  double Determinant() const;
  gp_XYZ Diagonal() const;
  gp_XYZ Row (const int Row) const;
  const double& Value (const int Row, const int Col) const;
  bool IsSingular() const;
  void Add (const gp_Mat& Other);
  gp_Mat Added (const gp_Mat& Other) const;
  void Divide (const double Scalar);
  gp_Mat Divided (const double Scalar) const;
  void Invert();
  gp_Mat Inverted() const;
  gp_Mat Multiplied (const gp_Mat& Other) const;
  void Multiply (const gp_Mat& Other);
  void PreMultiply (const gp_Mat& Other);
  gp_Mat Multiplied (const double Scalar) const;
  void Multiply (const double Scalar);
  void Power (const int N);
  gp_Mat Powered (const int N) const;
  void Subtract (const gp_Mat& Other);
  gp_Mat Subtracted (const gp_Mat& Other) const;
  void Transpose();
  gp_Mat Transposed() const;
};

class gp_Mat2d
{
 public:
  gp_Mat2d();
  gp_Mat2d(const gp_XY& Col1, const gp_XY& Col2);
  void SetCol (const int Col, const gp_XY& Value);
  void SetCols (const gp_XY& Col1, const gp_XY& Col2);
  void SetDiagonal (const double X1, const double X2);
  void SetIdentity();
  void SetRotation (const double Ang);
  void SetRow (const int Row, const gp_XY& Value);
  void SetRows (const gp_XY& Row1, const gp_XY& Row2);
  void SetScale (const double S);
  void SetValue (const int Row, const int Col, const double Value);
  gp_XY Column (const int Col) const;
  double Determinant() const;
  gp_XY Diagonal() const;
  gp_XY Row (const int Row) const;
  const double& Value (const int Row, const int Col) const;
  bool IsSingular() const;
  void Add (const gp_Mat2d& Other);
  gp_Mat2d Added (const gp_Mat2d& Other) const;
  void Divide (const double Scalar);
  gp_Mat2d Divided (const double Scalar) const;
  void Invert();
  gp_Mat2d Inverted() const;
  gp_Mat2d Multiplied (const gp_Mat2d& Other) const;
  void Multiply (const gp_Mat2d& Other);
  void PreMultiply (const gp_Mat2d& Other);
  gp_Mat2d Multiplied (const double Scalar) const;
  void Multiply (const double Scalar);
  void Power (const int N);
  gp_Mat2d Powered (const int N) const;
  void Subtract (const gp_Mat2d& Other);
  gp_Mat2d Subtracted (const gp_Mat2d& Other) const;
  void Transpose();
  gp_Mat2d Transposed() const;
};
  
class gp_Quaternion
{
 public:
  gp_Quaternion();
  gp_Quaternion(const double x, const double y, const double z, const double w);
  gp_Quaternion(const gp_Quaternion& theToCopy);
  gp_Quaternion(const gp_Vec& theVecFrom, const gp_Vec& theVecTo);
  gp_Quaternion(const gp_Vec& theVecFrom, const gp_Vec& theVecTo, const gp_Vec& theHelpCrossVec);
  gp_Quaternion(const gp_Vec& theAxis, const double theAngle);
  gp_Quaternion(const gp_Mat& theMat);
  bool IsEqual (const gp_Quaternion& theOther) const;
  void SetRotation (const gp_Vec& theVecFrom, const gp_Vec& theVecTo);
  void SetRotation (const gp_Vec& theVecFrom, const gp_Vec& theVecTo, const gp_Vec& theHelpCrossVec);
  void SetVectorAndAngle (const gp_Vec& theAxis, const double theAngle);
  void GetVectorAndAngle (gp_Vec& theAxis, double& theAngle) const;
  void SetMatrix (const gp_Mat& theMat);
  gp_Mat GetMatrix() const;
  void SetEulerAngles (const gp_EulerSequence theOrder, const double theAlpha, const double theBeta, const double theGamma);
  void GetEulerAngles (const gp_EulerSequence theOrder, double& theAlpha, double& theBeta, double& theGamma) const;
  void Set (const double x, const double y, const double z, const double w);
  void Set (const gp_Quaternion& theQuaternion);
  double X() const;  
  double Y() const;  
  double Z() const;  
  double W() const;
  void SetIdent();
  void Reverse();
  gp_Quaternion Reversed() const;
  void Invert();
  gp_Quaternion Inverted() const;
  double SquareNorm() const;
  double Norm() const;
  void Scale (const double theScale);
  gp_Quaternion Scaled (const double theScale) const;
  void StabilizeLength();
  void Normalize();
  gp_Quaternion Normalized() const;
  gp_Quaternion Negated() const;
  gp_Quaternion Added (const gp_Quaternion& theOther) const;
  gp_Quaternion Subtracted (const gp_Quaternion& theOther) const;
  gp_Quaternion Multiplied (const gp_Quaternion& theOther) const;
  void Add (const gp_Quaternion& theOther);
  void Subtract (const gp_Quaternion& theOther);
  void Multiply (const gp_Quaternion& theOther);
  double Dot (const gp_Quaternion& theOther) const;
  double GetRotationAngle() const;
  gp_Vec Multiply (const gp_Vec& theVec) const;
};

class gp_QuaternionNLerp
{
 public:
  static gp_Quaternion Interpolate (const gp_Quaternion& theQStart,
                                    const gp_Quaternion& theQEnd,
                                    double theT);
  gp_QuaternionNLerp();
  gp_QuaternionNLerp (const gp_Quaternion& theQStart, const gp_Quaternion& theQEnd);
  void Init (const gp_Quaternion& theQStart, const gp_Quaternion& theQEnd);
  void InitFromUnit (const gp_Quaternion& theQStart, const gp_Quaternion& theQEnd);
  void Interpolate (double theT, gp_Quaternion& theResultQ);
};

class gp_QuaternionSLerp
{
 public:
    static gp_Quaternion Interpolate (const gp_Quaternion& theQStart,
				      const gp_Quaternion& theQEnd,
				      double theT);
    gp_QuaternionSLerp();
    gp_QuaternionSLerp (const gp_Quaternion& theQStart, const gp_Quaternion& theQEnd);
    void Init (const gp_Quaternion& theQStart, const gp_Quaternion& theQEnd);
    void InitFromUnit (const gp_Quaternion& theQStart, const gp_Quaternion& theQEnd);
    void Interpolate (double theT, gp_Quaternion& theResultQ);
};
    
