
%{
#include <NCollection_HArray1.hxx>
typedef NCollection_HArray1<bool> TColStd_HArray1OfBoolean;
typedef occ::handle<TColStd_HArray1OfBoolean> Handle_TColStd_HArray1OfBoolean;
%}

%{
#include <gp_Pnt.hxx>

typedef NCollection_HArray1<gp_Pnt> TColgp_HArray1OfPnt;
typedef occ::handle<TColgp_HArray1OfPnt> Handle_TColgp_HArray1OfPnt;

%}
class TColgp_HArray1OfPnt {

  public:
  TColgp_HArray1OfPnt(const int Low,const int Up);
  void SetValue(const int Index,const gp_Pnt& Value);
};

/**
%rename(TColgp_HArray1OfPnt) Handle_TColgp_HArray1OfPnt;
 */
class Handle_TColgp_HArray1OfPnt
{
	Handle_TColgp_HArray1OfPnt()=0;
};

class Handle_TColStd_HArray1OfBoolean
{
	Handle_TColStd_HArray1OfBoolean()=0;
};

%{
#include <NCollection_Array1.hxx>
#include <TColgp_Array1OfVec.hxx>
  %}
%nodefaultdtor TColgp_Array1OfVec;
class TColgp_Array1OfVec {

  public:
  TColgp_Array1OfVec(const int Low,const int Up);
  void SetValue(const int Index,const gp_Vec& Value);
  const gp_Vec Value(const int Index);
  int Lower (void) const;
  int Upper (void) const;
};
%extend TColgp_Array1OfVec
{
  void Delete() {
    self->~TColgp_Array1OfVec();
  }
}
%{
#include <TColgp_Array1OfPnt2d.hxx>
  %}
%nodefaultdtor TColgp_Array1OfPnt2d;
class TColgp_Array1OfPnt2d {
 public:
  TColgp_Array1OfPnt2d(const int theLower, const int theUpper);
  void SetValue(const int theIndex, const gp_Pnt2d& Value);
  const gp_Pnt2d Value(const int Index);
  int Lower (void) const;
  int Upper (void) const;
};
%extend TColgp_Array1OfPnt2d
{
  void Delete() {
    self->~TColgp_Array1OfPnt2d();
  }
}

%{
typedef NCollection_Array1<double> TColStd_Array1OfReal;
  %}
  
%nodefaultdtor TColStd_Array1OfReal;
class TColStd_Array1OfReal {
 public:
  TColStd_Array1OfReal(const int theLower, const int theUpper);
  void SetValue(const int theIndex, const double& Value);
  const double Value(const int Index);
  int Lower (void) const;
  int Upper (void) const;
};

%extend TColStd_Array1OfReal
{
  void Delete() {
    self->~TColStd_Array1OfReal();
  }
}
%{
#include <TColStd_Array1OfInteger.hxx>
  %}
%nodefaultdtor TColStd_Array1OfInteger;
class TColStd_Array1OfInteger {
 public:
  TColStd_Array1OfInteger(const int theLower, const int theUpper);
  void SetValue(const int theIndex, const int& Value);
    const int Value(const int Index);
    int Lower (void) const;
    int Upper (void) const;
};

%extend TColStd_Array1OfInteger
{
  void Delete() {
    self->~TColStd_Array1OfInteger();
  }
}
%{
#include <TColgp_Array1OfPnt.hxx>
  %}
%nodefaultdtor TColgp_Array1OfPnt;
class TColgp_Array1OfPnt {

  public:
  TColgp_Array1OfPnt(const int Low,const int Up);
  const gp_Pnt Value(const int Index);
  void SetValue(const int Index,const gp_Pnt& Value);
  int Lower (void) const;
  int Upper (void) const;
};
%extend TColgp_Array1OfPnt
{
  void Delete() {
    self->~TColgp_Array1OfPnt();
  }
  void GetPoint(const int Index,
		double& x,
		double& y,
		double& z) {
    gp_Pnt result = (self)->Value(Index);
    x = result.X();
    y = result.Y();
    z = result.Z();
  }
}
%{
#include <TColgp_Array2OfPnt.hxx>
  %}
%nodefaultdtor TColgp_Array2OfPnt;
class TColgp_Array2OfPnt {
 public:
  TColgp_Array2OfPnt(const int theRowLower,
		     const int theRowUpper,
		     const int theColLower,
		     const int theColUpper);
  void SetValue(const int theRow,
		const int theCol,
		const gp_Pnt& Value);
};
%extend TColgp_Array2OfPnt
{
  void Delete() {
    self->~TColgp_Array2OfPnt();
  }
}
%{
#include <TColStd_Array2OfReal.hxx>
  %}
%nodefaultdtor TColStd_Array2OfReal;
class TColStd_Array2OfReal {
 public:
  TColStd_Array2OfReal(const int theRowLower,
		       const int theRowUpper,
		       const int theColLower,
		       const int theColUpper);
  void SetValue(const int theRow,
		const int theCol,
		const double& Value);
};
%extend TColStd_Array2OfReal
{
  void Delete() {
    self->~TColStd_Array2OfReal();
  }
}
