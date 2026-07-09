
%{#include <BRepCheck_Analyzer.hxx>%}

class BRepCheck_Analyzer
{
	public:
	BRepCheck_Analyzer(const TopoDS_Shape& S,const bool GeomControls = true);
	void Init(const TopoDS_Shape& S,const bool GeomControls = true) ;
	bool IsValid() const;
};
