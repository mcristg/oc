
%{
#include <BRepOffsetAPI_NormalProjection.hxx>
%}

class BRepOffsetAPI_NormalProjection: public BRepBuilderAPI_MakeShape
{
	public:
	BRepOffsetAPI_NormalProjection();
	BRepOffsetAPI_NormalProjection(const TopoDS_Shape& S);
	void Init(const TopoDS_Shape& S) ;
	void Add(const TopoDS_Shape& ToProj) ;
	void SetParams(const double Tol3D,const double Tol2D,const GeomAbs_Shape InternalContinuity,const int MaxDegree,const int MaxSeg) ;
	void SetMaxDistance(const double MaxDist) ;
	void SetLimit(const bool FaceBoundaries = true) ;
	void Compute3d(const bool With3d = true) ;
	virtual  void Build() ;
	bool IsDone() const;
	const TopoDS_Shape& Projection() const;
	const TopoDS_Shape& Couple(const TopoDS_Edge& E) const;
	virtual const TopTools_ListOfShape& Generated(const TopoDS_Shape& S) ;
	const TopoDS_Shape& Ancestor(const TopoDS_Edge& E) const;
	bool BuildWire(TopTools_ListOfShape& Liste) const;
};

%{
#include <BRepOffsetAPI_MakeOffsetShape.hxx>
  %}

class BRepOffsetAPI_MakeOffsetShape : public BRepBuilderAPI_MakeShape
{
public:

  BRepOffsetAPI_MakeOffsetShape();
  void PerformBySimple (const TopoDS_Shape &theS,const double theOffsetValue);
  void PerformByJoin (const TopoDS_Shape &S,
                      const double Offset,
                      const double Tol,
                      const BRepOffset_Mode Mode=BRepOffset_Skin,
                      const bool Intersection=false,
                      const bool SelfInter=false,
                      const GeomAbs_JoinType Join=GeomAbs_Arc,
                      const bool RemoveIntEdges=false,
                      const Message_ProgressRange &theRange=Message_ProgressRange());				
};

%{
#include <BRepOffsetAPI_MakeThickSolid.hxx>
  %}

class BRepOffsetAPI_MakeThickSolid  : public BRepOffsetAPI_MakeOffsetShape
{
 public:
  BRepOffsetAPI_MakeThickSolid();
  void MakeThickSolidBySimple(const TopoDS_Shape &theS, const double theOffsetValue);
  void MakeThickSolidByJoin(const TopoDS_Shape &S,
                            const TopTools_ListOfShape &ClosingFaces,
                            const double Offset,
                            const double Tol,
                            const BRepOffset_Mode Mode = BRepOffset_Skin,
                            const bool Intersection = false,
                            const bool SelfInter = false,
                            const GeomAbs_JoinType Join = GeomAbs_Arc,
                            const bool RemoveIntEdges = false,
                            const Message_ProgressRange &theRange = Message_ProgressRange());			       
  virtual void Build();
  
  //! Returns the list  of shapes modified from the shape
  //! <S>.
  virtual const TopTools_ListOfShape& Modified (const TopoDS_Shape& S);
};

%{
#include <BRepOffsetAPI_ThruSections.hxx>
  %}

class BRepOffsetAPI_ThruSections  : public BRepBuilderAPI_MakeShape
{
 public:
  BRepOffsetAPI_ThruSections(const bool isSolid = false, const bool ruled = false, const double pres3d = 1.0e-06);
  void Init (const bool isSolid = false, const bool ruled = false, const double pres3d = 1.0e-06);
  void AddWire (const TopoDS_Wire& wire);
  void AddVertex (const TopoDS_Vertex& aVertex);
  void CheckCompatibility (const bool check = true);
  void SetSmoothing (const bool UseSmoothing);
  void SetParType (const Approx_ParametrizationType ParType);
  void SetContinuity (const GeomAbs_Shape C);
  void SetCriteriumWeight (const double W1, const double W2, const double W3);
  void SetMaxDegree (const int MaxDeg);
  Approx_ParametrizationType ParType() const;
  GeomAbs_Shape Continuity() const;
  int MaxDegree() const;
  bool UseSmoothing() const;
  void CriteriumWeight (double& W1, double& W2, double& W3) const;
  const TopoDS_Shape& FirstShape() const;
  const TopoDS_Shape& LastShape() const;
  TopoDS_Shape GeneratedFace (const TopoDS_Shape& Edge) const;
};
