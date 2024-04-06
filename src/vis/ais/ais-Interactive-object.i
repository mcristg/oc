%{
#include <PrsMgr_PresentableObject.hxx>
%}

%rename(PrsMgr_PresentableObject) Handle_PrsMgr_PresentableObject;

%nodefaultdtor Handle_PrsMgr_PresentableObject;
class Handle_PrsMgr_PresentableObject : public Handle_Standard_Transient
{
  Handle_PrsMgr_PresentableObject()=0;
};

%extend Handle_PrsMgr_PresentableObject
{
  PrsMgr_Presentations & Presentations () {
    return (*self)->Presentations();
  }
  Graphic3d_ZLayerId ZLayer () {
    return (*self)->ZLayer();
  }
  void 	SetZLayer (const Graphic3d_ZLayerId theLayerId) {
    (*self)->SetZLayer(theLayerId);
  }
  Standard_Boolean 	IsMutable () {
    return (*self)->IsMutable();
  }
  void SetMutable (const Standard_Boolean theIsMutable) {
    (*self)->SetMutable(theIsMutable);
  }
  const Handle_Graphic3d_ViewAffinity & ViewAffinity () {
    return (*self)->ViewAffinity();
  }
  Standard_Boolean HasDisplayMode () {
    return (*self)->HasDisplayMode();
  }
  Standard_Integer DisplayMode () {
    return (*self)->DisplayMode();
  }
  void SetDisplayMode (const Standard_Integer theMode) {
    (*self)->SetDisplayMode(theMode);
  }
  void UnsetDisplayMode () {
    (*self)->UnsetDisplayMode();
  }
  Standard_Boolean HasHilightMode () {
    return (*self)->HasHilightMode();
  }
  Standard_Integer HilightMode () {
    return (*self)->HilightMode();
  }
  void SetHilightMode (const Standard_Integer theMode) {
    (*self)->SetHilightMode(theMode);
  }
  void UnsetHilightMode () {
    (*self)->UnsetHilightMode();
  }
  Standard_Boolean AcceptDisplayMode (const Standard_Integer theMode) {
    return (*self)->AcceptDisplayMode(theMode);
  }
  Standard_Integer DefaultDisplayMode () {
    return (*self)->DefaultDisplayMode();
  }
  Standard_Boolean ToBeUpdated (Standard_Boolean theToIncludeHidden=Standard_False) {
    return (*self)->ToBeUpdated(theToIncludeHidden);
  }
  void SetToUpdate (Standard_Integer theMode) {
    (*self)->SetToUpdate(theMode);
  }
  void SetToUpdate () {
    (*self)->SetToUpdate();
  }
  Standard_Boolean IsInfinite () {
    return (*self)->IsInfinite();
  }
  void SetInfiniteState (const Standard_Boolean theFlag=Standard_True) {
    (*self)->SetInfiniteState(theFlag);
  }
  PrsMgr_TypeOfPresentation3d TypeOfPresentation3d () {
    return (*self)->TypeOfPresentation3d();
  }
  void 	SetTypeOfPresentation (const PrsMgr_TypeOfPresentation3d theType) {
    (*self)->SetTypeOfPresentation(theType);
  }
  PrsMgr_DisplayStatus DisplayStatus () {
    return (*self)->DisplayStatus();
  }
  const Handle_Prs3d_Drawer & Attributes () {
    return (*self)->Attributes();
  }
  void SetAttributes (const Handle_Prs3d_Drawer &theDrawer) {
    (*self)->SetAttributes(theDrawer);
  }
  const Handle_Prs3d_Drawer & HilightAttributes () {
    return (*self)->HilightAttributes();
  }
  void SetHilightAttributes (const Handle_Prs3d_Drawer &theDrawer) {
    (*self)->SetHilightAttributes(theDrawer);
  }
  const Handle_Prs3d_Drawer & DynamicHilightAttributes () {
    return (*self)->DynamicHilightAttributes();
  }
  void SetDynamicHilightAttributes (const Handle_Prs3d_Drawer &theDrawer) {
    (*self)->SetDynamicHilightAttributes(theDrawer);
  }
  void UnsetHilightAttributes () {
    (*self)->UnsetHilightAttributes();
  }
  void SynchronizeAspects () {
    (*self)->SynchronizeAspects();
  }
  const Handle_Graphic3d_TransformPers & TransformPersistence () {
    return (*self)->TransformPersistence();
  }
  void SetTransformPersistence (const Handle_Graphic3d_TransformPers &theTrsfPers) {
    (*self)->SetTransformPersistence(theTrsfPers);
  }
  const Handle_TopLoc_Datum3D & LocalTransformationGeom () {
    return (*self)->LocalTransformationGeom();
  }
  void SetLocalTransformation (const gp_Trsf &theTrsf) {
    (*self)->SetLocalTransformation(theTrsf);
  }
  void SetLocalTransformation (const Handle_TopLoc_Datum3D &theTrsf) {
    (*self)->SetLocalTransformation(theTrsf);
  }
  Standard_Boolean HasTransformation () {
    return (*self)->HasTransformation();
  }
  const Handle_TopLoc_Datum3D & TransformationGeom () {
    return (*self)->TransformationGeom();
  }
  const gp_Trsf & LocalTransformation () {
    return (*self)->LocalTransformation();
  }
  const gp_Trsf & Transformation () {
    return (*self)->Transformation();
  }
  const gp_GTrsf & InversedTransformation () {
    return (*self)->InversedTransformation();
  }
  const Handle_TopLoc_Datum3D & CombinedParentTransformation () {
    return (*self)->CombinedParentTransformation();
  }
  void ResetTransformation () {
    (*self)->ResetTransformation();
  }
  void UpdateTransformation () {
    (*self)->UpdateTransformation();
  }
  const Handle_Graphic3d_SequenceOfHClipPlane & ClipPlanes () {
    return (*self)->ClipPlanes();
  }
  void SetClipPlanes (const Handle_Graphic3d_SequenceOfHClipPlane &thePlanes) {
    (*self)->SetClipPlanes(thePlanes);
  }
  void AddClipPlane (const Handle_Graphic3d_ClipPlane &thePlane) {
    (*self)->AddClipPlane(thePlane);
  }
  void RemoveClipPlane (const Handle_Graphic3d_ClipPlane &thePlane) {
    (*self)->RemoveClipPlane(thePlane);
  }
  PrsMgr_PresentableObject * Parent () {
    return (*self)->Parent();
  }
  const PrsMgr_ListOfPresentableObjects & Children () {
    return (*self)->Children();
  }
  void AddChild (const Handle_PrsMgr_PresentableObject &theObject) {
    (*self)->AddChild(theObject);
  }
  void AddChildWithCurrentTransformation (const Handle_PrsMgr_PresentableObject &theObject) {
    (*self)->AddChildWithCurrentTransformation(theObject);
  }
  void RemoveChild (const Handle_PrsMgr_PresentableObject &theObject) {
    (*self)->RemoveChild(theObject);
  }
  void RemoveChildWithRestoreTransformation (const Handle_PrsMgr_PresentableObject &theObject) {
    (*self)->RemoveChildWithRestoreTransformation(theObject);
  }
  Standard_Boolean HasOwnPresentations () {
    return (*self)->HasOwnPresentations();
  }
  void BoundingBox (Bnd_Box &theBndBox) {
    (*self)->BoundingBox(theBndBox);
  }
  void SetIsoOnTriangulation (const Standard_Boolean theIsEnabled) {
    (*self)->SetIsoOnTriangulation(theIsEnabled);
  }
  Aspect_TypeOfFacingModel 	CurrentFacingModel () {
    return (*self)->CurrentFacingModel();
  }
  void SetCurrentFacingModel (const Aspect_TypeOfFacingModel theModel=Aspect_TOFM_BOTH_SIDE) {
    (*self)->SetCurrentFacingModel(theModel);
  }
  Standard_Boolean HasColor () {
    return (*self)->HasColor();
  }
  void Color (Quantity_Color &theColor) {
    (*self)->Color(theColor);
  }
  void SetColor (const Quantity_Color &theColor) {
    (*self)->SetColor(theColor);
  }
  void UnsetColor () {
    (*self)->UnsetColor();
  }
  Standard_Boolean HasWidth () {
    return (*self)->HasWidth();
  }
  Standard_Real Width () {
    return (*self)->Width();
  }
  void SetWidth (const Standard_Real theWidth) {
    (*self)->SetWidth(theWidth);
  }
  void UnsetWidth () {
    (*self)->UnsetWidth();
  }
  Standard_Boolean HasMaterial () {
    return (*self)->HasMaterial();
  }
  Graphic3d_NameOfMaterial Material () {
    return (*self)->Material();
  }
  void SetMaterial (const Graphic3d_MaterialAspect &aName) {
    (*self)->SetMaterial(aName);
  }
  void UnsetMaterial () {
    (*self)->UnsetMaterial();
  }
  Standard_Boolean IsTransparent () {
    return (*self)->IsTransparent();
  }
  Standard_Real Transparency () {
    return (*self)->Transparency();
  }
  void SetTransparency (const Standard_Real aValue=0.6) {
    (*self)->SetTransparency(aValue);
  }
  void UnsetTransparency () {
    (*self)->UnsetTransparency();
  }
  Standard_Boolean HasPolygonOffsets () {
    return (*self)->HasPolygonOffsets();
  }
  void PolygonOffsets (Standard_Integer &aMode, Standard_ShortReal &aFactor, Standard_ShortReal &aUnits) {
    (*self)->PolygonOffsets(aMode, aFactor, aUnits);
  }
  void SetPolygonOffsets (const Standard_Integer aMode, const Standard_ShortReal aFactor=1.0, const Standard_ShortReal aUnits=0.0) {
    (*self)->SetPolygonOffsets(aMode, aFactor, aUnits);
  }
  void UnsetAttributes () {
    (*self)->UnsetAttributes();
  }
  void DumpJson (Standard_OStream &theOStream, Standard_Integer theDepth=-1) {
    (*self)->DumpJson(theOStream, theDepth);
  }
}

