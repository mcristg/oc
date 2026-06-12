
%{
#include <TopoDS_Shape.hxx>
#include <TopoDS_Compound.hxx>
#include <TopoDS_CompSolid.hxx>
#include <TopoDS_Solid.hxx>
#include <TopoDS_Shell.hxx>
#include <TopoDS_Face.hxx>
#include <TopoDS_Wire.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopoDS_Iterator.hxx>
#include <TopoDS_Builder.hxx>

typedef occ::handle<TopoDS_Shape> Handle_TopoDS_Shape;
typedef occ::handle<TopoDS_TShape> Handle_TopoDS_TShape;
  %}

class TopoDS_Shape
{
	public:
	TopAbs_ShapeEnum ShapeType();
	bool IsSame(const TopoDS_Shape& other) const ;
	bool IsPartner(const TopoDS_Shape &other) const ;
	bool IsEqual(const TopoDS_Shape &other) const ;
	const opencascade::handle< TopoDS_TShape >& TShape() const;
	const TopLoc_Location& Location() const ;
	void Location(const TopLoc_Location& Loc) ;
	TopAbs_Orientation Orientation() const ;
	void Orientation (const TopAbs_Orientation Orient) ;
	void Reverse() ;
	TopoDS_Shape Reversed() const;
	bool Free() const;
	void Free(const bool F) ;
	bool Locked() const ;
	void Locked(const bool F);
	bool Modified() const ;
	void Modified(const bool M);
	bool Checked() const ;
	void Checked(const bool C);
	bool Orientable() const ;
	void Orientable(const bool C);
	bool Closed() const ;
	void Closed(const bool C);
	bool Infinite() const ;
	void Infinite(const bool C);
	bool Convex() const ;
	void Convex(const bool C);
	
};


%extend TopoDS_Shape
{
 public:

  TopoDS_Shape *copy_reference(){
    TopoDS_Shape *copy = new TopoDS_Shape();
    *copy=*self;
    return copy;
  }
  
  //This will be used to speedup the equal operator as in libOccJava
  Handle_TopoDS_TShape getTShape()
  {
    return (Handle_TopoDS_TShape)&*self->TShape();
  }
}

class TopoDS_Compound: public TopoDS_Shape
{
 public:
  TopoDS_Compound();
};

class TopoDS_CompSolid: public TopoDS_Shape
{
};

class TopoDS_Solid: public TopoDS_Shape
{
};

class TopoDS_Shell: public TopoDS_Shape
{
};

class TopoDS_Face: public TopoDS_Shape
{
};

class TopoDS_Wire: public TopoDS_Shape
{
};

class TopoDS_Edge: public TopoDS_Shape
{
};

class TopoDS_Vertex: public TopoDS_Shape
{
};

class TopoDS_Iterator
{
	public:
	TopoDS_Iterator();
	TopoDS_Iterator(const TopoDS_Shape& S,
		const bool cumOri = true,
		const bool cumLoc = true);
	void Initialize(const TopoDS_Shape& S,
		const bool cumOri = true,
		const bool cumLoc = true) ;
	bool More() const;
	void Next() ;
	const TopoDS_Shape& Value() const;
};

class TopoDS_Builder
{
	
	TopoDS_Builder()=0;
	public:
	void MakeWire(TopoDS_Wire& W) const;
	void MakeShell(TopoDS_Shell& S) const;
	void MakeSolid(TopoDS_Solid& S) const;
	void MakeCompSolid(TopoDS_CompSolid& C) const;
	void MakeCompound(TopoDS_Compound& C) const;
	void Add(TopoDS_Shape& S,const TopoDS_Shape& C) const;
	void Remove(TopoDS_Shape& S,const TopoDS_Shape& C) const;	
};

