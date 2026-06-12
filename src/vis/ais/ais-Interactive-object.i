%typemap(cin) bool ":bool";
%typemap(cout) bool ":bool";
%typemap(ctype) bool "bool";
%typemap(out) bool "$result = (bool)$1;";
%typemap(lispclass) bool "cl:boolean";
%typemap(lispclass) float "cl:single-float";
%typemap(lispclass) double "cl:double-float";

%{
#include <PrsMgr_PresentableObject.hxx>
typedef occ::handle<PrsMgr_PresentableObject> Handle_PrsMgr_PresentableObject;
%}

%rename(PrsMgr_PresentableObject) Handle_PrsMgr_PresentableObject;

%nodefaultdtor Handle_PrsMgr_PresentableObject;
class Handle_PrsMgr_PresentableObject
{
  Handle_PrsMgr_PresentableObject()=0;
};

%extend Handle_PrsMgr_PresentableObject
{
  NCollection_Sequence< occ::handle< PrsMgr_Presentation > >  &Presentations() {
    return (*self)->Presentations();
  }
  Graphic3d_ZLayerId ZLayer () {
    return (*self)->ZLayer();
  }
  void SetZLayer(const Graphic3d_ZLayerId theLayerId) {
    (*self)->SetZLayer(theLayerId);
  }
  bool IsMutable() const {
    return (*self)->IsMutable();
  }
  void SetMutable(const bool theIsMutable) {
    (*self)->SetMutable(theIsMutable);
  }
  const occ::handle< Graphic3d_ViewAffinity > &ViewAffinity() const {
    return (*self)->ViewAffinity();
  }
  bool HasDisplayMode() const {
    return (*self)->HasDisplayMode();
  }
  int DisplayMode() const {
    return (*self)->DisplayMode();
  }
  void SetDisplayMode(const int theMode) {
    (*self)->SetDisplayMode(theMode);
  }
  void UnsetDisplayMode() {
    (*self)->UnsetDisplayMode();
  }
  bool HasHilightMode() const {
    return (*self)->HasHilightMode();
  }
  int HilightMode() const {
    return (*self)->HilightMode();
  }
  void SetHilightMode(const int theMode) {
    (*self)->SetHilightMode(theMode);
  }
  void UnsetHilightMode() {
    (*self)->UnsetHilightMode();
  }
  bool AcceptDisplayMode(const int theMode) const {
    return (*self)->AcceptDisplayMode(theMode);
  }
  int DefaultDisplayMode() const {
    return (*self)->DefaultDisplayMode();
  }
  bool ToBeUpdated(bool theToIncludeHidden=false) const {
    return (*self)->ToBeUpdated(theToIncludeHidden);
  }
  void SetToUpdate(int theMode) {
    (*self)->SetToUpdate(theMode);
  }
  void SetToUpdate() {
    (*self)->SetToUpdate();
  }
  bool IsInfinite() const {
    return (*self)->IsInfinite();
  }
  void SetInfiniteState(const bool theFlag=true) {
    (*self)->SetInfiniteState(theFlag);
  }
  PrsMgr_TypeOfPresentation3d TypeOfPresentation3d() const {
    return (*self)->TypeOfPresentation3d();
  }
  void SetTypeOfPresentation(const PrsMgr_TypeOfPresentation3d theType) {
    (*self)->SetTypeOfPresentation(theType);
  }
  PrsMgr_DisplayStatus 	DisplayStatus() const {
    return (*self)->DisplayStatus();
  }
  const occ::handle< Prs3d_Drawer > &Attributes() const {
    return (*self)->Attributes();
  }
  void SetAttributes(const occ::handle< Prs3d_Drawer > &theDrawer) {
    (*self)->SetAttributes(theDrawer);
  }
  const occ::handle< Prs3d_Drawer > &HilightAttributes() const {
    return (*self)->HilightAttributes();
  }
  void SetHilightAttributes(const occ::handle< Prs3d_Drawer > &theDrawer) {
    (*self)->SetHilightAttributes(theDrawer);
  }
  const occ::handle< Prs3d_Drawer > &DynamicHilightAttributes() const {
    return (*self)->DynamicHilightAttributes();
  }
  void SetDynamicHilightAttributes(const occ::handle< Prs3d_Drawer > &theDrawer) {
    (*self)->SetDynamicHilightAttributes(theDrawer);
  }
  void UnsetHilightAttributes() {
    (*self)->UnsetHilightAttributes();
  }
  void SynchronizeAspects() {
    (*self)->SynchronizeAspects();
  }
  const occ::handle< Graphic3d_TransformPers > &TransformPersistence() const {
    return (*self)->TransformPersistence();
  }
  const occ::handle< TopLoc_Datum3D > &LocalTransformationGeom() const {
    return (*self)->LocalTransformationGeom();
  }
  void SetLocalTransformation(const gp_Trsf &theTrsf) {
    (*self)->SetLocalTransformation(theTrsf);
  }
  void SetLocalTransformation(const occ::handle< TopLoc_Datum3D > &theTrsf) {
    (*self)->SetLocalTransformation(theTrsf);
  }
  bool HasTransformation() const {
    return (*self)->HasTransformation();
  }
  const occ::handle< TopLoc_Datum3D > &TransformationGeom() const {
    return (*self)->TransformationGeom();
  }
  const gp_Trsf &LocalTransformation() const {
    return (*self)->LocalTransformation();
  }
  const gp_Trsf &Transformation() const {
    return (*self)->Transformation();
  }
  const gp_GTrsf &InversedTransformation() const {
    return (*self)->InversedTransformation(); 
  }
  const occ::handle< TopLoc_Datum3D > &CombinedParentTransformation() const {
    return (*self)->CombinedParentTransformation();
  }
  void ResetTransformation() {
    (*self)->ResetTransformation();
  }
  void UpdateTransformation() {
    (*self)->UpdateTransformation();
  }
  void RecomputeTransformation(const occ::handle< Graphic3d_Camera > &theProjector) {
    (*self)->RecomputeTransformation(theProjector);
  }
  const occ::handle< Graphic3d_SequenceOfHClipPlane > &ClipPlanes() const {
    return (*self)->ClipPlanes();
  }
  void SetClipPlanes(const occ::handle< Graphic3d_SequenceOfHClipPlane > &thePlanes) {
    (*self)->SetClipPlanes(thePlanes);
  }
  void AddClipPlane(const occ::handle< Graphic3d_ClipPlane > &thePlane) {
    (*self)->AddClipPlane(thePlane);
  }
  void RemoveClipPlane(const occ::handle< Graphic3d_ClipPlane > &thePlane) {
    (*self)->RemoveClipPlane(thePlane);
  }
  PrsMgr_PresentableObject *Parent() const {
    return (*self)->Parent();
  }
  const NCollection_List< occ::handle< PrsMgr_PresentableObject > > &Children() const {
    return (*self)->Children();
  }
  void AddChild(const occ::handle< PrsMgr_PresentableObject > &theObject) {
    (*self)->AddChild(theObject);
  }
  void AddChildWithCurrentTransformation(const occ::handle< PrsMgr_PresentableObject > &theObject) {
    (*self)->AddChildWithCurrentTransformation(theObject);
  }
  void RemoveChild(const occ::handle< PrsMgr_PresentableObject > &theObject) {
    (*self)->RemoveChild(theObject);
  }
  void RemoveChildWithRestoreTransformation(const occ::handle< PrsMgr_PresentableObject > &theObject) {
    (*self)->RemoveChildWithRestoreTransformation(theObject);
  }
  bool HasOwnPresentations() const {
    return (*self)->HasOwnPresentations();
  }
  void BoundingBox(Bnd_Box &theBndBox) {
    (*self)->BoundingBox(theBndBox);
  }
  void SetIsoOnTriangulation(const bool theIsEnabled) {
    (*self)->SetIsoOnTriangulation(theIsEnabled);
  }
  Aspect_TypeOfFacingModel CurrentFacingModel() const {
    return (*self)->CurrentFacingModel();
  }
  void SetCurrentFacingModel(const Aspect_TypeOfFacingModel theModel=Aspect_TOFM_BOTH_SIDE) {
    (*self)->SetCurrentFacingModel(theModel);
  }
  bool HasColor() const {
    return (*self)->HasColor();
  }
  void Color(Quantity_Color &theColor) const {
    (*self)->Color(theColor);
  }
  void SetColor(const Quantity_Color &theColor) {
    (*self)->SetColor(theColor);
  }
  void UnsetColor() {
    (*self)->UnsetColor();
  }
  bool HasWidth() const {
    return (*self)->HasWidth();
  }
  double Width() const {
    return (*self)->Width();
  }
  void SetWidth(const double theWidth) {
    (*self)->SetWidth(theWidth);
  }
  void UnsetWidth() {
    (*self)->UnsetWidth();
  }
  bool HasMaterial() const {
    return (*self)->HasMaterial();
  }
  Graphic3d_NameOfMaterial Material() const {
    return (*self)->Material();
  }
  void SetMaterial(const Graphic3d_MaterialAspect &aName) {
    (*self)->SetMaterial(aName);
  }
  void UnsetMaterial() {
    (*self)->UnsetMaterial();
  }
  bool IsTransparent() const {
    return (*self)->IsTransparent();
  }
  double Transparency() const {
    return (*self)->Transparency();
  }
  void SetTransparency(const double aValue=0.6) {
    (*self)->SetTransparency(aValue);
  }
  void UnsetTransparency() {
    (*self)->UnsetTransparency();
  }
  bool HasPolygonOffsets() const {
    return (*self)->HasPolygonOffsets();
  }
  void PolygonOffsets(int &aMode, float &aFactor, float &aUnits) const {
    (*self)->PolygonOffsets(aMode, aFactor, aUnits);
  }
  void SetPolygonOffsets(const int aMode, const float aFactor=1.0, const float aUnits=0.0) {
    (*self)->SetPolygonOffsets(aMode, aFactor, aUnits);
  }
  void UnsetAttributes() {
    (*self)->UnsetAttributes();
  }
}
%{
#include <SelectMgr_SelectableObject.hxx>

typedef occ::handle<SelectMgr_SelectableObject> Handle_SelectMgr_SelectableObject;
typedef occ::handle<SelectMgr_EntityOwner> Handle_SelectMgr_EntityOwner;
%}

