%{
#include <BndLib_Add3dCurve.hxx>
  %}
%nodefaultdtor BndLib_Add3dCurve;
class BndLib_Add3dCurve
{
 public:
  static void Add (const Adaptor3d_Curve& C, const double Tol, Bnd_Box& B);
  static void Add (const Adaptor3d_Curve& C, const double U1, const double U2, const double Tol, Bnd_Box& B);
  static void AddOptimal (const Adaptor3d_Curve& C, const double Tol, Bnd_Box& B);
  static void AddOptimal (const Adaptor3d_Curve& C, 
			  const double U1, const double U2, 
			  const double Tol, Bnd_Box& B);
};
