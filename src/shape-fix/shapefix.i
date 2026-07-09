

%{
#include <ShapeFix_Wireframe.hxx>
#include <ShapeFix_Root.hxx>
#include <ShapeBuild_ReShape.hxx>
#include <Message_ProgressIndicator.hxx>
#include <ShapeFix_Shape.hxx>
#include <ShapeFix_Solid.hxx>
#include <ShapeFix_Shell.hxx>
#include <ShapeFix_Face.hxx>
#include <ShapeFix_Wire.hxx>
#include <ShapeFix_Edge.hxx>
#include <ShapeFix_EdgeProjAux.hxx>
#include <ShapeConstruct_ProjectCurveOnSurface.hxx>
#include <ShapeAnalysis_Surface.hxx>

typedef occ::handle<ShapeBuild_ReShape> Handle_ShapeBuild_ReShape;
typedef occ::handle<ShapeFix_Root> Handle_ShapeFix_Root;
typedef occ::handle<ShapeFix_Shape> Handle_ShapeFix_Shape;
typedef occ::handle<ShapeFix_Edge> Handle_ShapeFix_Edge;
typedef occ::handle<ShapeFix_Wire> Handle_ShapeFix_Wire;
typedef occ::handle<ShapeFix_Wireframe> Handle_ShapeFix_Wireframe;
typedef occ::handle<ShapeExtend_BasicMsgRegistrator> Handle_ShapeExtend_BasicMsgRegistrator;
typedef occ::handle<ShapeFix_Solid> Handle_ShapeFix_Solid;
typedef occ::handle<ShapeFix_Shell> Handle_ShapeFix_Shell;
typedef occ::handle<ShapeFix_Face> Handle_ShapeFix_Face;
typedef occ::handle<ShapeFix_EdgeProjAux> Handle_ShapeFix_EdgeProjAux;
typedef occ::handle<ShapeConstruct_ProjectCurveOnSurface> Handle_ShapeConstruct_ProjectCurveOnSurface;
typedef occ::handle<ShapeAnalysis_Surface> Handle_ShapeAnalysis_Surface;
typedef occ::handle<ShapeAnalysis_Wire> Handle_ShapeAnalysis_Wire;
typedef occ::handle<ShapeExtend_WireData> Handle_ShapeExtend_WireData;
%}

%{
#include <ShapeFix.hxx>
  %}

%rename(Message_ProgressIndicator) Handle_Message_ProgressIndicator;
%rename(ShapeExtend_BasicMsgRegistrator) Handle_ShapeExtend_BasicMsgRegistrator;
%rename(ShapeBuild_ReShape) Handle_ShapeBuild_ReShape;

%nodefaultdtor Handle_Message_ProgressIndicator;
class Handle_Message_ProgressIndicator {};
%nodefaultdtor Handle_ShapeAnalysis_Surface;
class Handle_ShapeAnalysis_Surface {};

%nodefaultdtor ShapeFix;
class ShapeFix
{
 public:
  static bool SameParameter(const TopoDS_Shape &shape, 
                                        const bool enforce,
                                        const double preci = 0.0,
                                        const Message_ProgressRange &theProgress = Message_ProgressRange(),
                                        const opencascade::handle< ShapeExtend_BasicMsgRegistrator > &theMsgReg = 0);
  
  static void EncodeRegularity (const TopoDS_Shape& shape, const double tolang = 1.0e-10);
  
  static TopoDS_Shape RemoveSmallEdges (TopoDS_Shape& shape, const double Tolerance, Handle_ShapeBuild_ReShape& context);
  
  static bool FixVertexPosition (TopoDS_Shape& theshape, const double theTolerance, const Handle_ShapeBuild_ReShape& thecontext);
  
  static double LeastEdgeSize (TopoDS_Shape& theshape);
};