%rename(SelectMgr_SelectableObject) Handle_SelectMgr_SelectableObject;

%nodefaultdtor Handle_SelectMgr_SelectableObject;
class Handle_SelectMgr_SelectableObject
{
  Handle_SelectMgr_SelectableObject()=0;
};

%extend Handle_SelectMgr_SelectableObject
{
  void Delete() {
    self->~Handle_SelectMgr_SelectableObject();
  }
  bool AcceptShapeDecomposition() {
    return (*self)->AcceptShapeDecomposition();
  }
  bool AcceptShapeDecomposition() const {
    return (*self)->AcceptShapeDecomposition();
  }
  void RecomputePrimitives() {
    (*self)->RecomputePrimitives();
  }
  void RecomputePrimitives(const int theMode) {
    (*self)->RecomputePrimitives(theMode);
  }
  void AddSelection(const occ::handle< SelectMgr_Selection > &aSelection, const int aMode) {
    (*self)->AddSelection(aSelection, aMode);
  }
  void ClearSelections(const bool update=false) {
    (*self)->ClearSelections(update);
  }
  const occ::handle< SelectMgr_Selection > &Selection(const int theMode) const {
    return (*self)->Selection(theMode);
  }
  bool HasSelection(const int theMode) const {
    return (*self)->HasSelection(theMode);
  }
  const NCollection_Sequence< occ::handle< SelectMgr_Selection > > &Selections() const {
    return (*self)->Selections();
  }
  void ResetTransformation() {
    (*self)->ResetTransformation();
  }
  void UpdateTransformation() {
    (*self)->UpdateTransformation();
  }
  void UpdateTransformations(const occ::handle< SelectMgr_Selection > &aSelection) {
    (*self)->UpdateTransformations(aSelection);
  }
  void HilightSelected(const occ::handle< PrsMgr_PresentationManager > &thePrsMgr,
                       const NCollection_Sequence< occ::handle< SelectMgr_EntityOwner > > &theSeq) {
    (*self)->HilightSelected(thePrsMgr, theSeq);
  }
  void ClearSelected() {
    (*self)->ClearSelected();
  }
  void ClearDynamicHighlight(const occ::handle< PrsMgr_PresentationManager > &theMgr) {
    (*self)->ClearDynamicHighlight(theMgr);
  }
  void HilightOwnerWithColor(const occ::handle< PrsMgr_PresentationManager > &thePM,
                             const occ::handle< Prs3d_Drawer > &theStyle,
                             const occ::handle< SelectMgr_EntityOwner > &theOwner) {
    (*self)->HilightOwnerWithColor(thePM, theStyle, theOwner);
  }
  bool IsAutoHilight() const {
    return (*self)->IsAutoHilight();
  }
  void SetAutoHilight(const bool theAutoHilight) {
    (*self)->SetAutoHilight(theAutoHilight);
  }
  occ::handle< Prs3d_Presentation > GetHilightPresentation(const occ::handle< PrsMgr_PresentationManager > &thePrsMgr) {
    return (*self)->GetHilightPresentation(thePrsMgr);
  }
  occ::handle< Prs3d_Presentation > GetSelectPresentation(const occ::handle< PrsMgr_PresentationManager > &thePrsMgr) {
    return (*self)->GetSelectPresentation(thePrsMgr);
  }
  void ErasePresentations(bool theToRemove) {
    (*self)->ErasePresentations(theToRemove);
  }
  void SetZLayer(const Graphic3d_ZLayerId theLayerId) {
    (*self)->SetZLayer(theLayerId);
  }
  void UpdateSelection(const int theMode=-1) {
    (*self)->UpdateSelection(theMode);
  }
  void SetAssemblyOwner(const occ::handle< SelectMgr_EntityOwner > &theOwner, const int theMode=-1) {
    (*self)->SetAssemblyOwner(theOwner, theMode);
  }
  Bnd_Box BndBoxOfSelected(const occ::handle< NCollection_Shared< NCollection_IndexedMap< occ::handle< SelectMgr_EntityOwner > > > > &theOwners) {
    return (*self)->BndBoxOfSelected(theOwners);
  }
  int GlobalSelectionMode() const {
    return (*self)->GlobalSelectionMode();
  }
  occ::handle< SelectMgr_EntityOwner > GlobalSelOwner() const  {
    return (*self)->GlobalSelOwner();
  }
  const occ::handle< SelectMgr_EntityOwner > & GetAssemblyOwner() const {
    return (*self)->GetAssemblyOwner();
  }
} 