%{
#include <SelectMgr_SelectableObject.hxx>
%}

%rename(SelectMgr_SelectableObject) Handle_SelectMgr_SelectableObject;

%nodefaultdtor Handle_SelectMgr_SelectableObject;
class Handle_SelectMgr_SelectableObject : public Handle_PrsMgr_PresentableObject
{
  Handle_SelectMgr_SelectableObject()=0;
};

%extend Handle_SelectMgr_SelectableObject
{
  void Delete() {
    self->~Handle_SelectMgr_SelectableObject();
  }
  Standard_Boolean AcceptShapeDecomposition () {
    return (*self)->AcceptShapeDecomposition();
  }
  void RecomputePrimitives () {
    (*self)->RecomputePrimitives();
  }
  void RecomputePrimitives (const Standard_Integer theMode) {
    (*self)->RecomputePrimitives(theMode);
  }
  void AddSelection (const Handle_SelectMgr_Selection &aSelection, const Standard_Integer aMode) {
    (*self)->AddSelection(aSelection, aMode);
  }
  void ClearSelections (const Standard_Boolean update=Standard_False) {
    (*self)->ClearSelections(update);
  }
  const Handle_SelectMgr_Selection & Selection (const Standard_Integer theMode) {
    return (*self)->Selection(theMode);
  }
  Standard_Boolean HasSelection (const Standard_Integer theMode) {
    return (*self)->HasSelection(theMode);
  }
  const SelectMgr_SequenceOfSelection & Selections () {
    return (*self)->Selections();
  }
  void ResetTransformation () {
    (*self)->ResetTransformation();
  }
  void UpdateTransformation () {
    (*self)->UpdateTransformation();
  }
  void UpdateTransformations (const Handle_SelectMgr_Selection &aSelection) {
    (*self)->UpdateTransformations(aSelection);
  }
  void HilightSelected (const Handle_PrsMgr_PresentationManager &thePrsMgr, const SelectMgr_SequenceOfOwner &theSeq) {
    (*self)->HilightSelected(thePrsMgr, theSeq);
  }
  void ClearSelected () {
    (*self)->ClearSelected();
  }
  void ClearDynamicHighlight (const Handle_PrsMgr_PresentationManager &theMgr) {
    (*self)->ClearDynamicHighlight(theMgr);
  }
  void HilightOwnerWithColor (const Handle_PrsMgr_PresentationManager &thePM, const Handle_Prs3d_Drawer &theStyle, 
                              const Handle_SelectMgr_EntityOwner &theOwner) {
    (*self)->HilightOwnerWithColor(thePM, theStyle, theOwner);
  }
  Standard_Boolean IsAutoHilight () {
    return (*self)->IsAutoHilight();
  }
  void SetAutoHilight (const Standard_Boolean theAutoHilight) {
    (*self)->SetAutoHilight(theAutoHilight);
  }
  opencascade::handle< Prs3d_Presentation > GetHilightPresentation (const Handle_PrsMgr_PresentationManager &thePrsMgr) {
    return (*self)->GetHilightPresentation(thePrsMgr);
  }
  opencascade::handle< Prs3d_Presentation > GetSelectPresentation (const Handle_PrsMgr_PresentationManager &thePrsMgr) {
    return (*self)->GetSelectPresentation(thePrsMgr);
  }
  void ErasePresentations (Standard_Boolean theToRemove) {
    (*self)->ErasePresentations(theToRemove);
  }
  void SetZLayer (const Graphic3d_ZLayerId theLayerId) {
    (*self)->SetZLayer(theLayerId);
  }
  void UpdateSelection (const Standard_Integer theMode=-1) {
    (*self)->UpdateSelection(theMode);
  }
  void SetAssemblyOwner (const Handle_SelectMgr_EntityOwner &theOwner, const Standard_Integer theMode=-1) {
    (*self)->SetAssemblyOwner(theOwner, theMode);
  }
  Bnd_Box BndBoxOfSelected (const opencascade::handle< SelectMgr_IndexedMapOfOwner > &theOwners) {
    return (*self)->BndBoxOfSelected(theOwners);
  }
  Standard_Integer GlobalSelectionMode () {
    return (*self)->GlobalSelectionMode();
  }
  Handle_SelectMgr_EntityOwner GlobalSelOwner ()  {
    return (*self)->GlobalSelOwner();
  }
  const Handle_SelectMgr_EntityOwner & GetAssemblyOwner () {
    return (*self)->GetAssemblyOwner();
  }
  void DumpJson (Standard_OStream &theOStream, Standard_Integer theDepth=-1) {
    (*self)->DumpJson(theOStream, theDepth);
  }
}  

