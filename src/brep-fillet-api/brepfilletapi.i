
%{
#include <Standard_Handle.hxx>
#include <BRepFilletAPI_MakeFillet.hxx>
#include <BRepFilletAPI_MakeChamfer.hxx>
  %}

class BRepFilletAPI_LocalOperation: public BRepBuilderAPI_MakeShape
{
};

enum ChFi3d_FilletShape {
    ChFi3d_Rational,
    ChFi3d_QuasiAngular,
    ChFi3d_Polynomial
};

class BRepFilletAPI_MakeFillet: public BRepFilletAPI_LocalOperation
{
  public:
    BRepFilletAPI_MakeFillet(const TopoDS_Shape& shape, const ChFi3d_FilletShape type = ChFi3d_Rational);
    void Add(const TopoDS_Edge &E) override;
    void Add(const Standard_Real Radius, const TopoDS_Edge &E);
    void Add(const Standard_Real R1, const Standard_Real R2, const TopoDS_Edge &E);
    void Add(const opencascade::handle< Law_Function > &L, const TopoDS_Edge &E);
    void Add(const TColgp_Array1OfPnt2d &UandR, const TopoDS_Edge &E);
};

class BRepFilletAPI_MakeChamfer: public BRepFilletAPI_LocalOperation
{
  public:
    BRepFilletAPI_MakeChamfer(const TopoDS_Shape& shape);
    void Add (const TopoDS_Edge &E) override;
    void Add (const Standard_Real Dis, const TopoDS_Edge &E);
};