%{
#include <AIS_InteractiveObject.hxx>

typedef occ::handle<AIS_InteractiveObject> Handle_AIS_InteractiveObject;
%}

%rename(AIS_InteractiveObject) Handle_AIS_InteractiveObject;

%nodefaultdtor Handle_AIS_InteractiveObject;
class Handle_AIS_InteractiveObject
{
  Handle_AIS_InteractiveObject()=0;
};

%extend Handle_AIS_InteractiveObject
{
  AIS_KindOfInteractive Type() {
    return (*self)->Type();
  }
  int Signature() const{
    return (*self)->Signature();
  }
  void Redisplay(const bool AllModes=false) {
    (*self)->Redisplay(AllModes);
  }
  bool HasInteractiveContext() const {
    return (*self)->HasInteractiveContext();
  }
  AIS_InteractiveContext *InteractiveContext() const {
    return (*self)->InteractiveContext();
  }
  void SetContext(const occ::handle< AIS_InteractiveContext > &aCtx) {
    (*self)->SetContext(aCtx);
  }
  bool HasOwner() const {
    return (*self)->HasOwner();
  }
  const occ::handle< Standard_Transient > &GetOwner() const {
    return (*self)->GetOwner();
  }
  void SetOwner(const occ::handle< Standard_Transient > &theApplicativeEntity) {
    (*self)->SetOwner(theApplicativeEntity);
  }
  void ClearOwner() {
    (*self)->ClearOwner();
  }
  bool ProcessDragging(const occ::handle< AIS_InteractiveContext > &theCtx,
                       const occ::handle< V3d_View > &theView,
                       const occ::handle< SelectMgr_EntityOwner > &theOwner,
                       const NCollection_Vec2< int > &theDragFrom,
                       const NCollection_Vec2< int > &theDragTo,
                       const AIS_DragAction theAction) {
    return (*self)->ProcessDragging(theCtx, theView, theOwner, theDragFrom, theDragTo, theAction);
  }
  occ::handle< AIS_InteractiveContext > GetContext() const {
    return (*self)->GetContext();
  }
  bool HasPresentation() const {
    return (*self)->HasPresentation();
  }
  occ::handle< Prs3d_Presentation > Presentation() const {
    return (*self)->Presentation();
  }
} 

%{
#include <AIS_Axis.hxx>

typedef occ::handle<AIS_Axis> Handle_AIS_Axis;
%}

%rename(AIS_Axis) Handle_AIS_Axis;

%nodefaultdtor Handle_AIS_Axis;
class Handle_AIS_Axis
{
  Handle_AIS_Axis()=0;
};

%extend Handle_AIS_Axis
{
  Handle_AIS_Axis(const occ::handle< Geom_Line > &aComponent) {
    return new Handle_AIS_Axis(new AIS_Axis(aComponent));
  }
  Handle_AIS_Axis(const occ::handle< Geom_Axis2Placement > &aComponent, const AIS_TypeOfAxis anAxisType) {
    return new Handle_AIS_Axis(new AIS_Axis(aComponent, anAxisType));
  }
  Handle_AIS_Axis(const occ::handle< Geom_Axis1Placement > &anAxis) {
    return new Handle_AIS_Axis(new AIS_Axis(anAxis));
  }
  Handle_AIS_Axis(const gp_Ax1 &theAxis, const double theLength=-1) {
    return new Handle_AIS_Axis(new AIS_Axis(theAxis, theLength));
  }
  void Delete() {
    self->~Handle_AIS_Axis();
  }  
  const occ::handle< Geom_Line > & Component() {
    return (*self)->Component();
  }
  void SetComponent(const occ::handle< Geom_Line > &aComponent) {
    (*self)->SetComponent(aComponent);
  }
  const occ::handle< Geom_Axis2Placement > &Axis2Placement() {
    return (*self)->Axis2Placement();
  }
  void SetAxis2Placement(const occ::handle< Geom_Axis2Placement > &aComponent, const AIS_TypeOfAxis anAxisType) {
    (*self)->SetAxis2Placement(aComponent, anAxisType);
  }
  void SetAxis1Placement(const occ::handle< Geom_Axis1Placement > &anAxis) {
    (*self)->SetAxis1Placement(anAxis);
  }
  AIS_TypeOfAxis TypeOfAxis() {
    return (*self)->TypeOfAxis();
  }
  void SetTypeOfAxis(const AIS_TypeOfAxis theTypeAxis) {
    (*self)->SetTypeOfAxis(theTypeAxis);
  }
  bool IsXYZAxis() {
    return (*self)->IsXYZAxis();
  }
  bool AcceptDisplayMode(const int aMode) {
    return (*self)->AcceptDisplayMode(aMode);
  }
  int Signature() {
    return (*self)->Signature();
  }
  AIS_KindOfInteractive Type() {
    return (*self)->Type();
  }
  void SetColor(const Quantity_Color &aColor) {
    (*self)->SetColor(aColor);
  }
  void SetWidth(const double aValue) {
    (*self)->SetWidth(aValue);
  }
  void SetDisplayAspect(const occ::handle< Prs3d_LineAspect > &theNewDatumAspect) {
    (*self)->SetDisplayAspect(theNewDatumAspect);
  }
  void UnsetColor() {
    (*self)->UnsetColor();
  }
  void UnsetWidth() {
    (*self)->UnsetWidth();
  }
}   

%{
#include <AIS_CameraFrustum.hxx>
%}

class AIS_CameraFrustum {
 public:
  AIS_CameraFrustum ();
  void SetCameraFrustum(const occ::handle< Graphic3d_Camera > &theCamera);
  virtual void SetColor(const Quantity_Color &theColor) override;
  virtual void UnsetColor() override;
  virtual void UnsetTransparency() override;
  virtual bool 	AcceptDisplayMode(const int theMode) const override;
};

%{
#include <AIS_Circle.hxx>

typedef occ::handle<AIS_Circle> Handle_AIS_Circle;
%}

%rename(AIS_Circle) Handle_AIS_Circle;

%nodefaultdtor Handle_AIS_Circle;
class Handle_AIS_Circle
{
  Handle_AIS_Circle()=0;
};