%{
#include <AIS_InteractiveObject.hxx>
%}

%rename(AIS_InteractiveObject) Handle_AIS_InteractiveObject;

%nodefaultdtor Handle_AIS_InteractiveObject;
class Handle_AIS_InteractiveObject : public Handle_SelectMgr_SelectableObject
{
  Handle_AIS_InteractiveObject()=0;
};

%extend Handle_AIS_InteractiveObject
{
  AIS_KindOfInteractive Type () {
    return (*self)->Type();
  }
  Standard_Integer Signature () {
    return (*self)->Signature();
  }
  void Redisplay (const Standard_Boolean AllModes=Standard_False) {
    (*self)->Redisplay(AllModes);
  }
  Standard_Boolean HasInteractiveContext () {
    return (*self)->HasInteractiveContext();
  }
  AIS_InteractiveContext * InteractiveContext () {
    return (*self)->InteractiveContext();
  }
  void SetContext (const Handle_AIS_InteractiveContext &aCtx) {
    (*self)->SetContext(aCtx);
  }
  Standard_Boolean HasOwner () {
    return (*self)->HasOwner();
  }
  const Handle_Standard_Transient & 	GetOwner () {
    return (*self)->GetOwner();
  }
  void SetOwner (const Handle_Standard_Transient &theApplicativeEntity) {
    (*self)->SetOwner(theApplicativeEntity);
  }
  void ClearOwner () {
    (*self)->ClearOwner();
  }
  Standard_Boolean ProcessDragging (const Handle_AIS_InteractiveContext &theCtx, const Handle_V3d_View &theView,
                                    const Handle_SelectMgr_EntityOwner &theOwner, const Graphic3d_Vec2i &theDragFrom,
                                    const Graphic3d_Vec2i &theDragTo, const AIS_DragAction theAction) {
    return (*self)->ProcessDragging(theCtx, theView, theOwner, theDragFrom, theDragTo, theAction);
  }
  Handle_AIS_InteractiveContext GetContext () {
    return (*self)->GetContext();
  }
  Standard_Boolean HasPresentation () {
    return (*self)->HasPresentation();
  }
  opencascade::handle< Prs3d_Presentation > Presentation () {
    return (*self)->Presentation();
  }
  void DumpJson (Standard_OStream &theOStream, Standard_Integer theDepth=-1) {
    (*self)->DumpJson(theOStream, theDepth);
  }
}  

%{
#include <AIS_Axis.hxx>
%}

%rename(AIS_Axis) Handle_AIS_Axis;

%nodefaultdtor Handle_AIS_Axis;
class Handle_AIS_Axis : public Handle_AIS_InteractiveObject
{
  Handle_AIS_Axis()=0;
};

%extend Handle_AIS_Axis
{
  Handle_AIS_Axis (const Handle_Geom_Line &aComponent) {
    return new Handle_AIS_Axis(new AIS_Axis(aComponent));
  }
  Handle_AIS_Axis (const Handle_Geom_Axis2Placement &aComponent, const AIS_TypeOfAxis anAxisType) {
    return new Handle_AIS_Axis(new AIS_Axis(aComponent, anAxisType));
  }
  Handle_AIS_Axis (const Handle_Geom_Axis1Placement &anAxis) {
    return new Handle_AIS_Axis(new AIS_Axis(anAxis));
  }
  Handle_AIS_Axis (const gp_Ax1 &theAxis, const Standard_Real theLength=-1) {
    return new Handle_AIS_Axis(new AIS_Axis(theAxis, theLength));
  }
  void Delete () {
    self->~Handle_AIS_Axis();
  }  
  const Handle_Geom_Line & Component () {
    return (*self)->Component();
  }
  void SetComponent (const Handle_Geom_Line &aComponent) {
    (*self)->SetComponent(aComponent);
  }
  const Handle_Geom_Axis2Placement & Axis2Placement () {
    return (*self)->Axis2Placement();
  }
  void SetAxis2Placement (const Handle_Geom_Axis2Placement &aComponent, const AIS_TypeOfAxis anAxisType) {
    (*self)->SetAxis2Placement(aComponent, anAxisType);
  }
  void SetAxis1Placement (const Handle_Geom_Axis1Placement &anAxis) {
    (*self)->SetAxis1Placement(anAxis);
  }
  AIS_TypeOfAxis TypeOfAxis () {
    return (*self)->TypeOfAxis();
  }
  void SetTypeOfAxis (const AIS_TypeOfAxis theTypeAxis) {
    (*self)->SetTypeOfAxis(theTypeAxis);
  }
  Standard_Boolean IsXYZAxis () {
    return (*self)->IsXYZAxis();
  }
  Standard_Boolean AcceptDisplayMode (const Standard_Integer aMode) {
    return (*self)->AcceptDisplayMode(aMode);
  }
  Standard_Integer Signature () {
    return (*self)->Signature();
  }
  AIS_KindOfInteractive Type () {
    return (*self)->Type();
  }
  void SetColor (const Quantity_Color &aColor) {
    (*self)->SetColor(aColor);
  }
  void SetWidth (const Standard_Real aValue) {
    (*self)->SetWidth(aValue);
  }
  void SetDisplayAspect (const Handle_Prs3d_LineAspect &theNewDatumAspect) {
    (*self)->SetDisplayAspect(theNewDatumAspect);
  }
  void UnsetColor () {
    (*self)->UnsetColor();
  }
  void UnsetWidth () {
    (*self)->UnsetWidth();
  }
}   

%{
#include <AIS_CameraFrustum.hxx>
%}

