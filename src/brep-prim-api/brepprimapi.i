
%{
#include <BRepPrimAPI_MakeBox.hxx>
#include <BRepPrimAPI_MakeCone.hxx>
#include <BRepPrimAPI_MakeBox.hxx>
#include <BRepPrimAPI_MakeTorus.hxx>
#include <BRepPrimAPI_MakeCylinder.hxx>
#include <BRepPrimAPI_MakeSphere.hxx>
#include <BRepPrimAPI_MakePrism.hxx>
#include <BRepPrimAPI_MakeRevol.hxx>
#include <BRepPrimAPI_MakeOneAxis.hxx>
#include <BRepPrimAPI_MakeRevolution.hxx>
#include <BRepOffsetAPI_MakePipe.hxx>
%}

class BRepPrimAPI_MakeBox : public BRepBuilderAPI_MakeShape
{
	public:
	BRepPrimAPI_MakeBox(const gp_Pnt& P1,const gp_Pnt& P2);
};

class BRepPrimAPI_MakeCone : public BRepBuilderAPI_MakeShape
{
	public:
	BRepPrimAPI_MakeCone(const gp_Ax2& axes, const double baseRadius,
		const double topRadius,const double height, const double angle);
};


class BRepPrimAPI_MakeCylinder : public BRepBuilderAPI_MakeShape
{
	public:
  BRepPrimAPI_MakeCylinder(const double R, const double H);
  
  //! Make a cylinder   of  radius R  and  length H with
  //! angle  H.
  BRepPrimAPI_MakeCylinder(const double R, const double H, const double Angle);
  
  //! Make a cylinder of radius R and length H.
  BRepPrimAPI_MakeCylinder(const gp_Ax2& Axes, const double R, const double H);
  BRepPrimAPI_MakeCylinder(const gp_Ax2& axes,const double radius,
			   const double height,const double angle);
 const TopoDS_Shape& Shape();			   
};

class BRepPrimAPI_MakeTorus : public BRepBuilderAPI_MakeShape
{
	public:
	BRepPrimAPI_MakeTorus(const gp_Ax2& Axes,const double R1,
		const double R2);
	BRepPrimAPI_MakeTorus(const gp_Ax2& Axes, const double R1,
		const double R2, const double angle1,
		const double angle2, const double angle);
};

class BRepPrimAPI_MakeSphere : public BRepBuilderAPI_MakeShape
{
	public:
	BRepPrimAPI_MakeSphere(const gp_Pnt& center,const double radius);
	BRepPrimAPI_MakeSphere(const gp_Ax2& axis,const double R,const double angle1,const double angle2,const double angle3);
};

class BRepPrimAPI_MakeSweep  : public BRepBuilderAPI_MakeShape
{
};

class BRepPrimAPI_MakePrism  : public BRepPrimAPI_MakeSweep
{
    public:
    BRepPrimAPI_MakePrism(const TopoDS_Shape& baseShape, const gp_Vec& extrudeDirection, const bool Copy = false, const bool Canonize = true);
    //BRepPrimAPI_MakePrism(const TopoDS_Shape& S,const gp_Dir& D, const bool Inf = true,const bool Copy = false,const bool Canonize = true);
    TopoDS_Shape FirstShape();
    TopoDS_Shape LastShape();
    const TopTools_ListOfShape& Generated (const TopoDS_Shape& S);
};

class BRepPrimAPI_MakeRevol  : public BRepPrimAPI_MakeSweep {
    public:
    BRepPrimAPI_MakeRevol(const TopoDS_Shape& shape, const gp_Ax1& axis, const double angle, const bool copy = false);
    BRepPrimAPI_MakeRevol(const TopoDS_Shape& shape, const gp_Ax1& axis, const bool copy = false);
};

class BRepPrimAPI_MakeOneAxis  : public BRepBuilderAPI_MakeShape {
 public:
  void* OneAxis();
  TopoDS_Face& Face();
  TopoDS_Shell& Shell();
  TopoDS_Solid& Solid();
};

class BRepPrimAPI_MakeRevolution  : public BRepPrimAPI_MakeOneAxis {
 public:
  BRepPrimAPI_MakeRevolution(const Handle_Geom_Curve& Meridian);
  BRepPrimAPI_MakeRevolution(const Handle_Geom_Curve& Meridian, const double angle);
  BRepPrimAPI_MakeRevolution(const Handle_Geom_Curve& Meridian, const double VMin, const double VMax);
  BRepPrimAPI_MakeRevolution(const Handle_Geom_Curve& Meridian, const double VMin, const double VMax, const double angle);
  BRepPrimAPI_MakeRevolution(const gp_Ax2& Axes, const Handle_Geom_Curve& Meridian);
  BRepPrimAPI_MakeRevolution(const gp_Ax2& Axes, const Handle_Geom_Curve& Meridian, const double angle);
  BRepPrimAPI_MakeRevolution(const gp_Ax2& Axes, const Handle_Geom_Curve& Meridian, const double VMin, const double VMax);
  BRepPrimAPI_MakeRevolution(const gp_Ax2& Axes, const Handle_Geom_Curve& Meridian, const double VMin, const double VMax, const double angle);
  BRepPrim_Revolution& Revolution();
};

class BRepOffsetAPI_MakePipe  : public BRepPrimAPI_MakeSweep {
    public:
	BRepOffsetAPI_MakePipe(const TopoDS_Wire& Spine,const TopoDS_Shape& Profile);
};