%extend Handle_AIS_Circle
{
  Handle_AIS_Circle(const occ::handle< Geom_Circle > &aCircle) {
    return new Handle_AIS_Circle(new AIS_Circle(aCircle));
  }
  Handle_AIS_Circle(const occ::handle< Geom_Circle > &theCircle,
                     const double theUStart, const double theUEnd,
                     const bool theIsFilledCircleSens=false) {
    return new Handle_AIS_Circle(new AIS_Circle(theCircle, theUStart, theUEnd, theIsFilledCircleSens));
  }
  void Delete() {
    self->~Handle_AIS_Circle();
  }    
  int Signature() const {
    return (*self)->Signature();
  }
  AIS_KindOfInteractive Type() const {
    return (*self)->Type();
  }
  const occ::handle< Geom_Circle > &Circle() const {
    return (*self)->Circle();
  }
  void Parameters(double &theU1, double &theU2) const {
    (*self)->Parameters(theU1, theU2);
  }
  void SetCircle(const occ::handle< Geom_Circle > &theCircle) {
    (*self)->SetCircle(theCircle);
  }
  void SetFirstParam(const double theU) {
    (*self)->SetFirstParam(theU);
  }
  void SetLastParam(const double theU) {
    (*self)->SetLastParam(theU);
  }
  void SetColor(const Quantity_Color &aColor) {
    (*self)->SetColor(aColor);
  }
  void SetWidth(const double aValue) {
    (*self)->SetWidth(aValue);
  }
  void UnsetColor() {
    (*self)->UnsetColor();
  }
  void UnsetWidth() {
    (*self)->UnsetWidth();
  }
  bool IsFilledCircleSens() const {
    return (*self)->IsFilledCircleSens();
  }
  void SetFilledCircleSens(const bool theIsFilledCircleSens) {
    (*self)->SetFilledCircleSens(theIsFilledCircleSens);
  }
}
  
%{
#include <AIS_ColorScale.hxx>

typedef occ::handle<AIS_ColorScale> Handle_AIS_ColorScale;
%}

%rename(AIS_ColorScale) Handle_AIS_ColorScale;

%nodefaultdtor Handle_AIS_ColorScale;
class Handle_AIS_ColorScale : public Handle_AIS_InteractiveObject
{
  Handle_AIS_ColorScale()=0;
};

%extend Handle_AIS_ColorScale
{
  Handle_AIS_ColorScale() {
    return new Handle_AIS_ColorScale(new AIS_ColorScale());
  }
  void Delete() {
    self->~Handle_AIS_ColorScale();
  }
  bool FindColor(const double theValue, Quantity_Color &theColor) const {
    return (*self)->FindColor(theValue, theColor);
  }
  double GetMin() const {
    return (*self)->GetMin();
  }
  void SetMin(const double theMin) {
    (*self)->SetMin(theMin);
  }
  double GetMax() const{
    return (*self)->GetMax();
  }
  void SetMax(const double theMax) {
    (*self)->SetMax(theMax);
  }
  void GetRange(double &theMin, double &theMax) const{
    (*self)->GetRange(theMin, theMax);
  }
  void SetRange(const double theMin, const double theMax) {
    (*self)->SetRange(theMin, theMax);
  }
  double HueMin() const {
    return (*self)->HueMin();
  }
  double HueMax() const {
    return (*self)->HueMax();
  }
  void HueRange(double &theMinAngle, double &theMaxAngle) const {
    (*self)->HueRange(theMinAngle, theMaxAngle);
  }
  void SetHueRange(const double theMinAngle, const double theMaxAngle){
    (*self)->SetHueRange(theMinAngle, theMaxAngle);
  }
  void ColorRange(Quantity_Color &theMinColor, Quantity_Color &theMaxColor) const {
    (*self)->ColorRange(theMinColor, theMaxColor);
  }
  void SetColorRange(const Quantity_Color &theMinColor, const Quantity_Color &theMaxColor) {
    (*self)->SetColorRange(theMinColor, theMaxColor);
  }
  Aspect_TypeOfColorScaleData GetLabelType() const {
    return (*self)->GetLabelType();
  }
  void SetLabelType (const Aspect_TypeOfColorScaleData theType) {
    (*self)->SetLabelType(theType);
  }
  Aspect_TypeOfColorScaleData GetColorType() const {
    return (*self)->GetColorType();
  }
  void SetColorType(const Aspect_TypeOfColorScaleData theType) {
    (*self)->SetColorType(theType);
  }
  int GetNumberOfIntervals() const {
    return (*self)->GetNumberOfIntervals();
  }
  void SetNumberOfIntervals(const int theNum) {
    (*self)->SetNumberOfIntervals(theNum);
  }
  const TCollection_ExtendedString &GetTitle() const {
    return (*self)->GetTitle();
  }
  void SetTitle(const TCollection_ExtendedString &theTitle) {
    (*self)->SetTitle(theTitle);
  }
  const TCollection_AsciiString &GetFormat() const {
    return (*self)->GetFormat();
  }
  const TCollection_AsciiString &Format() const {
    return (*self)->Format();
  }
  void SetFormat(const TCollection_AsciiString &theFormat) {
    (*self)->SetFormat(theFormat);
  }
  TCollection_ExtendedString GetLabel(const int theIndex) const {
    return (*self)->GetLabel(theIndex);
  }
  Quantity_Color GetIntervalColor(const int theIndex) const {
    return (*self)->GetIntervalColor(theIndex);
  }
  void SetIntervalColor(const Quantity_Color &theColor, const int theIndex) {
    (*self)->SetIntervalColor(theColor, theIndex);
  }
  void GetLabels(NCollection_Sequence< TCollection_ExtendedString > &theLabels) const {
    (*self)->GetLabels(theLabels);
  }
  const NCollection_Sequence< TCollection_ExtendedString > &Labels() const {
    return (*self)->Labels();
  }
  void SetLabels(const NCollection_Sequence< TCollection_ExtendedString > &theSeq) {
    (*self)->SetLabels(theSeq);
  }
  void GetColors(NCollection_Sequence< Quantity_Color > &theColors) const {
    (*self)->GetColors(theColors);
  }
  const NCollection_Sequence< Quantity_Color > &GetColors() const {
    return (*self)->GetColors();
  }
  void SetColors(const NCollection_Sequence< Quantity_Color > &theSeq){
    (*self)->SetColors(theSeq);
  }
  void SetUniformColors(double theLightness, double theHueFrom, double theHueTo) {
    (*self)->SetUniformColors(theLightness, theHueFrom, theHueTo);
  }
  Aspect_TypeOfColorScalePosition GetLabelPosition() const {
    return (*self)->GetLabelPosition();
  }
  void SetLabelPosition(const Aspect_TypeOfColorScalePosition thePos) {
    (*self)->SetLabelPosition(thePos);
  }
  Aspect_TypeOfColorScalePosition GetTitlePosition () const {
    return (*self)->GetTitlePosition();
  }
  bool IsReversed() const {
    return (*self)->IsReversed();
  }
  void SetReversed(const bool theReverse) {
    (*self)->SetReversed(theReverse);
  }
  bool IsSmoothTransition() const {
    return (*self)->IsSmoothTransition();
  }
  void SetSmoothTransition(const bool theIsSmooth) {
    (*self)->SetSmoothTransition(theIsSmooth);
  }
  bool IsLabelAtBorder() const {
    return (*self)->IsLabelAtBorder();
  }
  void SetLabelAtBorder(const bool theOn) {
    (*self)->SetLabelAtBorder(theOn);
  }
  bool IsLogarithmic() const {
    return (*self)->IsLogarithmic();
  }
  void SetLogarithmic(const bool isLogarithmic) {
    (*self)->SetLogarithmic(isLogarithmic);
  }
  void SetLabel(const TCollection_ExtendedString &theLabel, const int theIndex) {
    (*self)->SetLabel(theLabel, theIndex);
  }
  void GetSize(int &theBreadth, int &theHeight) const {
    (*self)->GetSize(theBreadth, theHeight);
  }
  void SetSize(const int theBreadth, const int theHeight) {
    (*self)->SetSize(theBreadth, theHeight);
  }
  int GetBreadth() const {
    return (*self)->GetBreadth();
  }
  void SetBreadth(const int theBreadth) {
    (*self)->SetBreadth(theBreadth);
  }
  int GetHeight() const {
    return (*self)->GetHeight();
  }
  void SetHeight(const int theHeight) {
    (*self)->SetHeight(theHeight);
  }
  void GetPosition(double &theX, double &theY) const {
    (*self)->GetPosition(theX, theY);
  }
  void SetPosition(const int theX, const int theY) {
    (*self)->SetPosition(theX, theY);
  }
  int GetXPosition() const {
    return (*self)->GetXPosition();
  }
  void SetXPosition(const int theX) {
    (*self)->SetXPosition(theX);
  }
  int GetYPosition() const {
    return (*self)->GetYPosition();
  }
  void SetYPosition(const int theY) {
    (*self)->SetYPosition(theY);
  }
  int GetTextHeight() const {
    return (*self)->GetTextHeight();
  }
  void SetTextHeight(const int theHeight) {
    (*self)->SetTextHeight(theHeight);
  }
  int TextWidth(const TCollection_ExtendedString &theText) const {
    return (*self)->TextWidth(theText);
  }
  int TextHeight (const TCollection_ExtendedString &theText) const {
    return (*self)->TextHeight(theText);
  }
  void TextSize(const TCollection_ExtendedString &theText,
                 const int theHeight,
                 int &theWidth,
                 int &theAscent,
                 int &theDescent) const {
    (*self)->TextSize(theText, theHeight, theWidth, theAscent, theDescent);
  }
  bool AcceptDisplayMode(const int theMode) const {
    return (*self)->AcceptDisplayMode(theMode);
  }
  void Compute(const occ::handle< PrsMgr_PresentationManager > &thePrsMgr,
                const occ::handle< Prs3d_Presentation > &thePresentation,
                const int theMode) {
    (*self)->Compute(thePrsMgr, thePresentation, theMode);
  }
  void ComputeSelection(const occ::handle< SelectMgr_Selection > &SelectMgr, const int theMode) {
    (*self)->ComputeSelection(SelectMgr, theMode);
  }
  static bool FindColor(const double theValue,
                        const double theMin,
                        const double theMax,
                        const int theColorsCount,
                        const NCollection_Vec3< double > &theColorHlsMin,
                        const NCollection_Vec3< double > &theColorHlsMax,
                        Quantity_Color &theColor) {
    return AIS_ColorScale::FindColor(theValue, theMin, theMax, theColorsCount, theColorHlsMin, theColorHlsMax, theColor);
  }
  static bool FindColor(const double theValue,
                        const double theMin,
                        const double theMax,
                        const int theColorsCount,
                        Quantity_Color &theColor) {
    return AIS_ColorScale::FindColor(theValue, theMin, theMax, theColorsCount, theColor);
  }
  static double hueToValidRange(const double theHue) {
    return AIS_ColorScale::hueToValidRange(theHue);
  }
  static NCollection_Sequence< Quantity_Color > MakeUniformColors(int theNbColors, double theLightness, double theHueFrom, double theHueTo) {
    return AIS_ColorScale::MakeUniformColors(theNbColors, theLightness, theHueFrom, theHueTo);
  }
}