class AIS_CameraFrustum : public AIS_InteractiveObject {
 public:
  AIS_CameraFrustum ();
  void SetCameraFrustum (const Handle_Graphic3d_Camera &theCamera);
  virtual void SetColor (const Quantity_Color &theColor) override;
  virtual void UnsetColor () override;
  virtual void UnsetTransparency () override;
  virtual Standard_Boolean 	AcceptDisplayMode (const Standard_Integer theMode) const override;
};

%{
#include <AIS_Circle.hxx>
%}

%rename(AIS_Circle) Handle_AIS_Circle;

%nodefaultdtor Handle_AIS_Circle;
class Handle_AIS_Circle : public Handle_AIS_InteractiveObject
{
  Handle_AIS_Circle()=0;
};

%extend Handle_AIS_Circle
{
  Handle_AIS_Circle (const Handle_Geom_Circle &aCircle) {
    return new Handle_AIS_Circle(new AIS_Circle(aCircle));
  }
  Handle_AIS_Circle (const Handle_Geom_Circle &theCircle, const Standard_Real theUStart, 
                     const Standard_Real theUEnd, const Standard_Boolean theIsFilledCircleSens=Standard_False) {
    return new Handle_AIS_Circle(new AIS_Circle(theCircle, theUStart, theUEnd, theIsFilledCircleSens));
  }
  void Delete () {
    self->~Handle_AIS_Circle();
  }    
  Standard_Integer Signature () {
    return (*self)->Signature();
  }
  AIS_KindOfInteractive Type () {
    return (*self)->Type();
  }
  const Handle_Geom_Circle & Circle () {
    return (*self)->Circle();
  }
  void Parameters (Standard_Real &theU1, Standard_Real &theU2) {
    (*self)->Parameters(theU1, theU2);
  }
  void SetCircle (const Handle_Geom_Circle &theCircle) {
    (*self)->SetCircle(theCircle);
  }
  void SetFirstParam (const Standard_Real theU) {
    (*self)->SetFirstParam(theU);
  }
  void SetLastParam (const Standard_Real theU) {
    (*self)->SetLastParam(theU);
  }
  void SetColor (const Quantity_Color &aColor) {
    (*self)->SetColor(aColor);
  }
  void SetWidth (const Standard_Real aValue) {
    (*self)->SetWidth(aValue);
  }
  void UnsetColor () {
    (*self)->UnsetColor();
  }
  void UnsetWidth () {
    (*self)->UnsetWidth();
  }
  Standard_Boolean IsFilledCircleSens () {
    return (*self)->IsFilledCircleSens();
  }
  void SetFilledCircleSens (const Standard_Boolean theIsFilledCircleSens) {
    (*self)->SetFilledCircleSens(theIsFilledCircleSens);
  }
}
  
%{
#include <AIS_ColorScale.hxx>
%}

enum Aspect_TypeOfColorScaleData { Aspect_TOCSD_AUTO , Aspect_TOCSD_USER };

%rename(AIS_ColorScale) Handle_AIS_ColorScale;

%nodefaultdtor Handle_AIS_ColorScale;
class Handle_AIS_ColorScale : public Handle_AIS_InteractiveObject
{
  Handle_AIS_ColorScale()=0;
};

