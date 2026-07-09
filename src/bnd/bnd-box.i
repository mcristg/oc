%{
#include <Bnd_Box.hxx>
  %}

class Bnd_Box
{
	public:
	Bnd_Box();
	void SetWhole();
	void SetVoid();
	void Set (const gp_Pnt& P);
	void Set (const gp_Pnt& P, const gp_Dir& D);
	void Update (const double aXmin, const double aYmin, const double aZmin, const double aXmax, const double aYmax, const double aZmax);
	double GetGap() const;
	void SetGap (const double Tol);
	void Enlarge (const double Tol);
	void Get (double& theXmin, double& theYmin, double& theZmin, double& theXmax, double& theYmax, double& theZmax) const;
	gp_Pnt CornerMin() const;
	gp_Pnt CornerMax() const;
	void OpenXmin();
	void OpenXmax();
	void OpenYmin();
	void OpenYmax();
	void OpenZmin();
	void OpenZmax();
	bool IsOpenXmin() const;
	bool IsOpenXmax() const;
	bool IsOpenYmin() const;
	bool IsOpenYmax() const;
	bool IsOpenZmin() const;
	bool IsOpenZmax() const;
	bool IsWhole()    const;	
	bool IsVoid() const;
	bool IsXThin (const double tol) const;
	bool IsYThin (const double tol) const;
	bool IsZThin (const double tol) const;
	bool IsThin (const double tol) const;
	Bnd_Box Transformed (const gp_Trsf& T) const;
	void Add (const Bnd_Box& Other);
	void Add (const gp_Pnt& P);
	void Add (const gp_Pnt& P, const gp_Dir& D);
	void Add (const gp_Dir& D);
	bool IsOut (const gp_Pnt& P) const;
	bool IsOut (const gp_Lin& L) const;
	bool IsOut (const gp_Pln& P) const;
	bool IsOut (const Bnd_Box& Other) const;
	bool IsOut (const Bnd_Box& Other, const gp_Trsf& T) const;
	bool IsOut (const gp_Trsf& T1, const Bnd_Box& Other, const gp_Trsf& T2) const;
	bool IsOut (const gp_Pnt& P1, const gp_Pnt& P2, const gp_Dir& D) const;
	double Distance (const Bnd_Box& Other) const;
	void Dump() const;
	double SquareExtent() const;
};