%rename(ShapeFix_Root) Handle_ShapeFix_Root;
%rename(ShapeFix_EdgeProjAux) Handle_ShapeFix_EdgeProjAux;
%rename(ShapeFix_Edge) Handle_ShapeFix_Edge;
%rename(ShapeFix_Wire) Handle_ShapeFix_Wire;
%rename(ShapeFix_Face) Handle_ShapeFix_Face;
%rename(ShapeFix_FixSmallFace) Handle_ShapeFix_FixSmallFace;
%rename(ShapeFix_FixSmallSolid) Handle_ShapeFix_FixSmallSolid;
%rename(ShapeFix_WireVertex) Handle_ShapeFix_WireVertex;
%rename(ShapeFix_Wireframe) Handle_ShapeFix_Wireframe;
%rename(ShapeFix_FreeBounds) Handle_ShapeFix_FreeBounds;
%rename(ShapeFix_FaceConnect) Handle_ShapeFix_FaceConnect;
%rename(ShapeFix_Shell) Handle_ShapeFix_Shell;
%rename(ShapeFix_Solid) Handle_ShapeFix_Solid;
%rename(ShapeFix_ShapeTolerance) Handle_ShapeFix_ShapeTolerance;
%rename(ShapeFix_Shape) Handle_ShapeFix_Shape;
%rename(ShapeFix_EdgeConnect) Handle_ShapeFix_EdgeConnect;
%rename(ShapeFix_ComposeShell) Handle_ShapeFix_ComposeShell;
%rename(ShapeFix_SplitCommonVertex) Handle_ShapeFix_SplitCommonVertex;
%rename(ShapeFix_WireSegment) Handle_ShapeFix_WireSegment;
%rename(ShapeFix_IntersectionTool) Handle_ShapeFix_IntersectionTool;
%rename(ShapeFix_SplitTool) Handle_ShapeFix_SplitTool;

%nodefaultdtor Handle_ShapeFix_Root;
class Handle_ShapeFix_Root  : public Handle_Standard_Transient
{
	Handle_ShapeFix_Root()=0;
};

%extend Handle_ShapeFix_Root
{
  void Set (const Handle_ShapeFix_Root& Root) {
    (*self)->Set(Root);
  }
  void SetContext (const Handle_ShapeBuild_ReShape& context) {
    (*self)->SetContext(context);
  }
  Handle_ShapeBuild_ReShape Context() {
    return (*self)->Context();
  }
  void SetMsgRegistrator (const Handle_ShapeExtend_BasicMsgRegistrator& msgreg) {
    (*self)->SetMsgRegistrator(msgreg);
  }
  Handle_ShapeExtend_BasicMsgRegistrator MsgRegistrator() {
    return (*self)->MsgRegistrator();
  }
  void SetPrecision (const double preci) {
    (*self)->SetPrecision(preci);
  }
  double Precision() {
    return (*self)->Precision();
  }
  void SetMinTolerance (const double mintol) {
    (*self)->SetMinTolerance(mintol);
  }
  double MaxTolerance() {
    return (*self)->MaxTolerance();
  }
  double LimitTolerance (const double toler) {
    return (*self)->LimitTolerance(toler);
  }
  void SendMsg (const TopoDS_Shape& shape, const Message_Msg& message, const Message_Gravity gravity = Message_Info) {
    (*self)->SendMsg(shape, message, gravity);
  }
  void SendMsg (const Message_Msg& message, const Message_Gravity gravity = Message_Info) {
    (*self)->SendMsg(message, gravity);
  }
  void SendWarning (const TopoDS_Shape& shape, const Message_Msg& message) {
    (*self)->SendWarning(shape, message);
  }
  void SendWarning (const Message_Msg& message) {
    (*self)->SendWarning(message);
  }
  void SendFail (const TopoDS_Shape& shape, const Message_Msg& message) {
    (*self)->SendFail(shape, message);
  }
  void SendFail (const Message_Msg& message) {
    (*self)->SendFail(message);
  }
}