%extend Handle_AIS_ColorScale
{
  Handle_AIS_ColorScale () {
    return new Handle_AIS_ColorScale(new AIS_ColorScale());
  }
  void Delete () {
    self->~Handle_AIS_ColorScale();
  }
  Standard_Boolean FindColor (const Standard_Real theValue, Quantity_Color &theColor) {
    return (*self)->FindColor(theValue, theColor);
  }
  Standard_Real GetMin () {
    return (*self)->GetMin();
  }
  void SetMin (const Standard_Real theMin) {
    (*self)->SetMin(theMin);
  }
  Standard_Real GetMax () {
    return (*self)->GetMax();
  }
  void SetMax (const Standard_Real theMax) {
    (*self)->SetMax(theMax);
  }
  void GetRange (Standard_Real &theMin, Standard_Real &theMax) {
    (*self)->GetRange(theMin, theMax);
  }
  void SetRange (const Standard_Real theMin, const Standard_Real theMax) {
    (*self)->SetRange(theMin, theMax);
  }
  Standard_Real HueMin () {
    return (*self)->HueMin();
  }
  Standard_Real HueMax () {
    return (*self)->HueMax();
  }
  void HueRange (Standard_Real &theMinAngle, Standard_Real &theMaxAngle) {
    (*self)->HueRange(theMinAngle, theMaxAngle);
  }
  void SetHueRange (const Standard_Real theMinAngle, const Standard_Real theMaxAngle) {
    (*self)->SetHueRange(theMinAngle, theMaxAngle);
  }
  void ColorRange (Quantity_Color &theMinColor, Quantity_Color &theMaxColor) {
    (*self)->ColorRange(theMinColor, theMaxColor);
  }
  void SetColorRange (const Quantity_Color &theMinColor, const Quantity_Color &theMaxColor) {
    (*self)->SetColorRange(theMinColor, theMaxColor);
  }
  Aspect_TypeOfColorScaleData GetLabelType () {
    return (*self)->GetLabelType();
  }
  void SetLabelType (const Aspect_TypeOfColorScaleData theType) {
    (*self)->SetLabelType(theType);
  }
  Aspect_TypeOfColorScaleData GetColorType () {
    return (*self)->GetColorType();
  }
  void SetColorType (const Aspect_TypeOfColorScaleData theType) {
    (*self)->SetColorType(theType);
  }
  Standard_Integer GetNumberOfIntervals () {
    return (*self)->GetNumberOfIntervals();
  }
  void SetNumberOfIntervals (const Standard_Integer theNum) {
    (*self)->SetNumberOfIntervals(theNum);
  }
  const TCollection_ExtendedString & GetTitle () {
    return (*self)->GetTitle();
  }
  void SetTitle (const TCollection_ExtendedString &theTitle) {
    (*self)->SetTitle(theTitle);
  }
  const TCollection_AsciiString & GetFormat () {
    return (*self)->GetFormat();
  }
  const TCollection_AsciiString & Format () {
    return (*self)->Format();
  }
  void SetFormat (const TCollection_AsciiString &theFormat) {
    (*self)->SetFormat(theFormat);
  }
  TCollection_ExtendedString GetLabel (const Standard_Integer theIndex) {
    return (*self)->GetLabel(theIndex);
  }
  Quantity_Color GetIntervalColor (const Standard_Integer theIndex) {
    return (*self)->GetIntervalColor(theIndex);
  }
  void SetIntervalColor (const Quantity_Color &theColor, const Standard_Integer theIndex) {
    (*self)->SetIntervalColor(theColor, theIndex);
  }
  void GetLabels (TColStd_SequenceOfExtendedString &theLabels) {
    (*self)->GetLabels(theLabels);
  }
  const TColStd_SequenceOfExtendedString & Labels () {
    return (*self)->Labels();
  }
  void SetLabels (const TColStd_SequenceOfExtendedString &theSeq) {
    (*self)->SetLabels(theSeq);
  }
  void GetColors (Aspect_SequenceOfColor &theColors) {
    (*self)->GetColors(theColors);
  }
  const Aspect_SequenceOfColor & GetColors () {
    return (*self)->GetColors();
  }
  void SetColors (const Aspect_SequenceOfColor &theSeq) {
    (*self)->SetColors(theSeq);
  }
  void SetUniformColors (Standard_Real theLightness, Standard_Real theHueFrom, Standard_Real theHueTo) {
    (*self)->SetUniformColors(theLightness, theHueFrom, theHueTo);
  }
  Aspect_TypeOfColorScalePosition GetLabelPosition () {
    return (*self)->GetLabelPosition();
  }
  void SetLabelPosition (const Aspect_TypeOfColorScalePosition thePos) {
    (*self)->SetLabelPosition(thePos);
  }
  Aspect_TypeOfColorScalePosition GetTitlePosition () {
    return (*self)->GetTitlePosition();
  }
  Standard_Boolean IsReversed () {
    return (*self)->IsReversed();
  }
  void SetReversed (const Standard_Boolean theReverse) {
    (*self)->SetReversed(theReverse);
  }
  Standard_Boolean IsSmoothTransition () {
    return (*self)->IsSmoothTransition();
  }
  void SetSmoothTransition (const Standard_Boolean theIsSmooth) {
    (*self)->SetSmoothTransition(theIsSmooth);
  }
  Standard_Boolean IsLabelAtBorder () {
    return (*self)->IsLabelAtBorder();
  }
  void SetLabelAtBorder (const Standard_Boolean theOn) {
    (*self)->SetLabelAtBorder(theOn);
  }
  Standard_Boolean IsLogarithmic () {
    return (*self)->IsLogarithmic();
  }
  void SetLogarithmic (const Standard_Boolean isLogarithmic) {
    (*self)->SetLogarithmic(isLogarithmic);
  }
  void SetLabel (const TCollection_ExtendedString &theLabel, const Standard_Integer theIndex) {
    (*self)->SetLabel(theLabel, theIndex);
  }
  void GetSize (Standard_Integer &theBreadth, Standard_Integer &theHeight) {
    (*self)->GetSize(theBreadth, theHeight);
  }
  void SetSize (const Standard_Integer theBreadth, const Standard_Integer theHeight) {
    (*self)->SetSize(theBreadth, theHeight);
  }
  Standard_Integer GetBreadth () {
    return (*self)->GetBreadth();
  }
  void SetBreadth (const Standard_Integer theBreadth) {
    (*self)->SetBreadth(theBreadth);
  }
  Standard_Integer GetHeight () {
    return (*self)->GetHeight();
  }
  void SetHeight (const Standard_Integer theHeight) {
    (*self)->SetHeight(theHeight);
  }
  void GetPosition (Standard_Real &theX, Standard_Real &theY) {
    (*self)->GetPosition(theX, theY);
  }
  void SetPosition (const Standard_Integer theX, const Standard_Integer theY) {
    (*self)->SetPosition(theX, theY);
  }
  Standard_Integer GetXPosition () {
    return (*self)->GetXPosition();
  }
  void SetXPosition (const Standard_Integer theX) {
    (*self)->SetXPosition(theX);
  }
  Standard_Integer GetYPosition () {
    return (*self)->GetYPosition();
  }
  void SetYPosition (const Standard_Integer theY) {
    (*self)->SetYPosition(theY);
  }
  Standard_Integer GetTextHeight () {
    return (*self)->GetTextHeight();
  }
  void SetTextHeight (const Standard_Integer theHeight) {
    (*self)->SetTextHeight(theHeight);
  }
  Standard_Integer TextWidth (const TCollection_ExtendedString &theText) {
    return (*self)->TextWidth(theText);
  }
  Standard_Integer TextHeight (const TCollection_ExtendedString &theText) {
    return (*self)->TextHeight(theText);
  }
  void TextSize (const TCollection_ExtendedString &theText, const Standard_Integer theHeight, Standard_Integer &theWidth, 
               Standard_Integer &theAscent, Standard_Integer &theDescent) {
    (*self)->TextSize(theText, theHeight, theWidth, theAscent, theDescent);
  }
  Standard_Boolean AcceptDisplayMode (const Standard_Integer theMode) {
    return (*self)->AcceptDisplayMode(theMode);
  }
  void Compute (const Handle_PrsMgr_PresentationManager &thePrsMgr, const opencascade::handle< Prs3d_Presentation > &thePresentation, const Standard_Integer theMode) {
    (*self)->Compute(thePrsMgr, thePresentation, theMode);
  }
  static Standard_Boolean FindColor (const Standard_Real theValue, const Standard_Real theMin, const Standard_Real theMax, const Standard_Integer theColorsCount,
                                     const Graphic3d_Vec3d &theColorHlsMin, const Graphic3d_Vec3d &theColorHlsMax, Quantity_Color &theColor) {
    return AIS_ColorScale::FindColor(theValue, theMin, theMax, theColorsCount, theColorHlsMin, theColorHlsMax, theColor);
  }
  static Standard_Boolean FindColor (const Standard_Real theValue, const Standard_Real theMin, const Standard_Real theMax,
                                   const Standard_Integer theColorsCount, Quantity_Color &theColor) {
    return AIS_ColorScale::FindColor(theValue, theMin, theMax, theColorsCount, theColor);
  }
  static Standard_Real hueToValidRange (const Standard_Real theHue) {
    return AIS_ColorScale::hueToValidRange(theHue);
  }
static Aspect_SequenceOfColor MakeUniformColors (Standard_Integer theNbColors, Standard_Real theLightness, Standard_Real theHueFrom, Standard_Real theHueTo) {
    return AIS_ColorScale::MakeUniformColors(theNbColors, theLightness, theHueFrom, theHueTo);
  }
}

%{
#include <AIS_ConnectedInteractive.hxx>
%}

enum PrsMgr_TypeOfPresentation3d { PrsMgr_TOP_AllView , PrsMgr_TOP_ProjectorDependent };

%rename(AIS_ConnectedInteractive) Handle_AIS_ConnectedInteractive;

%nodefaultdtor Handle_AIS_ConnectedInteractive;
class Handle_AIS_ConnectedInteractive : public Handle_AIS_InteractiveObject
{
  Handle_AIS_ConnectedInteractive()=0;
};