%{
#include <AIS_ConnectedInteractive.hxx>

typedef occ::handle<AIS_ConnectedInteractive> Handle_AIS_ConnectedInteractive;
%}

%rename(AIS_ConnectedInteractive) Handle_AIS_ConnectedInteractive;

%nodefaultdtor Handle_AIS_ConnectedInteractive;
class Handle_AIS_ConnectedInteractive
{
  Handle_AIS_ConnectedInteractive()=0;
};

%extend Handle_AIS_ConnectedInteractive
{
  Handle_AIS_ConnectedInteractive(const PrsMgr_TypeOfPresentation3d aTypeOfPresentation3d=PrsMgr_TOP_AllView) {
    return new Handle_AIS_ConnectedInteractive(new AIS_ConnectedInteractive(aTypeOfPresentation3d));
  }
  void Delete() {
    self->~Handle_AIS_ConnectedInteractive();
  }  
  AIS_KindOfInteractive Type() {
    return (*self)->Type();
  }
  int Signature() const {
    return (*self)->Signature();
  }
  void Connect(const occ::handle< AIS_InteractiveObject > &theAnotherObj) {
    (*self)->Connect(theAnotherObj);
  }
  void Connect(const occ::handle< AIS_InteractiveObject > &theAnotherObj, const gp_Trsf &theLocation) {
    (*self)->Connect(theAnotherObj, theLocation);
  }
  void Connect(const occ::handle< AIS_InteractiveObject > &theAnotherObj, const occ::handle< TopLoc_Datum3D > &theLocation) {
    (*self)->Connect(theAnotherObj, theLocation);
  }
  bool HasConnection() const {
    return (*self)->HasConnection();
  }
  const occ::handle< AIS_InteractiveObject > &ConnectedTo() const {
    return (*self)->ConnectedTo();
  }
  void Disconnect() {
    (*self)->Disconnect();
  }
  bool AcceptShapeDecomposition() const {
    return (*self)->AcceptShapeDecomposition();
  }
  bool AcceptDisplayMode(const int theMode) const {
    return (*self)->AcceptDisplayMode(theMode);
  }
}

%{
#include <AIS_LightSource.hxx>
%}

class AIS_LightSource {
public:
  AIS_LightSource(const occ::handle< Graphic3d_CLight > &theLightSource);
  const occ::handle< Graphic3d_CLight > & Light() const;
  void SetLight(const occ::handle< Graphic3d_CLight > &theLight);
  bool ToDisplayName() const;
  void SetDisplayName(bool theToDisplay);
  bool ToDisplayRange() const;
  void SetDisplayRange(bool theToDisplay);
  double Size() const;
  void SetSize(double theSize);
  int ArcSize() const;
  void SetArcSize(int theSize);
  bool IsZoomable() const;
  void SetZoomable(bool theIsZoomable);
  void SetDraggable(bool theIsDraggable);
  bool ToSwitchOnClick() const;
  void SetSwitchOnClick(bool theToHandle);
  int NbArrows() const;
  void SetNbArrows(int theNbArrows);
  const occ::handle< Graphic3d_MarkerImage > &MarkerImage(bool theIsEnabled) const;
  Aspect_TypeOfMarker MarkerType(bool theIsEnabled) const;
  void SetMarkerImage(const occ::handle< Graphic3d_MarkerImage > &theImage, bool theIsEnabled);
  void SetMarkerType(Aspect_TypeOfMarker theType, bool theIsEnabled);
  int NbSplitsQuadric() const;
  void SetNbSplitsQuadric(int theNbSplits);
  int NbSplitsArrow() const;
  void SetNbSplitsArrow(int theNbSplits);
  AIS_KindOfInteractive Type() const;
};

%{
#include <AIS_Line.hxx>

typedef occ::handle<AIS_Line> Handle_AIS_Line;
%}