%nodefaultdtor Handle_ShapeFix_Shape;
class Handle_ShapeFix_Shape  : public Handle_ShapeFix_Root
{
};
%extend Handle_ShapeFix_Shape
{
  Handle_ShapeFix_Shape() {
    return new Handle_ShapeFix_Shape(new ShapeFix_Shape());
  }
  Handle_ShapeFix_Shape(const TopoDS_Shape& shape) {
    return new Handle_ShapeFix_Shape(new ShapeFix_Shape(shape));
  }
  void Init(const TopoDS_Shape& shape) {
    (*self)->Init(shape);
  }
    bool Perform () {
    return (*self)->Perform();
  } 
  bool Perform (const Message_ProgressRange &theProgress) {
    return (*self)->Perform(theProgress);
  }    
  TopoDS_Shape Shape() {
    return (*self)->Shape();
  }
  Handle_ShapeFix_Solid FixSolidTool() {
    return (*self)->FixSolidTool();
  }
  Handle_ShapeFix_Shell FixShellTool() {
    return (*self)->FixShellTool();
  }
  Handle_ShapeFix_Face FixFaceTool() {
    return (*self)->FixFaceTool();
  }
  Handle_ShapeFix_Wire FixWireTool() {
    return (*self)->FixWireTool();
  }
  Handle_ShapeFix_Edge FixEdgeTool() {
    return (*self)->FixEdgeTool();
  }
  bool Status (const ShapeExtend_Status status) {
    return (*self)->Status(status);
  }
}
%nodefaultdtor Handle_ShapeFix_EdgeProjAux;
class Handle_ShapeFix_EdgeProjAux  : public Handle_Standard_Transient
{
  /* Handle_ShapeFix_EdgeProjAux()=0; */
};
%extend Handle_ShapeFix_EdgeProjAux
{
  Handle_ShapeFix_EdgeProjAux() {
    return new Handle_ShapeFix_EdgeProjAux(new ShapeFix_EdgeProjAux());
  }
  Handle_ShapeFix_EdgeProjAux(const TopoDS_Face& F, const TopoDS_Edge& E) {
    return new Handle_ShapeFix_EdgeProjAux(new ShapeFix_EdgeProjAux(F, E));
  }
  void Delete() {
    self->~Handle_ShapeFix_EdgeProjAux();
  }  
  void Init (const TopoDS_Face& F, const TopoDS_Edge& E) {
    (*self)->Init(F, E);
  }
  void Compute (const double preci) {
    (*self)->Compute(preci);
  }
  bool IsFirstDone() {
    return (*self)->IsFirstDone();
  }
  bool IsLastDone() {
    return (*self)->IsLastDone();
  }
  double FirstParam() {
    return (*self)->FirstParam();
  }
  double LastParam() {
    return (*self)->LastParam();
  }
  bool IsIso (const Handle_Geom2d_Curve& C) {
    return (*self)->IsIso(C);
  }
}
%nodefaultdtor Handle_ShapeConstruct_ProjectCurveOnSurface;
class Handle_ShapeConstruct_ProjectCurveOnSurface {};

