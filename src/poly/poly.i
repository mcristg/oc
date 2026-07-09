
%{
#include <Poly_Triangulation.hxx>
typedef occ::handle<Poly_Triangulation> Handle_Poly_Triangulation;
typedef NCollection_HArray1<double> TColStd_HArray1OfReal;
typedef occ::handle<TColStd_HArray1OfReal> Handle_TColStd_HArray1OfReal;
typedef NCollection_Array1<Poly_Triangle> Poly_Array1OfTriangle;
typedef NCollection_HArray1<bool> TColStd_HArray1OfBoolean;
  %}

%rename(Poly_Triangulation) Handle_Poly_Triangulation;

class Handle_Poly_Triangulation
{
  Handle_Poly_Triangulation()=0;
};

%extend Handle_Poly_Triangulation
{
  void Delete() {
    self->~Handle_Poly_Triangulation();
  }
  double Deflection() const
  {
    return (*self)->Deflection();
  }
  void Deflection(const double D)
  {
    return (*self)->Deflection(D);
  }
  void RemoveUVNodes()
  {
    return (*self)->RemoveUVNodes();
  }
  int NbNodes() const
  {
    return (*self)->NbNodes();
  }
  int NbTriangles() const
  {
    return (*self)->NbTriangles();
  }
  bool HasUVNodes() const
  {
    return (*self)->HasUVNodes();
  }
  const Poly_Triangle & Triangle (int theIndex) const
  {
    return (*self)->Triangle(theIndex);
  }
  gp_Pnt Node(int theIndex) const
  {
    return (*self)->Node(theIndex);
  }
  gp_Pnt2d UVNode(int theIndex) const
  {
    return (*self)->UVNode(theIndex);
  }
}

/*
class Poly_Triangulation
{
	public:
	Poly_Triangulation(const int nbNodes,
		const int nbTriangles,const bool UVNodes);
	double Deflection() const;
	void Deflection(const double D) ;
	void RemoveUVNodes() ;
	int NbNodes() const;
	int NbTriangles() const;
	bool HasUVNodes() const;
	const Poly_Array1OfTriangle& Triangles() const;
	const TColgp_Array1OfPnt& Nodes() const;
	const TColgp_Array1OfPnt2d& UVNodes() const;
};
*/
class Poly_Triangle {
 public:
  Poly_Triangle();
  Poly_Triangle(const int N1, const int N2, const int N3);
  int Value(const int Index) const;
};

%nodefaultdtor Poly_Array1OfTriangle;
class Poly_Array1OfTriangle {
 public:
  Poly_Array1OfTriangle(const int Low, const int Up);
  Poly_Array1OfTriangle(const Poly_Triangle &Item, const int Low, const int Up);
  int Length();
  int Lower();
  int Upper();
  const Poly_Triangle & Value(const int Index) const;
};
%extend Poly_Array1OfTriangle
{
  void Delete() {
    self->~Poly_Array1OfTriangle();
  }
}
%nodefaultdtor Poly_Polygon3D;
class Poly_Polygon3D
{
 public:
  Poly_Polygon3D (const TColgp_Array1OfPnt &Nodes);
  Poly_Polygon3D (const TColgp_Array1OfPnt &Nodes, const TColStd_Array1OfReal &Parameters);
  double Deflection ();
  void 	Deflection (const double D);
  int 	NbNodes () const;
  const TColgp_Array1OfPnt & Nodes () const;
  bool 	HasParameters () const;
  const TColStd_Array1OfReal & 	Parameters () const;
  TColStd_Array1OfReal & 	ChangeParameters () const;
};

%{
  #include <Poly_Polygon2D.hxx>
  %}
%nodefaultdtor Poly_Polygon2D;
class Poly_Polygon2D
{

public:
  Poly_Polygon2D(const TColgp_Array1OfPnt2d& Nodes);
  double Deflection();
  void Deflection (const double D);
  int NbNodes();
  const TColgp_Array1OfPnt2d& Nodes() const;
};

%{
  #include <Poly_PolygonOnTriangulation.hxx>
  %}
%nodefaultdtor Poly_PolygonOnTriangulation;
class Poly_PolygonOnTriangulation
{
 public:
  Poly_PolygonOnTriangulation(const TColStd_Array1OfInteger& Nodes);
  Poly_PolygonOnTriangulation(const TColStd_Array1OfInteger& Nodes, const TColStd_Array1OfReal& Parameters);
  Handle_Poly_PolygonOnTriangulation Copy() const;
  double Deflection() const;
  void Deflection (const double D);
  int NbNodes() const;
  const TColStd_Array1OfInteger& Nodes() const;
  bool HasParameters() const;
  Handle_TColStd_HArray1OfReal Parameters() const;
};
%extend Poly_PolygonOnTriangulation
{
  void Delete() {
    self->~Poly_PolygonOnTriangulation();
  }
}
