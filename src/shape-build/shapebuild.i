
%{#include <ShapeBuild_ReShape.hxx>%}

class ShapeBuild_ReShape
{
	public:

	ShapeBuild_ReShape();
	void Replace(const TopoDS_Shape &shape, const TopoDS_Shape &newshape) ;
	TopoDS_Shape Apply(const TopoDS_Shape& shape,const TopAbs_ShapeEnum until = TopAbs_SHAPE) ;
};
