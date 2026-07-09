
%{#include <GC_Root.hxx>%}

class GC_Root {
 public:
  bool IsDone() const;
  int Status() const;
};

 %{#include <GC_MakeArcOfCircle.hxx>%}
 
class GC_MakeArcOfCircle: public GC_Root {
   public:
   GC_MakeArcOfCircle(const gp_Pnt& P1,const gp_Pnt& P2,const gp_Pnt& P3);
   GC_MakeArcOfCircle(const gp_Circ& Circ,const gp_Pnt& P1,const gp_Pnt& P2,const bool Sense);
   const Handle_Geom_TrimmedCurve& Value() const;
 };

%{#include <GC_MakeSegment.hxx>%}

class GC_MakeSegment: public GC_Root {
 public:
    GC_MakeSegment(const gp_Pnt& P1, const gp_Pnt& P2);
    GC_MakeSegment(const gp_Lin& Line, const double U1, const double U2);
    GC_MakeSegment(const gp_Lin& Line, const gp_Pnt& Point, const double Ulast);
    GC_MakeSegment(const gp_Lin& Line, const gp_Pnt& P1, const gp_Pnt& P2);
    const Handle_Geom_TrimmedCurve& Value() const;
};

%{#include <GC_MakeSegment2d.hxx>%}

class GC_MakeSegment2d : public GC_Root
{
public:
  GC_MakeSegment2d(const gp_Pnt2d& P1, const gp_Pnt2d& P2);
  GC_MakeSegment2d(const gp_Pnt2d& P1, const gp_Dir2d& V, const gp_Pnt2d& P2);
  GC_MakeSegment2d(const gp_Lin2d& Line, const double U1, const double U2);
  GC_MakeSegment2d(const gp_Lin2d& Line, const gp_Pnt2d& Point, const double Ulast);
  GC_MakeSegment2d(const gp_Lin2d& Line, const gp_Pnt2d& P1, const gp_Pnt2d& P2);
  const Handle_Geom2d_TrimmedCurve& Value() const;
};