%extend Handle_AIS_ConnectedInteractive
{
  Handle_AIS_ConnectedInteractive (const PrsMgr_TypeOfPresentation3d aTypeOfPresentation3d=PrsMgr_TOP_AllView) {
    return new Handle_AIS_ConnectedInteractive(new AIS_ConnectedInteractive(aTypeOfPresentation3d));
  }
  void Delete () {
    self->~Handle_AIS_ConnectedInteractive();
  }  
  AIS_KindOfInteractive Type () {
    return (*self)->Type();
  }
  Standard_Integer Signature () {
    return (*self)->Signature();
  }
  void Connect (const Handle_AIS_InteractiveObject &theAnotherObj) {
    (*self)->Connect(theAnotherObj);
  }
  void Connect (const Handle_AIS_InteractiveObject &theAnotherObj, const gp_Trsf &theLocation) {
    (*self)->Connect(theAnotherObj, theLocation);
  }
  void Connect (const Handle_AIS_InteractiveObject &theAnotherObj, const Handle_TopLoc_Datum3D &theLocation) {
    (*self)->Connect(theAnotherObj, theLocation);
  }
  Standard_Boolean HasConnection () {
    return (*self)->HasConnection();
  }
  const Handle_AIS_InteractiveObject & ConnectedTo () {
    return (*self)->ConnectedTo();
  }
  void Disconnect () {
    (*self)->Disconnect();
  }
  Standard_Boolean AcceptShapeDecomposition () {
    return (*self)->AcceptShapeDecomposition();
  }
  Standard_Boolean AcceptDisplayMode (const Standard_Integer theMode) {
    return (*self)->AcceptDisplayMode(theMode);
  }
}

%{
#include <AIS_LightSource.hxx>
%}

class AIS_LightSource : public AIS_InteractiveObject {
public:
  AIS_LightSource (const Handle_Graphic3d_CLight &theLightSource);
  const Handle_Graphic3d_CLight & Light () const;
  void SetLight (const Handle_Graphic3d_CLight &theLight);
  Standard_Boolean ToDisplayName () const;
  void SetDisplayName (Standard_Boolean theToDisplay);
  Standard_Boolean ToDisplayRange () const;
  void SetDisplayRange (Standard_Boolean theToDisplay);
  Standard_Real Size () const;
  void SetSize (Standard_Real theSize);
  Standard_Integer ArcSize () const;
  void SetArcSize (Standard_Integer theSize);
  bool IsZoomable () const;
  void SetZoomable (bool theIsZoomable);
  void SetDraggable (bool theIsDraggable);
  bool ToSwitchOnClick () const;
  void SetSwitchOnClick (bool theToHandle);
  Standard_Integer NbArrows () const;
  void SetNbArrows (Standard_Integer theNbArrows);
  const Handle_Graphic3d_MarkerImage & MarkerImage (bool theIsEnabled) const;
  Aspect_TypeOfMarker MarkerType (bool theIsEnabled) const;
  void SetMarkerImage (const Handle_Graphic3d_MarkerImage &theImage, bool theIsEnabled);
  void SetMarkerType (Aspect_TypeOfMarker theType, bool theIsEnabled);
  Standard_Integer 	NbSplitsQuadric () const;
  void SetNbSplitsQuadric (Standard_Integer theNbSplits);
  Standard_Integer NbSplitsArrow () const;
  void SetNbSplitsArrow (Standard_Integer theNbSplits);
  virtual AIS_KindOfInteractive Type () const override;
};

%{
#include <AIS_Line.hxx>
%}

%rename(AIS_Line) Handle_AIS_Line;

%nodefaultdtor Handle_AIS_Line;
class Handle_AIS_Line : public Handle_AIS_InteractiveObject
{
  Handle_AIS_Line()=0;
};

%extend Handle_AIS_Line
{
  Handle_AIS_Line (const Handle_Geom_Line &aLine) {
    return new Handle_AIS_Line(new AIS_Line(aLine));
  }
  void Delete () {
    self->~Handle_AIS_Line();
  }
  Standard_Integer Signature () {
    return (*self)->Signature();
  }
  AIS_KindOfInteractive Type () {
    return (*self)->Type();
  }
  const Handle_Geom_Line & Line () {
    return (*self)->Line();
  }
  void Points (Handle_Geom_Point &thePStart, Handle_Geom_Point &thePEnd) {
    (*self)->Points(thePStart, thePEnd);
  }
  void SetLine (const Handle_Geom_Line &theLine) {
    (*self)->SetLine(theLine);
  }
  void SetPoints (const Handle_Geom_Point &thePStart, const Handle_Geom_Point &thePEnd) {
    (*self)->SetPoints(thePStart, thePEnd);
  }
  void SetColor (const Quantity_Color &aColor) {
    (*self)->SetColor(aColor);
  }
  void SetWidth (const Standard_Real aValue) {
    (*self)->SetWidth(aValue);
  }
  void UnsetColor () {
    (*self)->UnsetColor();
  }
  void UnsetWidth () {
    (*self)->UnsetWidth();
  }
}

%{
#include <AIS_Manipulator.hxx>
%}

%rename(AIS_Manipulator) Handle_AIS_Manipulator;

%nodefaultdtor Handle_AIS_Manipulator;
class Handle_AIS_Manipulator : public Handle_AIS_InteractiveObject
{
  Handle_AIS_Manipulator()=0;
};