%nodefaultdtor Handle_ShapeFix_Edge;
class Handle_ShapeFix_Edge  : public Handle_Standard_Transient
{
  /* Handle_ShapeFix_Edge()=0; */
};
%extend Handle_ShapeFix_Edge {
  Handle_ShapeFix_Edge() {
    return new Handle_ShapeFix_Edge(new ShapeFix_Edge());
  }
  void Delete() {
    self->~Handle_ShapeFix_Edge();
  }  
  Handle_ShapeConstruct_ProjectCurveOnSurface Projector() {
    return (*self)->Projector();
  }
  bool FixRemovePCurve (const TopoDS_Edge& edge, const TopoDS_Face& face) {
    return (*self)->FixRemovePCurve(edge, face);
  }
  bool FixRemovePCurve (const TopoDS_Edge& edge, const Handle_Geom_Surface& surface, const TopLoc_Location& location) {
    return (*self)->FixRemovePCurve(edge, surface, location);
  }
  bool FixRemoveCurve3d (const TopoDS_Edge& edge) {
    return (*self)->FixRemoveCurve3d(edge);
  }
  bool FixAddPCurve (const TopoDS_Edge& edge, const TopoDS_Face& face, const bool isSeam, const double prec = 0.0) {
    return (*self)->FixAddPCurve(edge, face, isSeam, prec);
  }
  bool FixAddPCurve (const TopoDS_Edge& edge, const Handle_Geom_Surface& surface, const TopLoc_Location& location, const bool isSeam, const double prec = 0.0) {
    return (*self)->FixAddPCurve(edge, surface, location, isSeam, prec);
  }
  bool FixAddPCurve (const TopoDS_Edge& edge, const TopoDS_Face& face, const bool isSeam, const Handle_ShapeAnalysis_Surface& surfana, const double prec = 0.0) {
    return (*self)->FixAddPCurve(edge, face, isSeam, surfana, prec);
  }
  bool FixAddPCurve (const TopoDS_Edge& edge, const Handle_Geom_Surface& surface, const TopLoc_Location& location, const bool isSeam, const Handle_ShapeAnalysis_Surface& surfana, const double prec = 0.0) {
    return (*self)->FixAddPCurve(edge, surface, location, isSeam, surfana, prec);
  }
  bool FixAddCurve3d (const TopoDS_Edge& edge) {
    return (*self)->FixAddCurve3d(edge);
  }
  bool FixVertexTolerance (const TopoDS_Edge& edge, const TopoDS_Face& face) {
    return (*self)->FixVertexTolerance(edge, face);
  }
  bool FixVertexTolerance (const TopoDS_Edge& edge) {
    return (*self)->FixVertexTolerance(edge);
  }
  bool FixReversed2d (const TopoDS_Edge& edge, const TopoDS_Face& face) {
    return (*self)->FixReversed2d(edge, face);
  }
  bool FixReversed2d (const TopoDS_Edge& edge, const Handle_Geom_Surface& surface, const TopLoc_Location& location) {
    return (*self)->FixReversed2d(edge, surface, location);
  }
  bool FixSameParameter (const TopoDS_Edge& edge, const double tolerance = 0.0) {
    return (*self)->FixSameParameter(edge, tolerance);
  }
  bool FixSameParameter (const TopoDS_Edge& edge, const TopoDS_Face& face, const double tolerance = 0.0) {
    return (*self)->FixSameParameter(edge, face, tolerance);
  }
  bool Status (const ShapeExtend_Status status) {
    return (*self)->Status(status);
  }
  void SetContext (const Handle_ShapeBuild_ReShape& context) {
    (*self)->SetContext(context);
  }
  Handle_ShapeBuild_ReShape Context() {
    return (*self)->Context();
  }
}
%nodefaultdtor Handle_ShapeFix_Wire;
class Handle_ShapeFix_Wire  : public Handle_ShapeFix_Root
{
};
%extend Handle_ShapeFix_Wire {
  Handle_ShapeFix_Wire() {
    return new Handle_ShapeFix_Wire(new ShapeFix_Wire());
  }
  Handle_ShapeFix_Wire(const TopoDS_Wire& wire, const TopoDS_Face& face, const double prec) {
    return new Handle_ShapeFix_Wire(new ShapeFix_Wire(wire, face, prec));
  }
  void Delete() {
    self->~Handle_ShapeFix_Wire();
  }  
  void ClearModes() {
    (*self)->ClearModes();
  }
  void ClearStatuses() {
    (*self)->ClearStatuses();
  }
  void Init (const TopoDS_Wire& wire, const TopoDS_Face& face, const double prec) {
    (*self)->Init(wire, face, prec);
  }
  void Init (const Handle_ShapeAnalysis_Wire& saw) {
    (*self)->Init(saw);
  }
  void Load (const TopoDS_Wire& wire) {
    (*self)->Load(wire);
  }
  void Load (const Handle_ShapeExtend_WireData& sbwd) {
    (*self)->Load(sbwd);
  }
  /*
  void SetFace (const TopoDS_Face& face) {
    (*self)->SetFace(face);
  }
  void SetSurface (const Handle_Geom_Surface& surf) {
    (*self)->SetSurface(surf);
  }
  void SetSurface (const Handle_Geom_Surface& surf, const TopLoc_Location& loc) {
    (*self)->SetSurface(surf, loc);
  }
  */
  void SetMaxTailAngle (const double theMaxTailAngle) {
    (*self)->SetMaxTailAngle(theMaxTailAngle);
  }
  void SetMaxTailWidth (const double theMaxTailWidth) {
    (*self)->SetMaxTailWidth(theMaxTailWidth);
  }
  /*
  bool IsLoaded() {
    return (*self)->IsLoaded();
  }
  bool IsReady() {
    return (*self)->IsReady();
    }
*/
  int NbEdges() {
    return (*self)->NbEdges();
  }

  TopoDS_Wire Wire() {
    return (*self)->Wire();
  }
  TopoDS_Wire WireAPIMake() {
    return (*self)->WireAPIMake();
  }

  Handle_ShapeAnalysis_Wire Analyzer() {
    return (*self)->Analyzer();
  }
  /*
  Handle_ShapeExtend_WireData& WireData() {
    return (*self)->WireData();
  }
  TopoDS_Face& Face() {
    return (*self)->Face();
  }
  bool GetTopologyMode() {
    return *((*self)->ModifyTopologyMode());
  }
  void SetTopologyMode(bool mode) {
    *((*self)->ModifyTopologyMode()) = mode;
  }
  bool GetGeometryMode() {
    return *((*self)->ModifyGeometryMode());
  }
  void SetGeometryMode(bool mode) {
    *((*self)->ModifyGeometryMode()) = mode;
  }
  int GetRemoveLoopMode() {
    return *((*self)->ModifyRemoveLoopMode());
  }
  void SetRemoveLoopMode(int mode) {
    *((*self)->ModifyRemoveLoopMode()) = mode;
  }
  bool GetClosedWireMode() {
    return *((*self)->ClosedWireMode());
  }
  void SetClosedWireMode(bool mode) {
    *((*self)->ClosedWireMode()) = mode;
  }
  bool GetPreferencePCurveMode() {
    return *((*self)->PreferencePCurveMode());
  }
  void SetPreferencePCurveMode(bool mode) {
    *((*self)->PreferencePCurveMode()) = mode;
  }
  bool GetFixGapsByRangesMode() {
    return *((*self)->FixGapsByRangesMode());
  }
  void SetFixGapsByRangesMode(bool mode) {
    *((*self)->FixGapsByRangesMode()) = mode;
  }
  int GetFixReorderMode() {
    return *((*self)->FixReorderMode());
  }
  void SetFixReorderMode(int mode) {
    *((*self)->FixReorderMode()) = mode;
  }
  int GetFixSmallMode() {
    return *((*self)->FixSmallMode());
  }
  void SetFixSmallMode(int mode) {
    *((*self)->FixSmallMode()) = mode;
  }  
  int GetFixConnectedMode() {
    return *((*self)->FixConnectedMode());
  }
  void SetFixConnectedMode(int mode) {
    *((*self)->FixConnectedMode()) = mode;
  }
  int GetFixEdgeCurvesMode() {
    return *((*self)->FixEdgeCurvesMode());
  }
  void SetFixEdgeCurvesMode(int mode) {
    *((*self)->FixEdgeCurvesMode()) = mode;
  }
  int GetFixDegeneratedMode() {
    return *((*self)->FixDegeneratedMode());
  }
  void SetFixDegeneratedMode(int mode) {
    *((*self)->FixDegeneratedMode()) = mode;
  }
  int GetFixSelfIntersectionMode() {
    return *((*self)->FixSelfIntersectionMode());
  }
  void SetFixSelfIntersectionMode(int mode) {
    *((*self)->FixSelfIntersectionMode()) = mode;
  }
  int GetFixLackingMode() {
    return *((*self)->FixLackingMode());
  }
  void SetFixLackingMode(int mode) {
    *((*self)->FixLackingMode()) = mode;
  }
  int GetFixGaps3dMode() {
    return *((*self)->FixGaps3dMode());
  }
  void SetFixGaps3dMode(int mode) {
    *((*self)->FixGaps3dMode()) = mode;
  }
  int GetFixGaps2dMode() {
    return *((*self)->FixGaps2dMode());
  }
  void SetFixGaps2dMode(int mode) {
    *((*self)->FixGaps2dMode()) = mode;
  }
  int GetFixReversed2dMode() {
    return *((*self)->FixReversed2dMode());
  }
  void SetFixReversed2dMode(int mode) {
    *((*self)->FixReversed2dMode()) = mode;
  }
  int GetFixRemovePCurveMode() {
    return *((*self)->FixRemovePCurveMode());
  }
  void SetFixRemovePCurveMode(int mode) {
    *((*self)->FixRemovePCurveMode()) = mode;
  }
  int GetFixAddPCurveMode() {
    return *((*self)->FixAddPCurveMode());
  }
  void SetFixAddPCurveMode(int mode) {
    *((*self)->FixAddPCurveMode()) = mode;
  }
  int GetFixRemoveCurve3dMode() {
    return *((*self)->FixRemoveCurve3dMode());
  }
  void SetFixRemoveCurve3dMode(int mode) {
    *((*self)->FixRemoveCurve3dMode()) = mode;
  }
  int GetFixAddCurve3dMode() {
    return *((*self)->FixAddCurve3dMode());
  }
  void SetFixAddCurve3dMode(int mode) {
    *((*self)->FixAddCurve3dMode()) = mode;
  }
  int GetFixSeamMode() {
    return *((*self)->FixSeamMode());
  }
  void SetFixSeamMode(int mode) {
    *((*self)->FixSeamMode()) = mode;
  }
  int GetFixShiftedMode() {
    return *((*self)->FixShiftedMode());
  }
  void SetFixShiftedMode(int mode) {
    *((*self)->FixShiftedMode()) = mode;
  }
  int GetFixSameParameterMode() {
    return *((*self)->FixSameParameterMode());
  }
  void SetFixSameParameterMode(int mode) {
    *((*self)->FixSameParameterMode()) = mode;
  }  
  int GetFixVertexToleranceMode() {
    return *((*self)->FixVertexToleranceMode());
  }
  void SetFixVertexToleranceMode(int mode) {
    *((*self)->FixVertexToleranceMode()) = mode;
  }
  int GetFixNotchedEdgesMode() {
    return *((*self)->FixNotchedEdgesMode());
  }
  void SetFixNotchedEdgesMode(int mode) {
    *((*self)->FixNotchedEdgesMode()) = mode;
  }
  int GetFixSelfIntersectingEdgeMode() {
    return *((*self)->FixSelfIntersectingEdgeMode());
  }
  void SetFixSelfIntersectingEdgeMode(int mode) {
    *((*self)->FixSelfIntersectingEdgeMode()) = mode;
  }  
  int GetFixIntersectingEdgesMode() {
    return *((*self)->FixIntersectingEdgesMode());
  }
  void SetFixIntersectingEdgesMode(int mode) {
    *((*self)->FixIntersectingEdgesMode()) = mode;
  }
  int GetFixNonAdjacentIntersectingEdgesMode() {
    return *((*self)->FixNonAdjacentIntersectingEdgesMode());
  }
  void SetFixNonAdjacentIntersectingEdgesMode(int mode) {
    *((*self)->FixNonAdjacentIntersectingEdgesMode()) = mode;
  }
  int GetFixTailMode() {
    return *((*self)->FixTailMode());
  }
  void SetFixTailMode(int mode) {
    *((*self)->FixTailMode()) = mode;
  }
  */
  bool Perform() {
    return (*self)->Perform();
  }
  bool FixReorder() {
    return (*self)->FixReorder();
  }
  int FixSmall (const bool lockvtx, const double precsmall = 0.0) {
    return (*self)->FixSmall(lockvtx, precsmall);
  }
  bool FixConnected (const double prec = -1.0) {
    return (*self)->FixConnected(prec);
  }
  bool FixEdgeCurves() {
    return (*self)->FixEdgeCurves();
  }
  bool FixDegenerated() {
    return (*self)->FixDegenerated();
  }
  bool FixSelfIntersection() {
    return (*self)->FixSelfIntersection();
  }
  bool FixLacking (const bool force = false) {
    return (*self)->FixLacking(force);
  }
  bool FixClosed (const double prec = -1.0) {
    return (*self)->FixClosed(prec);
  }
  bool FixGaps3d() {
    return (*self)->FixGaps3d();
  }
  bool FixGaps2d() {
    return (*self)->FixGaps2d();
  }
  bool FixReorder (const ShapeAnalysis_WireOrder& wi) {
    return (*self)->FixReorder(wi);
  }
  bool FixSmall (const int num, const bool lockvtx, const double precsmall) {
    return (*self)->FixSmall(num, lockvtx, precsmall);
  }
  bool FixConnected (const int num, const double prec) {
    return (*self)->FixConnected(num, prec);
  }
  bool FixSeam (const int num) {
    return (*self)->FixSeam(num);
  }
  bool FixShifted() {
    return (*self)->FixShifted();
  }
  bool FixDegenerated (const int num) {
    return (*self)->FixDegenerated(num);
  }
  bool FixLacking (const int num, const bool force = false) {
    return (*self)->FixLacking(num, force);
  }
  bool FixNotchedEdges() {
    return (*self)->FixNotchedEdges();
  }
  bool FixGap3d (const int num, const bool convert = false) {
    return (*self)->FixGap3d(num, convert);
  }
  bool FixGap2d (const int num, const bool convert = false) {
    return (*self)->FixGap2d(num, convert);
  }
  bool FixTails() {
    return (*self)->FixTails();
  }
}

%nodefaultdtor Handle_ShapeFix_Wireframe;
class Handle_ShapeFix_Wireframe: public Handle_ShapeFix_Root {};

%extend Handle_ShapeFix_Wireframe
{
  Handle_ShapeFix_Wireframe(const TopoDS_Shape& shape) {
    return new Handle_ShapeFix_Wireframe(new ShapeFix_Wireframe);
  }
  void Delete() {
    self->~Handle_ShapeFix_Wireframe();
  }  
  bool FixWireGaps() {
    return (*self)->FixWireGaps();
  }
  bool FixSmallEdges() {
    return (*self)->FixSmallEdges();
  }
  void SetLimitAngle(const double theLimitAngle) {
    (*self)->SetLimitAngle(theLimitAngle);
  }
  double LimitAngle() {
    return (*self)->LimitAngle();
  }
  TopoDS_Shape Shape() {
    return (*self)->Shape();
  }
  /*
  void SetDropSmallEdges(bool b)
  {
    self->ModeDropSmallEdges()=b;
  }
  bool GetDropSmallEdges()
  {
    return (*self)->ModeDropSmallEdges()!=0;
  }
  */
}



