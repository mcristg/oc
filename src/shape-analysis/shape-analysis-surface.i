%{
#include <ShapeAnalysis_Surface.hxx>
%}

class ShapeAnalysis_Surface
{
	public:

	ShapeAnalysis_Surface (const Handle_Geom_Surface &S);

    bool HasSingularities (const double preci) ;
    int NbSingularities (const double preci) ;
    bool IsDegenerated (const gp_Pnt &P3d, const double preci) ;

};
