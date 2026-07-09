%{#include <BRepMesh_DiscretRoot.hxx>%}
class BRepMesh_DiscretRoot
{
	protected:
	BRepMesh_DiscretRoot();
	public:
	/*	void SetDeflection(const double D) ;
	void SetAngle(const double Ang) ;
	double Deflection() const;
	double Angle() const; */
	virtual void Perform();
};

%{#include <BRepMesh_IncrementalMesh.hxx>%}
class BRepMesh_IncrementalMesh : public BRepMesh_DiscretRoot
{
	public:
	BRepMesh_IncrementalMesh();
    BRepMesh_IncrementalMesh (const TopoDS_Shape &theShape,
                              const double theLinDeflection,
                              const bool isRelative = false,
                              const double theAngDeflection = 0.5,
                              const bool isInParallel = false);
 	/*BRepMesh_IncrementalMesh (const TopoDS_Shape &theShape,
 	                          const IMeshTools_Parameters &theParameters,
 	                          const Message_ProgressRange &theRange = Message_ProgressRange());*/
	void Perform();
//	void Update(const TopoDS_Shape& S) ;
	bool IsModified() const;
};

/*
%{#include <BRepMesh_FaceAttribute.hxx>%}
class BRepMesh_FaceAttribute
{
 public:
  BRepMesh_FaceAttribute(const BRepMesh::HDMapOfVertexInteger& theBoundaryVertices,
			 const BRepMesh::HDMapOfIntegerPnt&    theBoundaryPoints);
  BRepMesh_FaceAttribute(const TopoDS_Face&                    theFace,
			 const BRepMesh::HDMapOfVertexInteger& theBoundaryVertices,
			 const BRepMesh::HDMapOfIntegerPnt&    theBoundaryPoints,
			 const bool                theAdaptiveMin);
  virtual ~BRepMesh_FaceAttribute();
  const Handle_BRepAdaptor_HSurface& Surface();
  bool IsInitialized ();
  void SetFace (const TopoDS_Face&     theFace, 
		const bool theAdaptiveMin);
  const TopoDS_Face& Face();
  void SetBoundaryVertices(const BRepMesh::HDMapOfVertexInteger& theVertices);
  void SetBoundaryPoints(const BRepMesh::HDMapOfIntegerPnt& theBoundaryPoints);
  double ToleranceU() const;
  double ToleranceV() const;
  double GetDefFace() const;
  void SetDefFace(const double theDefFace);
  double GetUMin() const;
  void SetUMin(const double theUMin);
  double GetVMin() const;
  double GetUMax() const;
  void SetUMax(const double theUMax);
  double GetVMax() const;
  void SetVMax(const double theVMax);
  double GetDeltaX() const;
  void SetDeltaX(const double theDeltaX);
  double GetDeltaY() const;
  void SetDeltaY(const double theDeltaY);
  int GetStatus() const;
  void SetStatus(const BRepMesh_Status theStatus);
  bool IsValid() const;
  void Clear();
  BRepMesh::HDMapOfIntegerListOfXY& ChangeLocation2D();
  BRepMesh::HDMapOfIntegerPnt& ChangeSurfacePoints();
  BRepMesh::HDMapOfVertexInteger& ChangeSurfaceVertices();
  BRepMesh::HIMapOfInteger& ChangeVertexEdgeMap();
  Handle_BRepMesh_DataStructureOfDelaun& ChangeStructure();
  BRepMesh::HClassifier& ChangeClassifier();
  BRepMesh::HVectorOfVertex& ChangeMeshNodes();
  int LastPointId() const;
  gp_Pnt& GetPoint(const BRepMesh_Vertex& theVertex) const;
  gp_Pnt& GetPoint(const int theIndex) const;
  void AddNode(const int         theIndex,
	       const gp_XY&                   theUV,
	       const BRepMesh_DegreeOfFreedom theMovability,
	       int&              theNodeIndex,
	       int&              theNodeOnEdgeIndex);
};
*/
    
/*
%{#include <BRepMesh_FastDiscret.hxx>%}

struct Parameters {};

class BRepMesh_FastDiscret
{
 public:

  BRepMesh_FastDiscret (const Bnd_Box& B,
			const Parameters& theParams);
  void Perform(const TopoDS_Shape& shape);
  int Add(const TopoDS_Face& face);
  void Process(const TopoDS_Face& face) const;
  Parameters& ChangeMeshParameters();
  void InitSharedFaces(const TopoDS_Shape& theShape);
  bool GetFaceAttribute (const TopoDS_Face&              theFace, 
				     Handle_BRepMesh_FaceAttribute& theAttribute,
				     const bool          isForceCreate = false) const;
};
*/