%rename(AIS_Line) Handle_AIS_Line;

%nodefaultdtor Handle_AIS_Line;
class Handle_AIS_Line
{
  Handle_AIS_Line()=0;
};

%extend Handle_AIS_Line
{
  Handle_AIS_Line(const occ::handle< Geom_Line > &aLine) {
    return new Handle_AIS_Line(new AIS_Line(aLine));
  }
  Handle_AIS_Line(const occ::handle< Geom_Point > &aStartPoint, const occ::handle< Geom_Point > &aEndPoint) {
    return new Handle_AIS_Line(new AIS_Line(aStartPoint, aEndPoint));
  }
  void Delete() {
    self->~Handle_AIS_Line();
  }
  int Signature() {
    return (*self)->Signature();
  }
  AIS_KindOfInteractive Type() {
    return (*self)->Type();
  }
  const occ::handle< Geom_Line > & Line() {
    return (*self)->Line();
  }
  const occ::handle< Geom_Point > &StartPoint() const {
    return (*self)->StartPoint();
  }
  const occ::handle< Geom_Point > &EndPoint() const {
    return (*self)->EndPoint();
  }
  void SetLine(const occ::handle< Geom_Line > &theLine) {
    (*self)->SetLine(theLine);
  }
  void 	SetPoints(const occ::handle< Geom_Point > &thePStart, const occ::handle< Geom_Point > &thePEnd) {
    (*self)->SetPoints(thePStart, thePEnd);
  }
  void SetColor(const Quantity_Color &aColor) {
    (*self)->SetColor(aColor);
  }
  void SetWidth(const double aValue) {
    (*self)->SetWidth(aValue);
  }
  void UnsetColor() {
    (*self)->UnsetColor();
  }
  void UnsetWidth() {
    (*self)->UnsetWidth();
  }
}

%{
#include <AIS_Manipulator.hxx>

typedef occ::handle<AIS_Manipulator> Handle_AIS_Manipulator;
%}

%rename(AIS_Manipulator) Handle_AIS_Manipulator;

%nodefaultdtor Handle_AIS_Manipulator;
class Handle_AIS_Manipulator
{
  Handle_AIS_Manipulator()=0;
};

%extend Handle_AIS_Manipulator
{
  Handle_AIS_Manipulator () {
    return new Handle_AIS_Manipulator(new AIS_Manipulator());
  }
  Handle_AIS_Manipulator(const gp_Ax2 &thePosition) {
    return new Handle_AIS_Manipulator(new AIS_Manipulator(thePosition));
  }  
  void Delete () {
    self->~Handle_AIS_Manipulator();
  }
  void SetPart(const int theAxisIndex, const AIS_ManipulatorMode theMode, const bool theIsEnabled) {
    (*self)->SetPart(theAxisIndex, theMode, theIsEnabled);
  }
  void SetPart(const AIS_ManipulatorMode theMode, const bool theIsEnabled) {
    (*self)->SetPart(theMode, theIsEnabled);
  }
  void Attach(const occ::handle< AIS_InteractiveObject > &theObject,
               const AIS_Manipulator::OptionsForAttach &theOptions=AIS_Manipulator::OptionsForAttach()) {
    (*self)->Attach(theObject, theOptions);
  }
  void Attach(const occ::handle< NCollection_HSequence< occ::handle< AIS_InteractiveObject > > > &theObject,
               const AIS_Manipulator::OptionsForAttach &theOptions=AIS_Manipulator::OptionsForAttach()) {
    (*self)->Attach(theObject, theOptions);
  } 
  void EnableMode(const AIS_ManipulatorMode theMode) {
    (*self)->EnableMode(theMode);
  }
  void SetModeActivationOnDetection(const bool theToEnable) {
    (*self)->SetModeActivationOnDetection(theToEnable);
  }
  bool IsModeActivationOnDetection() const{
    return (*self)->IsModeActivationOnDetection();
  }
  bool ProcessDragging(const occ::handle< AIS_InteractiveContext > &theCtx,
                       const occ::handle< V3d_View > &theView,
                       const occ::handle< SelectMgr_EntityOwner > &theOwner,
                       const NCollection_Vec2< int > &theDragFrom,
                       const NCollection_Vec2< int > &theDragTo,
                       const AIS_DragAction theAction) {
    return (*self)->ProcessDragging(theCtx, theView, theOwner, theDragFrom, theDragTo, theAction);
  }
  void StartTransform(const int theX, const int theY, const occ::handle< V3d_View > &theView) {
    (*self)->StartTransform(theX, theY, theView);
  }
  void Transform(const gp_Trsf &aTrsf) {
    (*self)->Transform(aTrsf);
  }
  void RecomputeTransformation(const occ::handle< Graphic3d_Camera > &theCamera) {
    (*self)->RecomputeTransformation(theCamera);
  }
  void RecomputeSelection(const AIS_ManipulatorMode theMode) {
    (*self)->RecomputeSelection(theMode);
  }
  void StopTransform(const bool theToApply=true) {
    (*self)->StopTransform(theToApply);
  }
  gp_Trsf Transform(const int theX, const int theY, const occ::handle< V3d_View > &theView) {
    return (*self)->Transform(theX, theY, theView);
  }
  bool ObjectTransformation(const int theX, const int theY, const occ::handle< V3d_View > &theView, gp_Trsf &theTrsf) {
    return (*self)->ObjectTransformation(theX, theY, theView, theTrsf);
  }
  void DeactivateCurrentMode() {
    (*self)->DeactivateCurrentMode();
  }
  void Detach() {
    (*self)->Detach();
  }
  occ::handle< NCollection_HSequence< occ::handle< AIS_InteractiveObject > > > Objects() const {
    return (*self)->Objects();
  }
  occ::handle< AIS_InteractiveObject > Object() const {
    return (*self)->Object();
  }
  occ::handle< AIS_InteractiveObject > Object(const int theIndex) const {
    return (*self)->Object(theIndex);
  }
  bool IsAttached() const {
    return (*self)->IsAttached();
  }
  bool HasActiveMode() const {
    return (*self)->HasActiveMode();
  }
  bool HasActiveTransformation() {
    return (*self)->HasActiveTransformation();
  }
  gp_Trsf StartTransformation() const {
    return (*self)->StartTransformation();
  }
  gp_Trsf StartTransformation(int theIndex) const {
    return (*self)->StartTransformation(theIndex);
  }
  void SetZoomPersistence(const bool theToEnable) {
    (*self)->SetZoomPersistence(theToEnable);
  }
  bool ZoomPersistence() const {
    return (*self)->ZoomPersistence();
  }
  void SetTransformPersistence(const occ::handle< Graphic3d_TransformPers > &theTrsfPers) {
    (*self)->SetTransformPersistence(theTrsfPers);
  }
  void SetSkinMode(const AIS_Manipulator::ManipulatorSkin theSkinMode) {
    (*self)->SetSkinMode(theSkinMode);
  }
  AIS_ManipulatorMode ActiveMode() const {
    return (*self)->ActiveMode();
  }
  int ActiveAxisIndex() const {
    return (*self)->ActiveAxisIndex();
  }
  const gp_Ax2 & Position() const {
    return (*self)->Position();
  }
  void SetPosition(const gp_Ax2 &thePosition) {
    (*self)->SetPosition(thePosition);
  }
  float Size() const {
    return (*self)->Size();
  }
  void SetSize(const float theSideLength) {
    (*self)->SetSize(theSideLength);
  }
  void SetGap(const float theValue) {
    (*self)->SetGap(theValue);
  }
  void SetTransformBehavior(const AIS_Manipulator::BehaviorOnTransform &theSettings) {
    (*self)->SetTransformBehavior(theSettings);
  }
  AIS_Manipulator::BehaviorOnTransform & ChangeTransformBehavior() {
    return (*self)->ChangeTransformBehavior();
  }
  const AIS_Manipulator::BehaviorOnTransform & TransformBehavior() const {
    return (*self)->TransformBehavior();
  }
  void Compute(const occ::handle< PrsMgr_PresentationManager > &thePrsMgr, const occ::handle< Prs3d_Presentation > &thePrs, const int theMode=0) {
    (*self)->Compute(thePrsMgr, thePrs, theMode);
  }
  void ComputeSelection(const occ::handle< SelectMgr_Selection > &theSelection, const int theMode) {
    (*self)->ComputeSelection(theSelection, theMode);
  }
  bool IsAutoHilight() const {
    return (*self)->IsAutoHilight();
  }
  void ClearSelected() {
    (*self)->ClearSelected();
  }
  void HilightSelected(const occ::handle< PrsMgr_PresentationManager > &thePM,
                       const NCollection_Sequence< occ::handle< SelectMgr_EntityOwner > > &theSeq) {
    (*self)->HilightSelected(thePM, theSeq);
  }
  void HilightOwnerWithColor(const occ::handle< PrsMgr_PresentationManager > &thePM,
                             const occ::handle< Prs3d_Drawer > &theStyle,
                             const occ::handle< SelectMgr_EntityOwner > &theOwner)  {
    (*self)->HilightOwnerWithColor(thePM, theStyle, theOwner);
  }
} 

