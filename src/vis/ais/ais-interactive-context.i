%{

#include <AIS_InteractiveContext.hxx>

typedef opencascade::handle<AIS_InteractiveContext> Handle_AIS_InteractiveContext;
%}

%rename(AIS_InteractiveContext) Handle_AIS_InteractiveContext;

%nodefaultdtor Handle_AIS_InteractiveContext;
class Handle_AIS_InteractiveContext : public Handle_Standard_Transient
{
  Handle_AIS_InteractiveContext()=0;
};

%extend Handle_AIS_InteractiveContext
{
  Handle_AIS_InteractiveContext(const occ::handle< V3d_Viewer > &MainViewer){
    return new Handle_AIS_InteractiveContext(new AIS_InteractiveContext(MainViewer));
  }
  void Delete() {
    self->~Handle_AIS_InteractiveContext();
  }
  PrsMgr_DisplayStatus 	DisplayStatus(const occ::handle< AIS_InteractiveObject > &anIobj) const {
    return (*self)->DisplayStatus(anIobj);
  }
  void Status(const occ::handle< AIS_InteractiveObject > &anObj, TCollection_ExtendedString &astatus) const {
    (*self)->Status(anObj, astatus);
  }
  bool IsDisplayed(const occ::handle< AIS_InteractiveObject > &anIobj) const {
    return (*self)->IsDisplayed(anIobj);
  }
  bool IsDisplayed(const occ::handle< AIS_InteractiveObject > &aniobj, const int aMode) const {
    return (*self)->IsDisplayed(aniobj, aMode);
  }
 void SetAutoActivateSelection(const bool theIsAuto) {
    (*self)->SetAutoActivateSelection(theIsAuto);
  }
  bool GetAutoActivateSelection() const {
    return (*self)->GetAutoActivateSelection();
  }
  void Display(const occ::handle< AIS_InteractiveObject > &theIObj, const bool theToUpdateViewer) {
    (*self)->Display(theIObj, theToUpdateViewer);
  }
  void Display(const occ::handle< AIS_InteractiveObject > &theIObj,
               const int theDispMode, const int theSelectionMode,
               const bool theToUpdateViewer,
               const PrsMgr_DisplayStatus theDispStatus=PrsMgr_DisplayStatus_None) {
    (*self)->Display(theIObj, theDispMode, theSelectionMode, theToUpdateViewer, theDispStatus);
  }
  void Load(const occ::handle< AIS_InteractiveObject > &theObj, const int theSelectionMode=-1) {
    (*self)->Load(theObj, theSelectionMode);
  }
  void Erase(const occ::handle< AIS_InteractiveObject > &theIObj, const bool theToUpdateViewer) {
    (*self)->Erase(theIObj, theToUpdateViewer);
  }
  void EraseAll(const bool theToUpdateViewer) {
    (*self)->EraseAll(theToUpdateViewer);
  }
  void DisplayAll(const bool theToUpdateViewer) {
    (*self)->DisplayAll(theToUpdateViewer);
  }
  void EraseSelected(const bool theToUpdateViewer) {
    (*self)->EraseSelected(theToUpdateViewer);
  }
  void DisplaySelected(const bool theToUpdateViewer){
    (*self)->DisplaySelected(theToUpdateViewer);
  }
  void ClearPrs(const occ::handle< AIS_InteractiveObject > &theIObj, const int theMode, const bool theToUpdateViewer) {
    (*self)->ClearPrs(theIObj, theMode, theToUpdateViewer);
  }
  void Remove(const occ::handle< AIS_InteractiveObject > &theIObj, const bool theToUpdateViewer) {
    (*self)->Remove(theIObj, theToUpdateViewer);
  }
  void RemoveAll(const bool theToUpdateViewer) {
    (*self)->RemoveAll(theToUpdateViewer);
  }
  void Redisplay(const occ::handle< AIS_InteractiveObject > &theIObj, const bool theToUpdateViewer, const bool theAllModes=false) {
    (*self)->Redisplay(theIObj, theToUpdateViewer, theAllModes);
  }
  void Redisplay(const AIS_KindOfInteractive theTypeOfObject, const int theSignature, const bool theToUpdateViewer) {
    (*self)->Redisplay(theTypeOfObject, theSignature, theToUpdateViewer);
  }
  void RecomputePrsOnly(const occ::handle< AIS_InteractiveObject > &theIObj, const bool theToUpdateViewer, const bool theAllModes=false) {
    (*self)->RecomputePrsOnly(theIObj, theToUpdateViewer, theAllModes);
  }
  void RecomputeSelectionOnly(const occ::handle< AIS_InteractiveObject > &anIObj) {
    (*self)->RecomputeSelectionOnly(anIObj);
  }
  void Update(const occ::handle< AIS_InteractiveObject > &theIObj, const bool theUpdateViewer) {
    (*self)->Update(theIObj, theUpdateViewer);
  }
  const occ::handle< Prs3d_Drawer > &HighlightStyle(const Prs3d_TypeOfHighlight theStyleType) const {
    return (*self)->HighlightStyle(theStyleType);
  } 
  void SetHighlightStyle(const Prs3d_TypeOfHighlight theStyleType, const occ::handle< Prs3d_Drawer > &theStyle) {
    (*self)->SetHighlightStyle(theStyleType, theStyle);
  }
  const occ::handle< Prs3d_Drawer > &HighlightStyle() const {
    return (*self)->HighlightStyle();
  }
  void SetHighlightStyle(const occ::handle< Prs3d_Drawer > &theStyle) {
    (*self)->SetHighlightStyle(theStyle);
  }
  const occ::handle< Prs3d_Drawer > & SelectionStyle() const {
    return (*self)->SelectionStyle();
  }
  void SetSelectionStyle(const occ::handle< Prs3d_Drawer > &theStyle) {
    (*self)->SetSelectionStyle(theStyle);
  }
  bool HighlightStyle(const occ::handle< AIS_InteractiveObject > &theObj, occ::handle< Prs3d_Drawer > &theStyle) const {
    return (*self)->HighlightStyle(theObj, theStyle);
  }
  bool HighlightStyle(const occ::handle< SelectMgr_EntityOwner > &theOwner, occ::handle< Prs3d_Drawer > &theStyle) const {
    return (*self)->HighlightStyle(theOwner, theStyle);
  }
  bool IsHilighted(const occ::handle< AIS_InteractiveObject > &theObj) const {
    return (*self)->IsHilighted(theObj);
  }
  bool 	IsHilighted(const occ::handle< SelectMgr_EntityOwner > &theOwner) const {
    return (*self)->IsHilighted(theOwner);
  }
  void HilightWithColor(const occ::handle< AIS_InteractiveObject > &theObj, const occ::handle< Prs3d_Drawer > &theStyle, const bool theToUpdateViewer) {
    (*self)->HilightWithColor(theObj, theStyle, theToUpdateViewer);
  }
  void Unhilight(const occ::handle< AIS_InteractiveObject > &theIObj, const bool theToUpdateViewer) {
    (*self)->Unhilight(theIObj, theToUpdateViewer);
  }
  Graphic3d_DisplayPriority DisplayPriority(const occ::handle< AIS_InteractiveObject > &theIObj) const {
    return (*self)->DisplayPriority(theIObj);
  }
  void SetDisplayPriority(const occ::handle< AIS_InteractiveObject > &theIObj, const Graphic3d_DisplayPriority thePriority) {
    (*self)->SetDisplayPriority(theIObj, thePriority);
  }
  Graphic3d_ZLayerId GetZLayer(const occ::handle< AIS_InteractiveObject > &theIObj) const {
    return (*self)->GetZLayer(theIObj);
  }
  void SetZLayer(const occ::handle< AIS_InteractiveObject > &theIObj, const Graphic3d_ZLayerId theLayerId) {
    (*self)->SetZLayer(theIObj, theLayerId);
  }
  void SetViewAffinity(const occ::handle< AIS_InteractiveObject > &theIObj, const occ::handle< V3d_View > &theView, const bool theIsVisible) {
    (*self)->SetViewAffinity(theIObj, theView, theIsVisible);
  }
  int DisplayMode() const {
    return (*self)->DisplayMode();
  }
  void SetDisplayMode(const int theMode, const bool theToUpdateViewer) {
    (*self)->SetDisplayMode(theMode, theToUpdateViewer);
  }
  void SetDisplayMode(const occ::handle< AIS_InteractiveObject > &theIObj, const int theMode, const bool theToUpdateViewer) {
    (*self)->SetDisplayMode(theIObj, theMode, theToUpdateViewer);
  }
  void UnsetDisplayMode(const occ::handle< AIS_InteractiveObject > &theIObj, const bool theToUpdateViewer) {
    (*self)->UnsetDisplayMode(theIObj, theToUpdateViewer);
  }
  void SetLocation(const occ::handle< AIS_InteractiveObject > &theObject, const TopLoc_Location &theLocation) {
    (*self)->SetLocation(theObject, theLocation);
  }
  void ResetLocation(const occ::handle< AIS_InteractiveObject > &theObject) {
    (*self)->ResetLocation(theObject);
  }
  bool HasLocation(const occ::handle< AIS_InteractiveObject > &theObject) const {
    return (*self)->HasLocation(theObject);
  }
  TopLoc_Location Location(const occ::handle< AIS_InteractiveObject > &theObject) const {
    return (*self)->Location(theObject);
  }
  void SetTransformPersistence(const occ::handle< AIS_InteractiveObject > &theObject, const occ::handle< Graphic3d_TransformPers > &theTrsfPers) {
    (*self)->SetTransformPersistence(theObject, theTrsfPers);
  }
  void SetPixelTolerance(const int thePrecision=2) {
    (*self)->SetPixelTolerance(thePrecision);
  }
  int PixelTolerance() const {
    return (*self)->PixelTolerance();
  }
  void SetSelectionSensitivity(const occ::handle< AIS_InteractiveObject > &theObject, const int theMode, const int theNewSensitivity) {
    (*self)->SetSelectionSensitivity(theObject, theMode, theNewSensitivity);
  }
  occ::handle< V3d_View > LastActiveView() const {
    return (*self)->LastActiveView();
  }
  AIS_StatusOfDetection MoveTo(const int theXPix, const int theYPix, const occ::handle< V3d_View > &theView, const bool theToRedrawOnUpdate) {
    return (*self)->MoveTo(theXPix, theYPix, theView, theToRedrawOnUpdate);
  }
  AIS_StatusOfDetection MoveTo(const gp_Ax1 &theAxis, const occ::handle< V3d_View > &theView, const bool theToRedrawOnUpdate) {
    return (*self)->MoveTo(theAxis, theView, theToRedrawOnUpdate);
  }
  bool ClearDetected(bool theToRedrawImmediate=false) {
    return (*self)->ClearDetected(theToRedrawImmediate);
  }
  bool HasDetected() const {
    return (*self)->HasDetected();
  }
  const occ::handle< SelectMgr_EntityOwner > &DetectedOwner() const {
    return (*self)->DetectedOwner();
  }
  occ::handle< AIS_InteractiveObject > 	DetectedInteractive() const {
    return (*self)->DetectedInteractive();
  }
  bool HasNextDetected() const {
    return (*self)->HasNextDetected();
  }
  int HilightNextDetected(const occ::handle< V3d_View > &theView, const bool theToRedrawImmediate=true) {
    return (*self)->HilightNextDetected(theView, theToRedrawImmediate);
  }
  int HilightPreviousDetected(const occ::handle< V3d_View > &theView, const bool theToRedrawImmediate=true) {
    return (*self)->HilightPreviousDetected(theView, theToRedrawImmediate);
  }
  void InitDetected() {
    (*self)->InitDetected();
  }
  bool MoreDetected() const {
    return (*self)->MoreDetected();
  }
  void NextDetected() {
    (*self)->NextDetected();
  }
  occ::handle< SelectMgr_EntityOwner > 	DetectedCurrentOwner() const {
    return (*self)->DetectedCurrentOwner();
  }
  AIS_StatusOfPick 	AddSelect(const occ::handle< SelectMgr_EntityOwner > &theObject) {
    return (*self)->AddSelect(theObject);
  }
  AIS_StatusOfPick AddSelect(const occ::handle< AIS_InteractiveObject > &theObject) {
    return (*self)->AddSelect(theObject);
  }
  AIS_StatusOfPick SelectRectangle(const NCollection_Vec2< int > &thePntMin,
                                   const NCollection_Vec2< int > &thePntMax,
                                   const occ::handle< V3d_View > &theView,
                                   const AIS_SelectionScheme theSelScheme=AIS_SelectionScheme_Replace) {
    return (*self)->SelectRectangle(thePntMin, thePntMax, theView, theSelScheme);
  }
  AIS_StatusOfPick 	SelectPolygon(const NCollection_Array1< gp_Pnt2d > &thePolyline,
                                  const occ::handle< V3d_View > &theView,
                                  const AIS_SelectionScheme theSelScheme=AIS_SelectionScheme_Replace) {
    return (*self)->SelectPolygon(thePolyline, theView, theSelScheme);
  }
  AIS_StatusOfPick SelectPoint(const NCollection_Vec2< int > &thePnt,
                               const occ::handle< V3d_View > &theView,
                               const AIS_SelectionScheme theSelScheme=AIS_SelectionScheme_Replace) {
    return (*self)->SelectPoint(thePnt, theView, theSelScheme);
  }
  AIS_StatusOfPick SelectDetected(const AIS_SelectionScheme theSelScheme=AIS_SelectionScheme_Replace) {
    return (*self)->SelectDetected(theSelScheme);
  }
  Bnd_Box BoundingBoxOfSelection(const occ::handle< V3d_View > &theView) const {
    return (*self)->BoundingBoxOfSelection(theView);
  }
  AIS_StatusOfPick Select(const NCollection_Array1< occ::handle< SelectMgr_EntityOwner > > &theOwners, const AIS_SelectionScheme theSelScheme) {
    return (*self)->Select(theOwners, theSelScheme);
  }
  void FitSelected(const occ::handle< V3d_View > &theView, const double theMargin, const bool theToUpdate) {
    return (*self)->FitSelected(theView, theMargin, theToUpdate);
  }
  void FitSelected(const occ::handle< V3d_View > &theView) {
    return (*self)->FitSelected(theView);
  }
  bool ToHilightSelected() const {
    return (*self)->ToHilightSelected();
  }
  void SetToHilightSelected(const bool toHilight) {
    (*self)->SetToHilightSelected(toHilight);
  }
  bool AutomaticHilight() const {
    return (*self)->AutomaticHilight();
  }
  void SetAutomaticHilight(bool theStatus) {
    (*self)->SetAutomaticHilight(theStatus);
  }
  void SetSelected(const occ::handle< SelectMgr_EntityOwner > &theOwners, const bool theToUpdateViewer) {
    (*self)->SetSelected(theOwners, theToUpdateViewer);
  }
  void SetSelected(const occ::handle< AIS_InteractiveObject > &theObject, const bool theToUpdateViewer) {
    (*self)->SetSelected(theObject, theToUpdateViewer);
  }
  void AddOrRemoveSelected(const occ::handle< AIS_InteractiveObject > &theObject, const bool theToUpdateViewer) {
    (*self)->AddOrRemoveSelected(theObject, theToUpdateViewer);
  }
  bool SetSelectedState(const occ::handle< SelectMgr_EntityOwner > &theOwner, const bool theIsSelected) {
    return (*self)->SetSelectedState(theOwner, theIsSelected);
  }
  void HilightSelected(const bool theToUpdateViewer) {
    (*self)->HilightSelected(theToUpdateViewer);
  }
  void UnhilightSelected(const bool theToUpdateViewer) {
    (*self)->UnhilightSelected(theToUpdateViewer);
  }
  void UpdateSelected(bool theToUpdateViewer) {
    (*self)->UpdateSelected(theToUpdateViewer);
  }
  void ClearSelected(const bool theToUpdateViewer) {
    (*self)->ClearSelected(theToUpdateViewer);
  }
  void AddOrRemoveSelected(const occ::handle< SelectMgr_EntityOwner > &theOwner, const bool theToUpdateViewer) {
    (*self)->AddOrRemoveSelected(theOwner, theToUpdateViewer);
  }
  bool IsSelected(const occ::handle< SelectMgr_EntityOwner > &theOwner) const {
    return (*self)->IsSelected(theOwner);
  }
  bool IsSelected(const occ::handle< AIS_InteractiveObject > &theObj) const {
    return (*self)->IsSelected(theObj);
  }
  occ::handle< AIS_InteractiveObject > 	FirstSelectedObject() const {
    return (*self)->FirstSelectedObject();
  }
  int NbSelected() {
    return (*self)->NbSelected();
  }
  void InitSelected() {
    (*self)->InitSelected();
  }
  bool MoreSelected() const {
    return (*self)->MoreSelected();
  }
  void NextSelected() {
    (*self)->NextSelected();
  }
  occ::handle< SelectMgr_EntityOwner > 	SelectedOwner() const {
    return (*self)->SelectedOwner();
  }
  occ::handle< AIS_InteractiveObject > 	SelectedInteractive() const {
    return (*self)->SelectedInteractive();
  }
  bool HasSelectedShape() const {
    return (*self)->HasSelectedShape();
  }
  TopoDS_Shape SelectedShape() const {
    return (*self)->SelectedShape();
  }
  bool HasApplicative() const {
    return (*self)->HasApplicative();
  }
  occ::handle< Standard_Transient > Applicative() const {
    return (*self)->Applicative();
  }
  void SetSelectionModeActive(const occ::handle< AIS_InteractiveObject > &theObj,
                              const int theMode, const bool theToActivate,
                              const AIS_SelectionModesConcurrency theConcurrency=AIS_SelectionModesConcurrency_Multiple,
                              const bool theIsForce=false) {
    (*self)->SetSelectionModeActive(theObj, theMode, theToActivate, theConcurrency, theIsForce);
  }
  void Activate(const occ::handle< AIS_InteractiveObject > &theObj, const int theMode=0, const bool theIsForce=false) {
    (*self)->Activate(theObj, theMode, theIsForce);
  }
  void Activate(const int theMode, const bool theIsForce=false) {
    (*self)->Activate(theMode, theIsForce);
  }
  void Deactivate(const occ::handle< AIS_InteractiveObject > &theObj) {
    (*self)->Deactivate(theObj);
  }
  void Deactivate(const occ::handle< AIS_InteractiveObject > &theObj, const int theMode) {
    (*self)->Deactivate(theObj, theMode);
  }
  void Deactivate(const int theMode) {
    (*self)->Deactivate(theMode);
  }
  void Deactivate() {
    (*self)->Deactivate();
  }
  void ActivatedModes(const occ::handle< AIS_InteractiveObject > &anIobj, NCollection_List< int > &theList) const {
    (*self)->ActivatedModes(anIobj, theList);
  }
  void EntityOwners (occ::handle<NCollection_Shared<NCollection_IndexedMap<occ::handle<SelectMgr_EntityOwner>>>> &theOwners,
                     const occ::handle< AIS_InteractiveObject > &theIObj,
                     const int theMode=-1) const {
    (*self)->EntityOwners(theOwners, theIObj, theMode);
  }
  SelectMgr_FilterType FilterType() const {
    return (*self)->FilterType();
  }
  void SetFilterType(const SelectMgr_FilterType theFilterType) {
    (*self)->SetFilterType(theFilterType);
  }
  const NCollection_List< occ::handle< SelectMgr_Filter > > &Filters() const {
    return (*self)->Filters();
  }
  const occ::handle< SelectMgr_AndOrFilter > &GlobalFilter() const {
    return (*self)->GlobalFilter();
  }
  void AddFilter(const occ::handle< SelectMgr_Filter > &theFilter) {
    (*self)->AddFilter(theFilter);
  }
  void RemoveFilter(const occ::handle< SelectMgr_Filter > &theFilter) {
    (*self)->RemoveFilter(theFilter);
  }
  void RemoveFilters() {
    (*self)->RemoveFilters();
  }
  SelectMgr_PickingStrategy PickingStrategy() const {
    return (*self)->PickingStrategy();
  }
  void SetPickingStrategy(const SelectMgr_PickingStrategy theStrategy) {
    (*self)->SetPickingStrategy(theStrategy);
  }
  const occ::handle< Prs3d_Drawer > &DefaultDrawer() const {
    return (*self)->DefaultDrawer();
  }
  void SetDefaultDrawer(const occ::handle< Prs3d_Drawer > &theDrawer) {
    (*self)->SetDefaultDrawer(theDrawer);
  }
  const occ::handle< V3d_Viewer > &CurrentViewer() const {
    return (*self)->CurrentViewer();
  }
  const occ::handle< SelectMgr_SelectionManager > &SelectionManager() const{
    return (*self)->SelectionManager();
  }
  const occ::handle< PrsMgr_PresentationManager > &MainPrsMgr() const {
    return (*self)->MainPrsMgr();
  }
  const occ::handle< StdSelect_ViewerSelector3d > &MainSelector() const {
    return (*self)->MainSelector();
  }
  void UpdateCurrentViewer() {
    (*self)->UpdateCurrentViewer();
  }
  void DisplayedObjects(NCollection_List< occ::handle< AIS_InteractiveObject > > &aListOfIO) const {
    (*self)->DisplayedObjects(aListOfIO);
  }
  void DisplayedObjects(const AIS_KindOfInteractive theWhichKind,
                        const int theWhichSignature,
                        NCollection_List< occ::handle< AIS_InteractiveObject > > &theListOfIO) const {
    (*self)->DisplayedObjects(theWhichKind, theWhichSignature, theListOfIO);
  }
  void ErasedObjects(NCollection_List< occ::handle< AIS_InteractiveObject > > &theListOfIO) const {
    (*self)->ErasedObjects(theListOfIO);
  }
  void ErasedObjects(const AIS_KindOfInteractive theWhichKind,
                     const int theWhichSignature,
                     NCollection_List< occ::handle< AIS_InteractiveObject > > &theListOfIO) const {
    (*self)->ErasedObjects(theWhichKind, theWhichSignature, theListOfIO);
  }
  void ObjectsByDisplayStatus(const PrsMgr_DisplayStatus theStatus,
                               NCollection_List< occ::handle< AIS_InteractiveObject > > &theListOfIO) const {
    (*self)->ObjectsByDisplayStatus(theStatus, theListOfIO);
  }
  void ObjectsByDisplayStatus(const AIS_KindOfInteractive WhichKind,
                              const int WhichSignature,
                              const PrsMgr_DisplayStatus theStatus,
                              NCollection_List< occ::handle< AIS_InteractiveObject > > &theListOfIO) const {
    (*self)->ObjectsByDisplayStatus(WhichKind, WhichSignature, theStatus, theListOfIO);
  }
  void ObjectsInside(NCollection_List< occ::handle< AIS_InteractiveObject > > &aListOfIO,
                     const AIS_KindOfInteractive WhichKind=AIS_KindOfInteractive_None,
                     const int WhichSignature=-1) const {
    (*self)->ObjectsInside(aListOfIO, WhichKind, WhichSignature);
  }
  NCollection_DataMap< occ::handle< AIS_InteractiveObject >, occ::handle< AIS_GlobalStatus > >::Iterator ObjectIterator() const {
    return (*self)->ObjectIterator();
  }
  void RebuildSelectionStructs() {
    (*self)->RebuildSelectionStructs();
  }
  void Disconnect(const occ::handle< AIS_InteractiveObject > &theAssembly, const occ::handle< AIS_InteractiveObject > &theObjToDisconnect=nullptr) {
    (*self)->Disconnect(theAssembly, theObjToDisconnect);
  }
  void ObjectsForView(NCollection_List< occ::handle< AIS_InteractiveObject > > &theListOfIO,
                      const occ::handle< V3d_View > &theView,
                      const bool theIsVisibleInView,
                      const PrsMgr_DisplayStatus theStatus=PrsMgr_DisplayStatus_None) const {
    (*self)->ObjectsForView(theListOfIO, theView, theIsVisibleInView, theStatus);
  }
  gp_Pnt GravityPoint(const occ::handle< V3d_View > &theView) const {
    return (*self)->GravityPoint(theView);
  }
  void DisplayActiveSensitive(const occ::handle< V3d_View > &aView) {
    (*self)->DisplayActiveSensitive(aView);
  }
  void ClearActiveSensitive(const occ::handle< V3d_View > &aView) {
    (*self)->ClearActiveSensitive(aView);
  }
  void DisplayActiveSensitive(const occ::handle< AIS_InteractiveObject > &anObject, const occ::handle< V3d_View > &aView) {
    (*self)->DisplayActiveSensitive(anObject, aView);
  }
  void SetLocalAttributes(const occ::handle< AIS_InteractiveObject > &theIObj, const occ::handle< Prs3d_Drawer > &theDrawer, const bool theToUpdateViewer) {
    (*self)->SetLocalAttributes(theIObj, theDrawer, theToUpdateViewer);
  }
  void UnsetLocalAttributes(const occ::handle< AIS_InteractiveObject > &theIObj, const bool theToUpdateViewer) {
    (*self)->UnsetLocalAttributes(theIObj, theToUpdateViewer);
  }
  void SetCurrentFacingModel(const occ::handle< AIS_InteractiveObject > &aniobj, const Aspect_TypeOfFacingModel aModel=Aspect_TOFM_BOTH_SIDE) {
    (*self)->SetCurrentFacingModel(aniobj, aModel);
  }
  bool HasColor(const occ::handle< AIS_InteractiveObject > &aniobj) const {
    return (*self)->HasColor(aniobj);
  }
  void Color(const occ::handle< AIS_InteractiveObject > &aniobj, Quantity_Color &acolor) const {
    (*self)->Color(aniobj, acolor);
  }
  void SetColor(const occ::handle< AIS_InteractiveObject > &theIObj, const Quantity_Color &theColor, const bool theToUpdateViewer) {
    (*self)->SetColor(theIObj, theColor, theToUpdateViewer);
  }
  void UnsetColor(const occ::handle< AIS_InteractiveObject > &theIObj, const bool theToUpdateViewer) {
    (*self)->UnsetColor(theIObj, theToUpdateViewer);
  }
  double Width(const occ::handle< AIS_InteractiveObject > &aniobj) const {
    return (*self)->Width(aniobj);
  }
  void SetWidth(const occ::handle< AIS_InteractiveObject > &theIObj, const double theValue, const bool theToUpdateViewer) {
    (*self)->SetWidth(theIObj, theValue, theToUpdateViewer);
  }
  void UnsetWidth(const occ::handle< AIS_InteractiveObject > &theIObj, const bool theToUpdateViewer) {
    (*self)->UnsetWidth(theIObj, theToUpdateViewer);
  }
  void SetMaterial(const occ::handle< AIS_InteractiveObject > &theIObj, const Graphic3d_MaterialAspect &theMaterial, const bool theToUpdateViewer) {
    (*self)->SetMaterial(theIObj, theMaterial, theToUpdateViewer);
  }
  void UnsetMaterial(const occ::handle< AIS_InteractiveObject > &theIObj, const bool theToUpdateViewer) {
    (*self)->UnsetMaterial(theIObj, theToUpdateViewer);
  }
  void SetTransparency(const occ::handle< AIS_InteractiveObject > &theIObj, const double theValue, const bool theToUpdateViewer) {
    (*self)->SetTransparency(theIObj, theValue, theToUpdateViewer);
  }
  void UnsetTransparency(const occ::handle< AIS_InteractiveObject > &theIObj, const bool theToUpdateViewer) {
    (*self)->UnsetTransparency(theIObj, theToUpdateViewer);
  }
  void SetPolygonOffsets(const occ::handle< AIS_InteractiveObject > &theIObj, const int theMode,
                         const float theFactor, const float theUnits,
                         const bool theToUpdateViewer) {
    (*self)->SetPolygonOffsets(theIObj, theMode, theFactor, theUnits, theToUpdateViewer);
  }
  bool HasPolygonOffsets(const occ::handle< AIS_InteractiveObject > &anObj) const {
    return (*self)->HasPolygonOffsets(anObj);
  }
  void PolygonOffsets(const occ::handle< AIS_InteractiveObject > &anObj, int &aMode, float &aFactor, float &aUnits) const {
    (*self)->PolygonOffsets(anObj, aMode, aFactor, aUnits);
  }
  void SetTrihedronSize(const double theSize, const bool theToUpdateViewer) {
    (*self)->SetTrihedronSize(theSize, theToUpdateViewer);
  }
  double TrihedronSize() const {
    return (*self)->TrihedronSize();
  }
  void SetPlaneSize(const double theSizeX, const double theSizeY, const bool theToUpdateViewer) {
    (*self)->SetPlaneSize(theSizeX, theSizeY, theToUpdateViewer);
  }
  void SetPlaneSize(const double theSize, const bool theToUpdateViewer) {
    (*self)->SetPlaneSize(theSize, theToUpdateViewer);
  }
  bool PlaneSize(double &XSize, double &YSize) const {
    return (*self)->PlaneSize(XSize, YSize);
  }
  void SetDeviationCoefficient(const occ::handle< AIS_InteractiveObject > &theIObj, const double theCoefficient, const bool theToUpdateViewer) {
    (*self)->SetDeviationCoefficient(theIObj, theCoefficient, theToUpdateViewer);
  }
  void SetDeviationAngle(const occ::handle< AIS_InteractiveObject > &theIObj, const double theAngle, const bool theToUpdateViewer) {
    (*self)->SetDeviationAngle(theIObj, theAngle, theToUpdateViewer);
  }
  void SetAngleAndDeviation(const occ::handle< AIS_InteractiveObject > &theIObj, const double theAngle, const bool theToUpdateViewer) {
    (*self)->SetAngleAndDeviation(theIObj, theAngle, theToUpdateViewer);
  }
  void SetDeviationCoefficient(const double theCoefficient) {
    (*self)->SetDeviationCoefficient(theCoefficient);
  }
  double DeviationCoefficient() const {
    return (*self)->DeviationCoefficient();
  }
  void SetDeviationAngle(const double theAngle) {
    (*self)->SetDeviationAngle(theAngle);
  }
  double DeviationAngle() const {
    return (*self)->DeviationAngle();
  }
  const occ::handle< Prs3d_LineAspect > &HiddenLineAspect() const {
    return (*self)->HiddenLineAspect();
  }
  void SetHiddenLineAspect(const occ::handle< Prs3d_LineAspect > &theAspect) const {
    (*self)->SetHiddenLineAspect(theAspect);
  }
  bool DrawHiddenLine() const {
    return (*self)->DrawHiddenLine();
  }
  void EnableDrawHiddenLine() const {
    (*self)->EnableDrawHiddenLine();
  }
  void DisableDrawHiddenLine() const {
    (*self)->DisableDrawHiddenLine();
  }
  void SetIsoNumber(const int NbIsos, const AIS_TypeOfIso WhichIsos=AIS_TOI_Both) {
    (*self)->SetIsoNumber(NbIsos, WhichIsos);
  }
  int IsoNumber(const AIS_TypeOfIso WhichIsos=AIS_TOI_Both) {
    return (*self)->IsoNumber(WhichIsos);
  }
  void IsoOnPlane(const bool theToSwitchOn) {
    (*self)->IsoOnPlane(theToSwitchOn);
  }
  bool IsoOnPlane() const {
    return (*self)->IsoOnPlane();
  }
  void IsoOnTriangulation(const bool theIsEnabled, const occ::handle< AIS_InteractiveObject > &theObject) {
    (*self)->IsoOnTriangulation(theIsEnabled, theObject);
  }
  void IsoOnTriangulation(const bool theToSwitchOn) {
    (*self)->IsoOnTriangulation(theToSwitchOn);
  }
  bool IsoOnTriangulation() const {
    return (*self)->IsoOnTriangulation();
  }
  const Quantity_Color &SubIntensityColor() const {
    return (*self)->SubIntensityColor();
  }
  void SetSubIntensityColor(const Quantity_Color &theColor) {
    (*self)->SetSubIntensityColor(theColor);
  }
  void SubIntensityOn(const occ::handle< AIS_InteractiveObject > &theIObj, const bool theToUpdateViewer) {
    (*self)->SubIntensityOn(theIObj, theToUpdateViewer);
  }
  void SubIntensityOff(const occ::handle< AIS_InteractiveObject > &theIObj, const bool theToUpdateViewer) {
    (*self)->SubIntensityOff(theIObj, theToUpdateViewer);
  }
  const occ::handle< AIS_Selection > &Selection() const {
    return (*self)->Selection();
  }
  void SetSelection(const occ::handle< AIS_Selection > &theSelection) {
    (*self)->SetSelection(theSelection);
  }
}  
