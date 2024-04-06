%{

#include <AIS_InteractiveContext.hxx>
%}

%rename(AIS_InteractiveContext) Handle_AIS_InteractiveContext;

%nodefaultdtor Handle_AIS_InteractiveContext;
class Handle_AIS_InteractiveContext : public Handle_Standard_Transient
{
  Handle_AIS_InteractiveContext()=0;
};

%extend Handle_AIS_InteractiveContext
{
  Handle_AIS_InteractiveContext (const Handle_V3d_Viewer &MainViewer){
    return new Handle_AIS_InteractiveContext(new AIS_InteractiveContext(MainViewer));
  }
  void Delete() {
    self->~Handle_AIS_InteractiveContext();
  }
  PrsMgr_DisplayStatus DisplayStatus (const Handle_AIS_InteractiveObject &anIobj) {
    return (*self)->DisplayStatus(anIobj);
  }
  void Status (const Handle_AIS_InteractiveObject &anObj, TCollection_ExtendedString &astatus) {
    (*self)->Status(anObj, astatus);
  }
  Standard_Boolean IsDisplayed (const Handle_AIS_InteractiveObject &anIobj) {
    return (*self)->IsDisplayed(anIobj);
  }
  Standard_Boolean IsDisplayed (const Handle_AIS_InteractiveObject &aniobj, const Standard_Integer aMode) {
    return (*self)->IsDisplayed(aniobj, aMode);
  }
  void SetAutoActivateSelection (const Standard_Boolean theIsAuto) {
    (*self)->SetAutoActivateSelection(theIsAuto);
  }
  Standard_Boolean GetAutoActivateSelection () {
    return (*self)->GetAutoActivateSelection();
  }
  void 	Display (const Handle_AIS_InteractiveObject &theIObj, const Standard_Boolean theToUpdateViewer) {
    (*self)->Display(theIObj, theToUpdateViewer);
  }
  void Display (const Handle_AIS_InteractiveObject &theIObj, 
                const Standard_Integer theDispMode, 
                const Standard_Integer theSelectionMode,
                const Standard_Boolean theToUpdateViewer,
                const PrsMgr_DisplayStatus theDispStatus=PrsMgr_DisplayStatus_None) {
    (*self)->Display(theIObj, theDispMode, theSelectionMode, theToUpdateViewer, theDispStatus);
  }
  void Load (const Handle_AIS_InteractiveObject &theObj, const Standard_Integer theSelectionMode=-1) {
    (*self)->Load(theObj, theSelectionMode);
  }
  void Erase (const Handle_AIS_InteractiveObject &theIObj, const Standard_Boolean theToUpdateViewer) {
    (*self)->Erase(theIObj, theToUpdateViewer);
  }
  void EraseAll (const Standard_Boolean theToUpdateViewer) {
    (*self)->EraseAll(theToUpdateViewer);
  }
  void DisplayAll (const Standard_Boolean theToUpdateViewer) {
    (*self)->DisplayAll(theToUpdateViewer);
  }
  void EraseSelected (const Standard_Boolean theToUpdateViewer) {
    (*self)->EraseSelected(theToUpdateViewer);
  }
  void DisplaySelected (const Standard_Boolean theToUpdateViewer) {
    (*self)->DisplaySelected(theToUpdateViewer);
  }
  void ClearPrs (const Handle_AIS_InteractiveObject &theIObj, const Standard_Integer theMode, const Standard_Boolean theToUpdateViewer) {
    (*self)->ClearPrs(theIObj, theMode, theToUpdateViewer);
  }
  void Remove (const Handle_AIS_InteractiveObject &theIObj, const Standard_Boolean theToUpdateViewer) {
    (*self)->Remove(theIObj, theToUpdateViewer);
  }
  void RemoveAll (Standard_Boolean theToUpdateViewer) {
    (*self)->RemoveAll(theToUpdateViewer);
  }
  void Redisplay (const Handle_AIS_InteractiveObject &theIObj, const Standard_Boolean theToUpdateViewer, const Standard_Boolean theAllModes=Standard_False) {
    (*self)->Redisplay(theIObj, theToUpdateViewer, theAllModes);
  }
  void Redisplay (const AIS_KindOfInteractive theTypeOfObject, const Standard_Integer theSignature, const Standard_Boolean theToUpdateViewer) {
    (*self)->Redisplay(theTypeOfObject, theSignature, theToUpdateViewer);
  }
  void RecomputePrsOnly (const Handle_AIS_InteractiveObject &theIObj, const Standard_Boolean theToUpdateViewer, const Standard_Boolean theAllModes=Standard_False) {
    (*self)->RecomputePrsOnly(theIObj, theToUpdateViewer, theAllModes);
  }
  void RecomputeSelectionOnly (const Handle_AIS_InteractiveObject &anIObj) {
    (*self)->RecomputeSelectionOnly(anIObj);
  } 
  void Update (const Handle_AIS_InteractiveObject &theIObj, const Standard_Boolean theUpdateViewer) {
    (*self)->Update(theIObj, theUpdateViewer);
  }
  const Handle_Prs3d_Drawer & HighlightStyle (const Prs3d_TypeOfHighlight theStyleType) {
    return (*self)->HighlightStyle(theStyleType);
  } 
  void SetHighlightStyle (const Prs3d_TypeOfHighlight theStyleType, const Handle_Prs3d_Drawer &theStyle) {
    (*self)->SetHighlightStyle(theStyleType, theStyle);
  }
  const Handle_Prs3d_Drawer & HighlightStyle () {
    return (*self)->HighlightStyle();
  }
  void SetHighlightStyle (const Handle_Prs3d_Drawer &theStyle) {
    (*self)->SetHighlightStyle(theStyle);
  }
  const Handle_Prs3d_Drawer & SelectionStyle () {
    return (*self)->SelectionStyle();
  }
  void SetSelectionStyle (const Handle_Prs3d_Drawer &theStyle) {
    (*self)->SetSelectionStyle(theStyle);
  }
  Standard_Boolean HighlightStyle (const Handle_AIS_InteractiveObject &theObj, Handle_Prs3d_Drawer &theStyle) {
    return (*self)->HighlightStyle(theObj, theStyle);
  }
  Standard_Boolean HighlightStyle (const Handle_SelectMgr_EntityOwner &theOwner, Handle_Prs3d_Drawer &theStyle) {
    return (*self)->HighlightStyle(theOwner, theStyle);
  }
  Standard_Boolean IsHilighted (const Handle_AIS_InteractiveObject &theObj) {
    return (*self)->IsHilighted(theObj);
  }
  Standard_Boolean IsHilighted (const Handle_SelectMgr_EntityOwner &theOwner) {
    return (*self)->IsHilighted(theOwner);
  }
  void HilightWithColor (const Handle_AIS_InteractiveObject &theObj, const Handle_Prs3d_Drawer &theStyle, const Standard_Boolean theToUpdateViewer) {
    (*self)->HilightWithColor(theObj, theStyle, theToUpdateViewer);
  }
  void Unhilight (const Handle_AIS_InteractiveObject &theIObj, const Standard_Boolean theToUpdateViewer) {
    (*self)->Unhilight(theIObj, theToUpdateViewer);
  }
  Graphic3d_DisplayPriority DisplayPriority (const Handle_AIS_InteractiveObject &theIObj) {
    return (*self)->DisplayPriority(theIObj);
  }
  void SetDisplayPriority (const Handle_AIS_InteractiveObject &theIObj, const Graphic3d_DisplayPriority thePriority) {
    (*self)->SetDisplayPriority(theIObj, thePriority);
  }
  Graphic3d_ZLayerId GetZLayer (const Handle_AIS_InteractiveObject &theIObj) {
    return (*self)->GetZLayer(theIObj);
  }
  void SetZLayer (const Handle_AIS_InteractiveObject &theIObj, const Graphic3d_ZLayerId theLayerId) {
    (*self)->SetZLayer(theIObj, theLayerId);
  }
  void 	SetViewAffinity (const Handle_AIS_InteractiveObject &theIObj, const Handle_V3d_View &theView, const Standard_Boolean theIsVisible) {
    (*self)->SetViewAffinity(theIObj, theView, theIsVisible);
  }
  Standard_Integer DisplayMode () {
    return (*self)->DisplayMode();
  }
  void SetDisplayMode (const Standard_Integer theMode, const Standard_Boolean theToUpdateViewer) {
    (*self)->SetDisplayMode(theMode, theToUpdateViewer);
  }
  void SetDisplayMode (const Handle_AIS_InteractiveObject &theIObj, const Standard_Integer theMode, const Standard_Boolean theToUpdateViewer) {
    (*self)->SetDisplayMode(theIObj, theMode, theToUpdateViewer);
  }
  void UnsetDisplayMode (const Handle_AIS_InteractiveObject &theIObj, const Standard_Boolean theToUpdateViewer) {
    (*self)->UnsetDisplayMode(theIObj, theToUpdateViewer);
  }
  void SetLocation (const Handle_AIS_InteractiveObject &theObject, const TopLoc_Location &theLocation) {
    (*self)->SetLocation(theObject, theLocation);
  }
  void ResetLocation (const Handle_AIS_InteractiveObject &theObject) {
    (*self)->ResetLocation(theObject);
  }
  Standard_Boolean HasLocation (const Handle_AIS_InteractiveObject &theObject) {
    return (*self)->HasLocation(theObject);
  }
  TopLoc_Location Location (const Handle_AIS_InteractiveObject &theObject) {
    return (*self)->Location(theObject);
  }
  void SetTransformPersistence (const Handle_AIS_InteractiveObject &theObject, const Handle_Graphic3d_TransformPers &theTrsfPers) {
    (*self)->SetTransformPersistence(theObject, theTrsfPers);
  }
  void SetPixelTolerance (const Standard_Integer thePrecision=2) {
    (*self)->SetPixelTolerance(thePrecision);
  }
  Standard_Integer PixelTolerance () {
    return (*self)->PixelTolerance();
  }
  void SetSelectionSensitivity (const Handle_AIS_InteractiveObject &theObject, const Standard_Integer theMode, const Standard_Integer theNewSensitivity) {
    (*self)->SetSelectionSensitivity(theObject, theMode, theNewSensitivity);
  }
  Handle_V3d_View LastActiveView () {
    return (*self)->LastActiveView();
  }
  AIS_StatusOfDetection MoveTo (const Standard_Integer theXPix, const Standard_Integer theYPix,
                                const Handle_V3d_View &theView, const Standard_Boolean theToRedrawOnUpdate) {
    return (*self)->MoveTo(theXPix, theYPix, theView, theToRedrawOnUpdate);
  }
  AIS_StatusOfDetection MoveTo (const gp_Ax1 &theAxis, const Handle_V3d_View &theView, const Standard_Boolean theToRedrawOnUpdate) {
    return (*self)->MoveTo(theAxis, theView, theToRedrawOnUpdate);
  }
  Standard_Boolean ClearDetected (Standard_Boolean theToRedrawImmediate=Standard_False) {
    return (*self)->ClearDetected(theToRedrawImmediate);
  }
  Standard_Boolean HasDetected () {
    return (*self)->HasDetected();
  }
  const Handle_SelectMgr_EntityOwner & DetectedOwner () {
    return (*self)->DetectedOwner();
  }
  Handle_AIS_InteractiveObject DetectedInteractive () {
    return (*self)->DetectedInteractive();
  }
  Standard_Boolean HasNextDetected () {
    return (*self)->HasNextDetected();
  }
  Standard_Integer HilightNextDetected (const Handle_V3d_View &theView, const Standard_Boolean theToRedrawImmediate=Standard_True) {
    return (*self)->HilightNextDetected(theView, theToRedrawImmediate);
  }
  Standard_Integer HilightPreviousDetected (const Handle_V3d_View &theView, const Standard_Boolean theToRedrawImmediate=Standard_True) {
    return (*self)->HilightPreviousDetected(theView, theToRedrawImmediate);
  }
  void InitDetected () {
    (*self)->InitDetected();
  }
  Standard_Boolean MoreDetected () {
    return (*self)->MoreDetected();
  }
  void NextDetected () {
    (*self)->NextDetected();
  }
  Handle_SelectMgr_EntityOwner DetectedCurrentOwner () {
    return (*self)->DetectedCurrentOwner();
  }
  AIS_StatusOfPick AddSelect (const Handle_SelectMgr_EntityOwner &theObject) {
    return (*self)->AddSelect(theObject);
  }
  AIS_StatusOfPick AddSelect (const Handle_AIS_InteractiveObject &theObject) {
    return (*self)->AddSelect(theObject);
  }
  AIS_StatusOfPick SelectRectangle (const Graphic3d_Vec2i &thePntMin, const Graphic3d_Vec2i &thePntMax,
                                    const Handle_V3d_View &theView, const AIS_SelectionScheme theSelScheme=AIS_SelectionScheme_Replace) {
    return (*self)->SelectRectangle(thePntMin, thePntMax, theView, theSelScheme);
  }
  AIS_StatusOfPick 	SelectPolygon (const TColgp_Array1OfPnt2d &thePolyline, const Handle_V3d_View &theView,
                                   const AIS_SelectionScheme theSelScheme=AIS_SelectionScheme_Replace) {
    return (*self)->SelectPolygon(thePolyline, theView, theSelScheme);
  }
  AIS_StatusOfPick SelectPoint (const Graphic3d_Vec2i &thePnt, const Handle_V3d_View &theView,
                                const AIS_SelectionScheme theSelScheme=AIS_SelectionScheme_Replace) {
    return (*self)->SelectPoint(thePnt, theView, theSelScheme);
  }
  AIS_StatusOfPick 	SelectDetected (const AIS_SelectionScheme theSelScheme=AIS_SelectionScheme_Replace) {
    return (*self)->SelectDetected(theSelScheme);
  }
  Bnd_Box BoundingBoxOfSelection (const Handle_V3d_View &theView) {
    return (*self)->BoundingBoxOfSelection(theView);
  }
  AIS_StatusOfPick Select (const AIS_NArray1OfEntityOwner &theOwners, const AIS_SelectionScheme theSelScheme) {
    return (*self)->Select(theOwners, theSelScheme);
  }
  void FitSelected (const Handle_V3d_View &theView, const Standard_Real theMargin, const Standard_Boolean theToUpdate) {
    return (*self)->FitSelected(theView, theMargin, theToUpdate);
  }
  void FitSelected (const Handle_V3d_View &theView) {
    return (*self)->FitSelected(theView);
  }
  Standard_Boolean ToHilightSelected () {
    return (*self)->ToHilightSelected();
  }
  void SetToHilightSelected (const Standard_Boolean toHilight) {
    (*self)->SetToHilightSelected(toHilight);
  }
  Standard_Boolean AutomaticHilight () {
    return (*self)->AutomaticHilight();
  }
  void SetAutomaticHilight (Standard_Boolean theStatus) {
    (*self)->SetAutomaticHilight(theStatus);
  }
  void SetSelected (const Handle_SelectMgr_EntityOwner &theOwners, const Standard_Boolean theToUpdateViewer) {
    (*self)->SetSelected(theOwners, theToUpdateViewer);
  }
  void SetSelected (const Handle_AIS_InteractiveObject &theObject, const Standard_Boolean theToUpdateViewer) {
    (*self)->SetSelected(theObject, theToUpdateViewer);
  }
  void AddOrRemoveSelected (const Handle_AIS_InteractiveObject &theObject, const Standard_Boolean theToUpdateViewer) {
    (*self)->AddOrRemoveSelected(theObject, theToUpdateViewer);
  }
  Standard_Boolean SetSelectedState (const Handle_SelectMgr_EntityOwner &theOwner, const Standard_Boolean theIsSelected) {
    return (*self)->SetSelectedState(theOwner, theIsSelected);
  }
  void HilightSelected (const Standard_Boolean theToUpdateViewer) {
    (*self)->HilightSelected(theToUpdateViewer);
  }
  void UnhilightSelected (const Standard_Boolean theToUpdateViewer) {
    (*self)->UnhilightSelected(theToUpdateViewer);
  }
  void UpdateSelected (Standard_Boolean theToUpdateViewer) {
    (*self)->UpdateSelected(theToUpdateViewer);
  }
  void ClearSelected (const Standard_Boolean theToUpdateViewer) {
    (*self)->ClearSelected(theToUpdateViewer);
  }
  void AddOrRemoveSelected (const Handle_SelectMgr_EntityOwner &theOwner, const Standard_Boolean theToUpdateViewer) {
    (*self)->AddOrRemoveSelected(theOwner, theToUpdateViewer);
  }
  Standard_Boolean IsSelected (const Handle_SelectMgr_EntityOwner &theOwner) {
    return (*self)->IsSelected(theOwner);
  }
  Standard_Boolean 	IsSelected (const Handle_AIS_InteractiveObject &theObj) {
    return (*self)->IsSelected(theObj);
  }
  Handle_AIS_InteractiveObject FirstSelectedObject () {
    return (*self)->FirstSelectedObject();
  }
  Standard_Integer NbSelected () {
    return (*self)->NbSelected();
  }
  void InitSelected () {
    (*self)->InitSelected();
  }
  Standard_Boolean MoreSelected () {
    return (*self)->MoreSelected();
  }
  void NextSelected () {
    (*self)->NextSelected();
  }
  Handle_SelectMgr_EntityOwner SelectedOwner () {
    return (*self)->SelectedOwner();
  }
  Handle_AIS_InteractiveObject SelectedInteractive () {
    return (*self)->SelectedInteractive();
  }
  Standard_Boolean HasSelectedShape () {
    return (*self)->HasSelectedShape();
  }
  TopoDS_Shape SelectedShape () {
    return (*self)->SelectedShape();
  }
  Standard_Boolean HasApplicative () {
    return (*self)->HasApplicative();
  }
  Handle_Standard_Transient Applicative () {
    return (*self)->Applicative();
  }
  Standard_Boolean BeginImmediateDraw () {
    return (*self)->BeginImmediateDraw();
  }
  Standard_Boolean 	ImmediateAdd (const Handle_AIS_InteractiveObject &theObj, const Standard_Integer theMode=0) {
    return (*self)->ImmediateAdd(theObj, theMode);
  }
  Standard_Boolean EndImmediateDraw (const Handle_V3d_View &theView) {
    return (*self)->EndImmediateDraw(theView);
  }
  Standard_Boolean EndImmediateDraw () {
    return (*self)->EndImmediateDraw();
  }
  Standard_Boolean IsImmediateModeOn () {
    return (*self)->EndImmediateDraw();
  }
  void RedrawImmediate (const Handle_V3d_Viewer &theViewer) {
    (*self)->RedrawImmediate(theViewer);
  }
  void SetSelectionModeActive (const Handle_AIS_InteractiveObject &theObj, const Standard_Integer theMode,
                               const Standard_Boolean theToActivate, const AIS_SelectionModesConcurrency theConcurrency=AIS_SelectionModesConcurrency_Multiple,
                               const Standard_Boolean theIsForce=Standard_False) {
    (*self)->SetSelectionModeActive(theObj, theMode, theToActivate, theConcurrency, theIsForce);
  }
  void Activate (const Handle_AIS_InteractiveObject &theObj, const Standard_Integer theMode=0, const Standard_Boolean theIsForce=Standard_False) {
    (*self)->Activate(theObj, theMode, theIsForce);
  }
  void 	Activate (const Standard_Integer theMode, const Standard_Boolean theIsForce=Standard_False) {
    (*self)->Activate(theMode, theIsForce);
  }
  void Deactivate (const Handle_AIS_InteractiveObject &theObj) {
    (*self)->Deactivate(theObj);
  }
  void Deactivate (const Handle_AIS_InteractiveObject &theObj, const Standard_Integer theMode) {
    (*self)->Deactivate(theObj, theMode);
  }
  void Deactivate (const Standard_Integer theMode) {
    (*self)->Deactivate(theMode);
  }
  void Deactivate () {
    (*self)->Deactivate();
  }
  void 	ActivatedModes (const Handle_AIS_InteractiveObject &anIobj, TColStd_ListOfInteger &theList) {
    (*self)->ActivatedModes(anIobj, theList);
  }
  void EntityOwners (opencascade::handle<SelectMgr_IndexedMapOfOwner> &theOwners, const Handle_AIS_InteractiveObject &theIObj, const Standard_Integer theMode=-1) {
    (*self)->EntityOwners(theOwners, theIObj, theMode);
  }
  SelectMgr_FilterType 	FilterType () {
    return (*self)->FilterType();
  }
  void SetFilterType (const SelectMgr_FilterType theFilterType) {
    (*self)->SetFilterType(theFilterType);
  }
  const SelectMgr_ListOfFilter & Filters () {
    return (*self)->Filters();
  }
  const Handle_SelectMgr_AndOrFilter & 	GlobalFilter () {
    return (*self)->GlobalFilter();
  }
  void AddFilter (const Handle_SelectMgr_Filter &theFilter) {
    (*self)->AddFilter(theFilter);
  }
  void RemoveFilter (const Handle_SelectMgr_Filter &theFilter) {
    (*self)->RemoveFilter(theFilter);
  }
  void RemoveFilters () {
    (*self)->RemoveFilters();
  }
  SelectMgr_PickingStrategy PickingStrategy () {
    return (*self)->PickingStrategy();
  }
  void SetPickingStrategy (const SelectMgr_PickingStrategy theStrategy) {
    (*self)->SetPickingStrategy(theStrategy);
  }
  const Handle_Prs3d_Drawer & DefaultDrawer () {
    return (*self)->DefaultDrawer();
  }
  void SetDefaultDrawer (const Handle_Prs3d_Drawer &theDrawer) {
    (*self)->SetDefaultDrawer(theDrawer);
  }
  const Handle_V3d_Viewer & CurrentViewer () {
    return (*self)->CurrentViewer();
  }
  const Handle_SelectMgr_SelectionManager & SelectionManager () {
    return (*self)->SelectionManager();
  }
  const Handle_PrsMgr_PresentationManager & MainPrsMgr () {
    return (*self)->MainPrsMgr();
  }
  const opencascade::handle< StdSelect_ViewerSelector3d > & MainSelector () {
    return (*self)->MainSelector();
  }
  void UpdateCurrentViewer () {
    (*self)->UpdateCurrentViewer();
  }
  void DisplayedObjects (AIS_ListOfInteractive &aListOfIO) {
    (*self)->DisplayedObjects(aListOfIO);
  }
  void DisplayedObjects (const AIS_KindOfInteractive theWhichKind, const Standard_Integer theWhichSignature, AIS_ListOfInteractive &theListOfIO) {
    (*self)->DisplayedObjects(theWhichKind, theWhichSignature, theListOfIO);
  }
  void ErasedObjects (AIS_ListOfInteractive &theListOfIO) {
    (*self)->ErasedObjects(theListOfIO);
  }
  void ErasedObjects (const AIS_KindOfInteractive theWhichKind, const Standard_Integer theWhichSignature, AIS_ListOfInteractive &theListOfIO) {
    (*self)->ErasedObjects(theWhichKind, theWhichSignature, theListOfIO);
  }
  void ObjectsByDisplayStatus (const PrsMgr_DisplayStatus theStatus, AIS_ListOfInteractive &theListOfIO) {
    (*self)->ObjectsByDisplayStatus(theStatus, theListOfIO);
  }
  void ObjectsByDisplayStatus (const AIS_KindOfInteractive WhichKind, const Standard_Integer WhichSignature,
                               const PrsMgr_DisplayStatus theStatus, AIS_ListOfInteractive &theListOfIO) {
    (*self)->ObjectsByDisplayStatus(WhichKind, WhichSignature, theStatus, theListOfIO);
  }
  void ObjectsInside (AIS_ListOfInteractive &aListOfIO, const AIS_KindOfInteractive WhichKind=AIS_KindOfInteractive_None, const Standard_Integer WhichSignature=-1) {
    (*self)->ObjectsInside(aListOfIO, WhichKind, WhichSignature);
  }
  AIS_DataMapIteratorOfDataMapOfIOStatus ObjectIterator () {
    return (*self)->ObjectIterator();
  }
  void RebuildSelectionStructs () {
    (*self)->RebuildSelectionStructs();
  }
  void Disconnect (const Handle_AIS_InteractiveObject &theAssembly, const Handle_AIS_InteractiveObject &theObjToDisconnect=NULL) {
    (*self)->Disconnect(theAssembly, theObjToDisconnect);
  }
  void ObjectsForView (AIS_ListOfInteractive &theListOfIO, const Handle_V3d_View &theView, const Standard_Boolean theIsVisibleInView,
                       const PrsMgr_DisplayStatus theStatus=PrsMgr_DisplayStatus_None) {
    (*self)->ObjectsForView(theListOfIO, theView, theIsVisibleInView, theStatus);
  }
  gp_Pnt GravityPoint (const Handle_V3d_View &theView) {
    return (*self)->GravityPoint(theView);
  }
  void DisplayActiveSensitive (const Handle_V3d_View &aView) {
    (*self)->DisplayActiveSensitive(aView);
  }
  void ClearActiveSensitive (const Handle_V3d_View &aView) {
    (*self)->ClearActiveSensitive(aView);
  }
  void DisplayActiveSensitive (const Handle_AIS_InteractiveObject &anObject, const Handle_V3d_View &aView) {
    (*self)->DisplayActiveSensitive(anObject, aView);
  }
  void SetLocalAttributes (const Handle_AIS_InteractiveObject &theIObj, const Handle_Prs3d_Drawer &theDrawer, const Standard_Boolean theToUpdateViewer) {
    (*self)->SetLocalAttributes(theIObj, theDrawer, theToUpdateViewer);
  }
  void UnsetLocalAttributes (const Handle_AIS_InteractiveObject &theIObj, const Standard_Boolean theToUpdateViewer) {
    (*self)->UnsetLocalAttributes(theIObj, theToUpdateViewer);
  }
  void SetCurrentFacingModel (const Handle_AIS_InteractiveObject &aniobj, const Aspect_TypeOfFacingModel aModel=Aspect_TOFM_BOTH_SIDE) {
    (*self)->SetCurrentFacingModel(aniobj, aModel);
  }
  Standard_Boolean 	HasColor (const Handle_AIS_InteractiveObject &aniobj) {
    return (*self)->HasColor(aniobj);
  }
  void Color (const Handle_AIS_InteractiveObject &aniobj, Quantity_Color &acolor) {
    (*self)->Color(aniobj, acolor);
  }
  void SetColor (const Handle_AIS_InteractiveObject &theIObj, const Quantity_Color &theColor, const Standard_Boolean theToUpdateViewer) {
    (*self)->SetColor(theIObj, theColor, theToUpdateViewer);
  }
  void UnsetColor (const Handle_AIS_InteractiveObject &theIObj, const Standard_Boolean theToUpdateViewer) {
    (*self)->UnsetColor(theIObj, theToUpdateViewer);
  }
  Standard_Real Width (const Handle_AIS_InteractiveObject &aniobj) {
    return (*self)->Width(aniobj);
  }
  void SetWidth (const Handle_AIS_InteractiveObject &theIObj, const Standard_Real theValue, const Standard_Boolean theToUpdateViewer) {
    (*self)->SetWidth(theIObj, theValue, theToUpdateViewer);
  }
  void UnsetWidth (const Handle_AIS_InteractiveObject &theIObj, const Standard_Boolean theToUpdateViewer) {
    (*self)->UnsetWidth(theIObj, theToUpdateViewer);
  }
  void SetMaterial (const Handle_AIS_InteractiveObject &theIObj, const Graphic3d_MaterialAspect &theMaterial, const Standard_Boolean theToUpdateViewer) {
    (*self)->SetMaterial(theIObj, theMaterial, theToUpdateViewer);
  }
  void UnsetMaterial (const Handle_AIS_InteractiveObject &theIObj, const Standard_Boolean theToUpdateViewer) {
    (*self)->UnsetMaterial(theIObj, theToUpdateViewer);
  }
  void SetTransparency (const Handle_AIS_InteractiveObject &theIObj, const Standard_Real theValue, const Standard_Boolean theToUpdateViewer) {
    (*self)->SetTransparency(theIObj, theValue, theToUpdateViewer);
  }
  void UnsetTransparency (const Handle_AIS_InteractiveObject &theIObj, const Standard_Boolean theToUpdateViewer) {
    (*self)->UnsetTransparency(theIObj, theToUpdateViewer);
  }
  void SetPolygonOffsets (const Handle_AIS_InteractiveObject &theIObj, const Standard_Integer theMode, const Standard_ShortReal theFactor,
                         const Standard_ShortReal theUnits, const Standard_Boolean theToUpdateViewer) {
    (*self)->SetPolygonOffsets(theIObj, theMode, theFactor, theUnits, theToUpdateViewer);
  }
  Standard_Boolean HasPolygonOffsets (const Handle_AIS_InteractiveObject &anObj) {
    return (*self)->HasPolygonOffsets(anObj);
  }
  void PolygonOffsets (const Handle_AIS_InteractiveObject &anObj, Standard_Integer &aMode, Standard_ShortReal &aFactor, Standard_ShortReal &aUnits) {
    (*self)->PolygonOffsets(anObj, aMode, aFactor, aUnits);
  }
  void SetTrihedronSize (const Standard_Real theSize, const Standard_Boolean theToUpdateViewer) {
    (*self)->SetTrihedronSize(theSize, theToUpdateViewer);
  }
  Standard_Real TrihedronSize () {
    return (*self)->TrihedronSize();
  }
  void SetPlaneSize (const Standard_Real theSizeX, const Standard_Real theSizeY, const Standard_Boolean theToUpdateViewer) {
    (*self)->SetPlaneSize(theSizeX, theSizeY, theToUpdateViewer);
  }
  void SetPlaneSize (const Standard_Real theSize, const Standard_Boolean theToUpdateViewer) {
    (*self)->SetPlaneSize(theSize, theToUpdateViewer);
  }
  Standard_Boolean PlaneSize (Standard_Real &XSize, Standard_Real &YSize) {
    return (*self)->PlaneSize(XSize, YSize);
  }
  void SetDeviationCoefficient (const Handle_AIS_InteractiveObject &theIObj, const Standard_Real theCoefficient, const Standard_Boolean theToUpdateViewer) {
    (*self)->SetDeviationCoefficient(theIObj, theCoefficient, theToUpdateViewer);
  }
  void SetDeviationAngle (const Handle_AIS_InteractiveObject &theIObj, const Standard_Real theAngle, const Standard_Boolean theToUpdateViewer) {
    (*self)->SetDeviationAngle(theIObj, theAngle, theToUpdateViewer);
  }
  void SetAngleAndDeviation (const Handle_AIS_InteractiveObject &theIObj, const Standard_Real theAngle, const Standard_Boolean theToUpdateViewer) {
    (*self)->SetAngleAndDeviation(theIObj, theAngle, theToUpdateViewer);
  }
  void SetDeviationCoefficient (const Standard_Real theCoefficient) {
    (*self)->SetDeviationCoefficient(theCoefficient);
  }
  Standard_Real DeviationCoefficient () {
    return (*self)->DeviationCoefficient();
  }
  void SetDeviationAngle (const Standard_Real theAngle) {
    (*self)->SetDeviationAngle(theAngle);
  }
  Standard_Real DeviationAngle () {
    return (*self)->DeviationAngle();
  }
  const Handle_Prs3d_LineAspect & HiddenLineAspect () {
    return (*self)->HiddenLineAspect();
  }
  void SetHiddenLineAspect (const Handle_Prs3d_LineAspect &theAspect) {
    (*self)->SetHiddenLineAspect(theAspect);
  }
  Standard_Boolean DrawHiddenLine () {
    return (*self)->DrawHiddenLine();
  }
  void EnableDrawHiddenLine () {
    (*self)->EnableDrawHiddenLine();
  }
  void DisableDrawHiddenLine () {
    (*self)->DisableDrawHiddenLine();
  }
  void SetIsoNumber (const Standard_Integer NbIsos, const AIS_TypeOfIso WhichIsos=AIS_TOI_Both) {
    (*self)->SetIsoNumber(NbIsos, WhichIsos);
  }
  Standard_Integer 	IsoNumber (const AIS_TypeOfIso WhichIsos=AIS_TOI_Both) {
    return (*self)->IsoNumber(WhichIsos);
  }
  void IsoOnPlane (const Standard_Boolean theToSwitchOn) {
    (*self)->IsoOnPlane(theToSwitchOn);
  }
  Standard_Boolean IsoOnPlane () {
    return (*self)->IsoOnPlane();
  }
  void IsoOnTriangulation (const Standard_Boolean theIsEnabled, const Handle_AIS_InteractiveObject &theObject) {
    (*self)->IsoOnTriangulation(theIsEnabled, theObject);
  }
  void IsoOnTriangulation (const Standard_Boolean theToSwitchOn) {
    (*self)->IsoOnTriangulation(theToSwitchOn);
  }
  Standard_Boolean IsoOnTriangulation () {
    return (*self)->IsoOnTriangulation();
  }
}
