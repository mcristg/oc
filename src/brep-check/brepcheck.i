
%{#include <BRepCheck_Analyzer.hxx>%}

class BRepCheck_Analyzer
{
	public:
	BRepCheck_Analyzer(const TopoDS_Shape& S,const Standard_Boolean GeomControls = Standard_True);
	void Init(const TopoDS_Shape& S,const Standard_Boolean GeomControls = Standard_True) ;
	Standard_Boolean IsValid() const;
};