%extend Handle_AIS_Manipulator
{
  Handle_AIS_Manipulator () {
    return new Handle_AIS_Manipulator(new AIS_Manipulator());
  }
  Handle_AIS_Manipulator (const gp_Ax2 &thePosition) {
    return new Handle_AIS_Manipulator(new AIS_Manipulator(thePosition));
  }  
  void Delete () {
    self->~Handle_AIS_Manipulator();
  }
  void SetPart (const Standard_Integer theAxisIndex, const AIS_ManipulatorMode theMode, const Standard_Boolean theIsEnabled) {
    (*self)->SetPart(theAxisIndex, theMode, theIsEnabled);
  }
  void SetPart (const AIS_ManipulatorMode theMode, const Standard_Boolean theIsEnabled) {
    (*self)->SetPart(theMode, theIsEnabled);
  }
  void Attach (const Handle_AIS_InteractiveObject &theObject) {
    (*self)->Attach(theObject);
  }
  void Attach (const Handle_AIS_ManipulatorObjectSequence &theObject) {
    (*self)->Attach(theObject);
  } 
  void EnableMode (const AIS_ManipulatorMode theMode) {
    (*self)->EnableMode(theMode);
  }
  void SetModeActivationOnDetection (const Standard_Boolean theToEnable) {
    (*self)->SetModeActivationOnDetection(theToEnable);
  }
  Standard_Boolean IsModeActivationOnDetection () {
    return (*self)->IsModeActivationOnDetection();
  }
  Standard_Boolean ProcessDragging (const Handle_AIS_InteractiveContext &theCtx, const Handle_V3d_View &theView,
                                    const Handle_SelectMgr_EntityOwner &theOwner, const Graphic3d_Vec2i &theDragFrom,
                                    const Graphic3d_Vec2i &theDragTo, const AIS_DragAction theAction) {
    return (*self)->ProcessDragging(theCtx, theView, theOwner, theDragFrom, theDragTo, theAction);
  }
  void StartTransform (const Standard_Integer theX, const Standard_Integer theY, const Handle_V3d_View &theView) {
    (*self)->StartTransform(theX, theY, theView);
  }
  void Transform (const gp_Trsf &aTrsf) {
    (*self)->Transform(aTrsf);
  }
  void StopTransform (const Standard_Boolean theToApply=Standard_True) {
    (*self)->StopTransform(theToApply);
  }
  gp_Trsf Transform (const Standard_Integer theX, const Standard_Integer theY, const Handle_V3d_View &theView) {
    return (*self)->Transform(theX, theY, theView);
  }
  Standard_Boolean ObjectTransformation (const Standard_Integer theX, const Standard_Integer theY, const Handle_V3d_View &theView, gp_Trsf &theTrsf) {
    return (*self)->ObjectTransformation(theX, theY, theView, theTrsf);
  }
  void DeactivateCurrentMode () {
    (*self)->DeactivateCurrentMode();
  }
  void Detach () {
    (*self)->Detach();
  }
  Handle_AIS_ManipulatorObjectSequence Objects () {
    return (*self)->Objects();
  }
  Handle_AIS_InteractiveObject Object () {
    return (*self)->Object();
  }
  Handle_AIS_InteractiveObject Object (const Standard_Integer theIndex) {
    return (*self)->Object(theIndex);
  }
  Standard_Boolean IsAttached () {
    return (*self)->IsAttached();
  }
  Standard_Boolean HasActiveMode () {
    return (*self)->HasActiveMode();
  }
  Standard_Boolean HasActiveTransformation () {
    return (*self)->HasActiveTransformation();
  }
  gp_Trsf StartTransformation () {
    return (*self)->StartTransformation();
  }
  gp_Trsf StartTransformation (Standard_Integer theIndex) {
    return (*self)->StartTransformation(theIndex);
  }
  //Configuration of graphical transformations
  void SetZoomPersistence (const Standard_Boolean theToEnable) {
    (*self)->SetZoomPersistence(theToEnable);
  }
  Standard_Boolean ZoomPersistence () {
    return (*self)->ZoomPersistence();
  }
  void SetTransformPersistence (const Handle_Graphic3d_TransformPers &theTrsfPers) {
    (*self)->SetTransformPersistence(theTrsfPers);
  }
  //Setters for parameters
  AIS_ManipulatorMode 	ActiveMode () {
    return (*self)->ActiveMode();
  }
  Standard_Integer ActiveAxisIndex () {
    return (*self)->ActiveAxisIndex();
  }
  const gp_Ax2 & Position () {
    return (*self)->Position();
  }
  void SetPosition (const gp_Ax2 &thePosition) {
    (*self)->SetPosition(thePosition);
  }
  Standard_ShortReal Size () {
    return (*self)->Size();
  }
  void SetSize (const Standard_ShortReal theSideLength) {
    (*self)->SetSize(theSideLength);
  }
  void SetGap (const Standard_ShortReal theValue) {
    (*self)->SetGap(theValue);
  }
  void Compute (const Handle_PrsMgr_PresentationManager &thePrsMgr, const opencascade::handle< Prs3d_Presentation > &thePrs, const Standard_Integer theMode=0) {
    (*self)->Compute(thePrsMgr, thePrs, theMode);
  }
  void ComputeSelection (const Handle_SelectMgr_Selection &theSelection, const Standard_Integer theMode) {
    (*self)->ComputeSelection(theSelection, theMode);
  }
  Standard_Boolean IsAutoHilight () {
    return (*self)->IsAutoHilight();
  }
  void ClearSelected () {
    (*self)->ClearSelected();
  }
  void HilightSelected (const Handle_PrsMgr_PresentationManager &thePM, const SelectMgr_SequenceOfOwner &theSeq) {
    (*self)->HilightSelected(thePM, theSeq);
  }
  void HilightOwnerWithColor (const Handle_PrsMgr_PresentationManager &thePM, const Handle_Prs3d_Drawer &theStyle,
                              const Handle_SelectMgr_EntityOwner &theOwner)  {
    (*self)->HilightOwnerWithColor(thePM, theStyle, theOwner);
  }
}

%{
#include <AIS_MediaPlayer.hxx>
%}

class AIS_MediaPlayer : public AIS_InteractiveObject
{
public:
  AIS_MediaPlayer ();
  ~AIS_MediaPlayer ();
  void SetCallback (Graphic3d_MediaTextureSet::CallbackOnUpdate_t theCallbackFunction, void *theCallbackUserPtr);
  void OpenInput (const TCollection_AsciiString &thePath, Standard_Boolean theToWait);
  bool PresentFrame (const Graphic3d_Vec2i &theLeftCorner, const Graphic3d_Vec2i &theMaxSize);
  const opencascade::handle< Media_PlayerContext > & PlayerContext () const;
  void PlayPause ();
  void SetClosePlayer ();
  double Duration () const;
};

%{
#include <AIS_MultipleConnectedInteractive.hxx>
%}

%rename(AIS_MultipleConnectedInteractive) Handle_AIS_MultipleConnectedInteractive;

%nodefaultdtor Handle_AIS_MultipleConnectedInteractive;
class Handle_AIS_MultipleConnectedInteractive : public Handle_AIS_InteractiveObject
{
  Handle_AIS_MultipleConnectedInteractive()=0;
};

%extend Handle_AIS_MultipleConnectedInteractive
{
  Handle_AIS_MultipleConnectedInteractive () {
    return new Handle_AIS_MultipleConnectedInteractive(new AIS_MultipleConnectedInteractive());
  } 
  void Delete () {
    self->~Handle_AIS_MultipleConnectedInteractive();
  }
  Handle_AIS_InteractiveObject Connect (const Handle_AIS_InteractiveObject &theAnotherObj, const Handle_TopLoc_Datum3D &theLocation,
                                         const Handle_Graphic3d_TransformPers &theTrsfPers) {
    return (*self)->Connect(theAnotherObj, theLocation, theTrsfPers);
  }
  AIS_KindOfInteractive Type () {
    return (*self)->Type();
  }
  Standard_Integer Signature () {
    return (*self)->Signature();
  }
  Standard_Boolean HasConnection () {
    return (*self)->HasConnection();
  }
  void Disconnect (const Handle_AIS_InteractiveObject &theInteractive) {
    (*self)->Disconnect(theInteractive);
  }
  void DisconnectAll () {
    (*self)->DisconnectAll();
  }
  Standard_Boolean AcceptShapeDecomposition () {
    return (*self)->AcceptShapeDecomposition();
  }
  const Handle_SelectMgr_EntityOwner & GetAssemblyOwner () {
    return (*self)->GetAssemblyOwner();
  }
  Handle_SelectMgr_EntityOwner GlobalSelOwner () {
    return (*self)->GlobalSelOwner();
  }
  void SetContext (const Handle_AIS_InteractiveContext &theCtx) {
    (*self)->SetContext(theCtx);
  }
  Handle_AIS_InteractiveObject Connect (const Handle_AIS_InteractiveObject &theAnotherObj) {
    return (*self)->Connect(theAnotherObj);
  }
  Handle_AIS_InteractiveObject Connect (const Handle_AIS_InteractiveObject &theAnotherObj, const gp_Trsf &theLocation) {
    return (*self)->Connect(theAnotherObj, theLocation);
  }
  Handle_AIS_InteractiveObject Connect (const Handle_AIS_InteractiveObject &theAnotherObj, const gp_Trsf &theLocation,
                                         const Handle_Graphic3d_TransformPers &theTrsfPers) {
    return (*self)->Connect(theAnotherObj, theLocation, theTrsfPers);
  }
}