%{
#include <AIS_MediaPlayer.hxx>
%}

class AIS_MediaPlayer
{
public:
  AIS_MediaPlayer();
  ~AIS_MediaPlayer();
  void SetCallback(Graphic3d_MediaTextureSet::CallbackOnUpdate_t theCallbackFunction, void *theCallbackUserPtr);
  void OpenInput(const TCollection_AsciiString &thePath, bool theToWait);
  bool PresentFrame(const NCollection_Vec2< int > &theLeftCorner, const NCollection_Vec2< int > &theMaxSize);
  const occ::handle< Media_PlayerContext > & PlayerContext() const;
  void PlayPause();
  void SetClosePlayer();
  double Duration() const;
};

%{
#include <AIS_MultipleConnectedInteractive.hxx>

typedef occ::handle<AIS_MultipleConnectedInteractive> Handle_AIS_MultipleConnectedInteractive;
%}

%rename(AIS_MultipleConnectedInteractive) Handle_AIS_MultipleConnectedInteractive;

%nodefaultdtor Handle_AIS_MultipleConnectedInteractive;
class Handle_AIS_MultipleConnectedInteractive
{
  Handle_AIS_MultipleConnectedInteractive()=0;
};

%extend Handle_AIS_MultipleConnectedInteractive
{
  Handle_AIS_MultipleConnectedInteractive() {
    return new Handle_AIS_MultipleConnectedInteractive(new AIS_MultipleConnectedInteractive());
  } 
  void Delete () {
    self->~Handle_AIS_MultipleConnectedInteractive();
  }
  occ::handle< AIS_InteractiveObject > Connect(const occ::handle< AIS_InteractiveObject > &theAnotherObj,
                                                const occ::handle< TopLoc_Datum3D > &theLocation,
                                                const occ::handle< Graphic3d_TransformPers > &theTrsfPers) {
    return (*self)->Connect(theAnotherObj, theLocation, theTrsfPers);
  }
  AIS_KindOfInteractive Type() const {
    return (*self)->Type();
  }
  int Signature() const {
    return (*self)->Signature();
  }
  bool HasConnection() const {
    return (*self)->HasConnection();
  }
  void Disconnect(const occ::handle< AIS_InteractiveObject > &theInteractive) {
    (*self)->Disconnect(theInteractive);
  }
  void DisconnectAll() {
    (*self)->DisconnectAll();
  }
  bool AcceptShapeDecomposition() const {
    return (*self)->AcceptShapeDecomposition();
  }
  const occ::handle< SelectMgr_EntityOwner > &GetAssemblyOwner() const {
    return (*self)->GetAssemblyOwner();
  }
  occ::handle< SelectMgr_EntityOwner > GlobalSelOwner() const  {
    return (*self)->GlobalSelOwner();
  }
  void SetContext(const occ::handle< AIS_InteractiveContext > &theCtx) {
    (*self)->SetContext(theCtx);
  }
  occ::handle< AIS_InteractiveObject > Connect(const occ::handle< AIS_InteractiveObject > &theAnotherObj) {
    return (*self)->Connect(theAnotherObj);
  }
  occ::handle< AIS_InteractiveObject > Connect(const occ::handle< AIS_InteractiveObject > &theAnotherObj, const gp_Trsf &theLocation) {
    return (*self)->Connect(theAnotherObj, theLocation);
  }
  occ::handle< AIS_InteractiveObject > 	Connect(const occ::handle< AIS_InteractiveObject > &theAnotherObj,
                                                 const gp_Trsf &theLocation,
                                                 const occ::handle< Graphic3d_TransformPers > &theTrsfPers) {
    return (*self)->Connect(theAnotherObj, theLocation, theTrsfPers);
  }
}
%{
#include <AIS_Plane.hxx>

typedef occ::handle<AIS_Plane> Handle_AIS_Plane;
%}

%rename(AIS_Plane) Handle_AIS_Plane;

%nodefaultdtor Handle_AIS_Plane;
class Handle_AIS_Plane
{
  Handle_AIS_Plane()=0;
};

