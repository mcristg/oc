%{
  #include <Adaptor3d_Curve.hxx>
  #include <Adaptor2d_Curve2d.hxx>
  #include <CPnts_UniformDeflection.hxx>
  %}
class CPnts_UniformDeflection 
{
public:
  CPnts_UniformDeflection();
  CPnts_UniformDeflection(const Adaptor3d_Curve& C, const double Deflection, const double Resolution, const bool WithControl);
  CPnts_UniformDeflection(const Adaptor2d_Curve2d& C, const double Deflection, const double Resolution, const bool WithControl);
  CPnts_UniformDeflection(const Adaptor3d_Curve& C, const double Deflection, const double U1, const double U2, const double Resolution, const bool WithControl);
  CPnts_UniformDeflection(const Adaptor2d_Curve2d& C, const double Deflection, const double U1, const double U2, const double Resolution, const bool WithControl);
  void Initialize (const Adaptor3d_Curve& C, const double Deflection, const double Resolution, const bool WithControl);
  void Initialize (const Adaptor2d_Curve2d& C, const double Deflection, const double Resolution, const bool WithControl);
  void Initialize (const Adaptor3d_Curve& C, const double Deflection, const double U1, const double U2, const double Resolution, const bool WithControl);
  void Initialize (const Adaptor2d_Curve2d& C, const double Deflection, const double U1, const double U2, const double Resolution, const bool WithControl);
  bool IsAllDone() const;
  void Next();
  bool More();
  double Value() const;
  gp_Pnt Point() const;
};