%{
#include <AIS_MultipleConnectedInteractive.hxx>
%}

enum Select3D_TypeOfSensitivity { Select3D_TOS_INTERIOR , Select3D_TOS_BOUNDARY };

enum AIS_TypeOfPlane { AIS_TOPL_Unknown , AIS_TOPL_XYPlane , AIS_TOPL_XZPlane , AIS_TOPL_YZPlane };

%rename(AIS_Plane) Handle_AIS_Plane;

%nodefaultdtor Handle_AIS_Plane;
class Handle_AIS_Plane : public Handle_AIS_InteractiveObject
{
  Handle_AIS_Plane()=0;
};

%extend Handle_AIS_Plane
{
  Handle_AIS_Plane (const Handle_Geom_Plane &aComponent, const Standard_Boolean aCurrentMode=Standard_False) {
    return new Handle_AIS_Plane(new AIS_Plane(aComponent, aCurrentMode));
  }
  Handle_AIS_Plane (const Handle_Geom_Plane &aComponent, const gp_Pnt &aCenter, const Standard_Boolean aCurrentMode=Standard_False) {
    return new Handle_AIS_Plane(new AIS_Plane(aComponent, aCenter, aCurrentMode));
  }
  Handle_AIS_Plane (const Handle_Geom_Plane &aComponent, const gp_Pnt &aCenter, const gp_Pnt &aPmin,
 	                  const gp_Pnt &aPmax, const Standard_Boolean aCurrentMode=Standard_False) {
    return new Handle_AIS_Plane(new AIS_Plane(aComponent, aCenter, aPmin, aPmax, aCurrentMode));
  }
  Handle_AIS_Plane (const Handle_Geom_Axis2Placement &aComponent, const AIS_TypeOfPlane aPlaneType, const Standard_Boolean aCurrentMode=Standard_False) {
    return new Handle_AIS_Plane(new AIS_Plane(aComponent, aPlaneType, aCurrentMode));
  }
  void Delete () {
    self->~Handle_AIS_Plane();
  }  
  void SetSize (const Standard_Real aValue) {
    (*self)->SetSize(aValue);
  }
  void SetSize (const Standard_Real Xval, const Standard_Real YVal) {
    (*self)->SetSize(Xval, YVal);
  }
  void UnsetSize () {
    (*self)->UnsetSize();
  }
  Standard_Boolean Size (Standard_Real &X, Standard_Real &Y) {
    return (*self)->Size(X, Y);
  }
  Standard_Boolean HasOwnSize () {
    return (*self)->HasOwnSize();
  }
  void SetMinimumSize (const Standard_Real theValue) {
    (*self)->SetMinimumSize(theValue);
  }
  void UnsetMinimumSize () {
    (*self)->UnsetMinimumSize();
  }
  Standard_Boolean HasMinimumSize () {
    return (*self)->HasMinimumSize();
  }
  Standard_Integer Signature () {
    return (*self)->Signature();
  }
  AIS_KindOfInteractive Type () {
    return (*self)->Type();
  }
  const Handle_Geom_Plane & Component () {
    return (*self)->Component();
  }
  void SetComponent (const Handle_Geom_Plane &aComponent) {
    (*self)->SetComponent(aComponent);
  }
  Standard_Boolean PlaneAttributes (Handle_Geom_Plane &aComponent, gp_Pnt &aCenter, gp_Pnt &aPmin, gp_Pnt &aPmax) {
    return (*self)->PlaneAttributes(aComponent, aCenter, aPmin, aPmax);
  }
  void SetPlaneAttributes (const Handle_Geom_Plane &aComponent, const gp_Pnt &aCenter, const gp_Pnt &aPmin, const gp_Pnt &aPmax) {
    (*self)->SetPlaneAttributes(aComponent, aCenter, aPmin, aPmax);
  }
  const gp_Pnt & Center () {
    return (*self)->Center();
  }
  void SetCenter (const gp_Pnt &theCenter) {
    (*self)->SetCenter(theCenter);
  }
  void SetAxis2Placement (const Handle_Geom_Axis2Placement &aComponent, const AIS_TypeOfPlane aPlaneType) {
    (*self)->SetAxis2Placement(aComponent, aPlaneType);
  }
  Handle_Geom_Axis2Placement Axis2Placement () {
    return (*self)->Axis2Placement();
  }
  AIS_TypeOfPlane TypeOfPlane () {
    return (*self)->TypeOfPlane();
  }
  Standard_Boolean IsXYZPlane () {
    return (*self)->IsXYZPlane();
  }
  Standard_Boolean CurrentMode () {
    return (*self)->CurrentMode();
  }
  void SetCurrentMode (const Standard_Boolean theCurrentMode) {
    (*self)->SetCurrentMode(theCurrentMode);
  }
  Standard_Boolean AcceptDisplayMode (const Standard_Integer aMode) {
    return (*self)->AcceptDisplayMode(aMode);
  }
  void SetContext (const Handle_AIS_InteractiveContext &aCtx) {
    (*self)->SetContext(aCtx);
  }
  Select3D_TypeOfSensitivity TypeOfSensitivity () {
    return (*self)->TypeOfSensitivity();
  }
  void SetTypeOfSensitivity (Select3D_TypeOfSensitivity theTypeOfSensitivity) {
    (*self)->SetTypeOfSensitivity(theTypeOfSensitivity);
  }
  void ComputeSelection (const Handle_SelectMgr_Selection &theSelection, const Standard_Integer theMode) {
    (*self)->ComputeSelection(theSelection, theMode);
  }
  void SetColor (const Quantity_Color &aColor) {
    (*self)->SetColor(aColor);
  }
  void UnsetColor () {
    (*self)->UnsetColor();
  }
}