%extend Handle_AIS_Plane
{
  Handle_AIS_Plane(const occ::handle< Geom_Plane > &aComponent, const bool aCurrentMode=false) {
    return new Handle_AIS_Plane(new AIS_Plane(aComponent, aCurrentMode));
  }
  Handle_AIS_Plane(const occ::handle< Geom_Plane > &aComponent, const gp_Pnt &aCenter, const bool aCurrentMode=false) {
    return new Handle_AIS_Plane(new AIS_Plane(aComponent, aCenter, aCurrentMode));
  }
  Handle_AIS_Plane(const occ::handle< Geom_Plane > &aComponent, const gp_Pnt &aCenter, const gp_Pnt &aPmin,
 	                  const gp_Pnt &aPmax, const bool aCurrentMode=false) {
    return new Handle_AIS_Plane(new AIS_Plane(aComponent, aCenter, aPmin, aPmax, aCurrentMode));
  }
  Handle_AIS_Plane(const occ::handle< Geom_Axis2Placement > &aComponent, const AIS_TypeOfPlane aPlaneType, const bool aCurrentMode=false) {
    return new Handle_AIS_Plane(new AIS_Plane(aComponent, aPlaneType, aCurrentMode));
  }
  void Delete() {
    self->~Handle_AIS_Plane();
  }
  void SetSize(const double aValue) {
    (*self)->SetSize(aValue);
  }
  void SetSize(const double Xval, const double YVal) {
    (*self)->SetSize(Xval, YVal);
  }
  void UnsetSize() {
    (*self)->UnsetSize();
  }
  bool Size(double &X, double &Y) const {
    return (*self)->Size(X, Y);
  }
  bool HasOwnSize() const {
    return (*self)->HasOwnSize();
  }
  void SetMinimumSize(const double theValue) {
    (*self)->SetMinimumSize(theValue);
  }
  void UnsetMinimumSize () {
    (*self)->UnsetMinimumSize();
  }
  bool HasMinimumSize() const {
    return (*self)->HasMinimumSize();
  }
  int Signature() const {
    return (*self)->Signature();
  }
  AIS_KindOfInteractive Type () const {
    return (*self)->Type();
  }
  const occ::handle< Geom_Plane > & Component() {
    return (*self)->Component();
  }
  void SetComponent(const occ::handle< Geom_Plane > &aComponent) {
    (*self)->SetComponent(aComponent);
  }
  bool PlaneAttributes(occ::handle< Geom_Plane > &aComponent, gp_Pnt &aCenter, gp_Pnt &aPmin, gp_Pnt &aPmax) {
    return (*self)->PlaneAttributes(aComponent, aCenter, aPmin, aPmax);
  }
  void SetPlaneAttributes(const occ::handle< Geom_Plane > &aComponent, const gp_Pnt &aCenter, const gp_Pnt &aPmin, const gp_Pnt &aPmax) {
    (*self)->SetPlaneAttributes(aComponent, aCenter, aPmin, aPmax);
  }
  const gp_Pnt & Center() const {
    return (*self)->Center();
  }
  void SetCenter(const gp_Pnt &theCenter) {
    (*self)->SetCenter(theCenter);
  }
  void SetAxis2Placement(const occ::handle< Geom_Axis2Placement > &aComponent, const AIS_TypeOfPlane aPlaneType) {
    (*self)->SetAxis2Placement(aComponent, aPlaneType);
  }
  occ::handle< Geom_Axis2Placement > Axis2Placement() {
    return (*self)->Axis2Placement();
  }
  AIS_TypeOfPlane TypeOfPlane() {
    return (*self)->TypeOfPlane();
  }
  bool IsXYZPlane() {
    return (*self)->IsXYZPlane();
  }
  bool CurrentMode() {
    return (*self)->CurrentMode();
  }
  void SetCurrentMode(const bool theCurrentMode) {
    (*self)->SetCurrentMode(theCurrentMode);
  }
  bool AcceptDisplayMode(const int aMode) const {
    return (*self)->AcceptDisplayMode(aMode);
  }
  void SetContext(const occ::handle< AIS_InteractiveContext > &aCtx) {
    (*self)->SetContext(aCtx);
  }
  Select3D_TypeOfSensitivity TypeOfSensitivity() const {
    return (*self)->TypeOfSensitivity();
  }
  void SetTypeOfSensitivity(Select3D_TypeOfSensitivity theTypeOfSensitivity) {
    (*self)->SetTypeOfSensitivity(theTypeOfSensitivity);
  }
  void ComputeSelection(const occ::handle< SelectMgr_Selection > &theSelection, const int theMode) {
    (*self)->ComputeSelection(theSelection, theMode);
  }
  void SetColor(const Quantity_Color &aColor) {
    (*self)->SetColor(aColor);
  }
  void UnsetColor() {
    (*self)->UnsetColor();
  }
}

%{
#include <AIS_Shape.hxx>
typedef occ::handle<AIS_Shape> Handle_AIS_Shape;
%}

%rename(AIS_Shape) Handle_AIS_Shape;

%nodefaultdtor Handle_AIS_Shape;
class Handle_AIS_Shape
{
  Handle_AIS_Shape()=0;
};

%extend Handle_AIS_Shape
{
  Handle_AIS_Shape(const TopoDS_Shape &shap) {
 	return new Handle_AIS_Shape(new AIS_Shape(shap));
  }
  void Delete() {
      self->~Handle_AIS_Shape();
  }
  int Signature() {
    return (*self)->Signature();
  }
  AIS_KindOfInteractive Type() {
    return (*self)->Type();
  } 
  bool AcceptShapeDecomposition() {
    return (*self)->AcceptShapeDecomposition();
  }
  bool AcceptDisplayMode(const int theMode) {
    return (*self)->AcceptDisplayMode(theMode);
  }
  const TopoDS_Shape & Shape () {
    return (*self)->Shape();
  }
  void SetShape(const TopoDS_Shape &theShape) {
    (*self)->SetShape(theShape);
  }
  void Set(const TopoDS_Shape &theShape) {
    (*self)->Set(theShape);
  }
  bool SetOwnDeviationCoefficient() {
    return (*self)->SetOwnDeviationCoefficient();
  }
  bool SetOwnDeviationAngle() {
    return (*self)->SetOwnDeviationAngle();
  }
  void SetOwnDeviationCoefficient(const double aCoefficient) {
 	(*self)->SetOwnDeviationCoefficient(aCoefficient);
  } 
  void SetAngleAndDeviation(const double anAngle) {
 	(*self)->SetAngleAndDeviation(anAngle);
  } 
  double UserAngle() {
    return (*self)->UserAngle();
  }
  void SetOwnDeviationAngle(const double anAngle) {
 	(*self)->SetOwnDeviationAngle(anAngle);
  } 
  bool OwnDeviationCoefficient(double &aCoefficient, double &aPreviousCoefficient) {
    return (*self)->OwnDeviationCoefficient(aCoefficient, aPreviousCoefficient);
  }
  bool OwnDeviationAngle(double &anAngle, double &aPreviousAngle) {
    return (*self)->OwnDeviationAngle(anAngle, aPreviousAngle);
  }
  void SetTypeOfHLR(const Prs3d_TypeOfHLR theTypeOfHLR) {
    (*self)->SetTypeOfHLR(theTypeOfHLR);
  }
  Prs3d_TypeOfHLR TypeOfHLR() {
    return (*self)->TypeOfHLR();
  }
  void SetColor(const Quantity_Color &theColor) {
    (*self)->SetColor(theColor);
  }
  void UnsetColor() {
    (*self)->UnsetColor();
  }
  void SetWidth(const double aValue) {
    (*self)->SetWidth(aValue);
  }
  void UnsetWidth() {
 	(*self)->UnsetWidth();
  }
  void SetMaterial(const Graphic3d_MaterialAspect &aName) {
 	(*self)->SetMaterial(aName);
  }
  void UnsetMaterial() {
 	(*self)->UnsetMaterial();
  }
  void SetTransparency(const double aValue) {
 	(*self)->SetTransparency(aValue);
  }
  void UnsetTransparency() {
 	(*self)->UnsetTransparency();
  }
  const Bnd_Box & BoundingBox() {
    return (*self)->BoundingBox();
  }
  void Color(Quantity_Color &aColor) {
 	(*self)->Color(aColor);
  }
  Graphic3d_NameOfMaterial Material() {
    return (*self)->Material();
  }
  double Transparency() {
    return (*self)->Transparency();
  }
}  
