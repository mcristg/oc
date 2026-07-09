%module "vis";

%nodefaultctor;

%typemap(cin) bool ":bool";
%typemap(cout) bool ":bool";
%typemap(ctype) bool "bool";
%typemap(out) bool "$result = (bool)$1;";
%typemap(lispclass) bool "cl:boolean";
%typemap(lispclass) float "cl:single-float";
%typemap(lispclass) double "cl:double-float";

%{
EXTERN void (* signal_lisp_error) (const char* message);
  %}

%insert(swiglisp) %{
(cl:in-package #:oc)
  %}

%{
#include <Standard_Failure.hxx>
#include <Standard_ErrorHandler.hxx>
  %}



%include exception.i

%exception {
  try
    {
      //OCC_CATCH_SIGNALS
      $action
	}
  catch(Standard_Failure const& error)
    {
        char *error_name = (char*) error.ExceptionType();
	    char *error_message = (char*) error.what();
	    std::string message;
	    if (error_name) message += std::string(error_name) + "\n";
	    if (error_message) message += std::string(error_message);
	    // log SWIG specific debug information
	    message += "\nwrapper details:\n  * symname: $symname\n  * wrapname: $wrapname\n  * fulldecl: $fulldecl";
	    signal_lisp_error(message.c_str());
    }
 }

enum  AIS_KindOfInteractive {
  AIS_KindOfInteractive_None, 
  AIS_KindOfInteractive_Datum, 
  AIS_KindOfInteractive_Shape,
  AIS_KindOfInteractive_Object,
  AIS_KindOfInteractive_Relation,
  AIS_KindOfInteractive_Dimension,
  AIS_KindOfInteractive_LightSource,
  AIS_KOI_None = 0,
  AIS_KOI_Datum,
  AIS_KOI_Shape,
  AIS_KOI_Object,
  AIS_KOI_Relation,
  AIS_KOI_Dimension
};

enum AIS_DragAction {
  AIS_DragAction_Start , AIS_DragAction_Confirmed , AIS_DragAction_Update , AIS_DragAction_Stop ,
  AIS_DragAction_Abort
};

enum PrsMgr_TypeOfPresentation3d { PrsMgr_TOP_AllView , PrsMgr_TOP_ProjectorDependent };

enum AIS_TypeOfAxis { AIS_TOAX_Unknown , AIS_TOAX_XAxis , AIS_TOAX_YAxis , AIS_TOAX_ZAxis };

enum Aspect_TypeOfColorScaleData { Aspect_TOCSD_AUTO , Aspect_TOCSD_USER };

enum Aspect_TypeOfColorScalePosition { Aspect_TOCSP_NONE , Aspect_TOCSP_LEFT , Aspect_TOCSP_RIGHT , Aspect_TOCSP_CENTER };

enum ManipulatorSkin { ManipulatorSkin_Shaded , ManipulatorSkin_Flat };

enum Select3D_TypeOfSensitivity { Select3D_TOS_INTERIOR , Select3D_TOS_BOUNDARY };

enum AIS_TypeOfPlane { AIS_TOPL_Unknown , AIS_TOPL_XYPlane , AIS_TOPL_XZPlane , AIS_TOPL_YZPlane };


%{
#include <Standard.hxx>
#include <Standard_DefineAlloc.hxx>
#include <Standard_Handle.hxx>
#include <Standard_Transient.hxx>
#include <SelectMgr_ViewerSelector.hxx>
#include <V3d_Viewer.hxx>
#include <V3d_View.hxx>
#include <TopoDS_Shape.hxx>
#include <Graphic3d_Structure.hxx>
#include <PrsMgr_Presentation.hxx>
#include <Geom_Line.hxx>
#include <Geom_Axis2Placement.hxx>
#include <Geom_Axis1Placement.hxx>
#include <Geom_Circle.hxx>
#include <Geom_Point.hxx>
#include <AIS_Plane.hxx>
#include <Geom_Plane.hxx>

#include <AIS_Shape.hxx>

%}

%{
typedef occ::handle<Standard_Transient> Handle_Standard_Transient;

EXTERN int _wrap_Handle_Standard_Transient_GetRefCount (Handle_Standard_Transient *larg1);
EXTERN void _wrap_Handle_Standard_Transient_IncrementRefCounter (Handle_Standard_Transient *larg1);
EXTERN int _wrap_Handle_Standard_Transient_DecrementRefCounter (Handle_Standard_Transient *larg1);
EXTERN Standard_Transient *_wrap_Handle_Standard_Transient_get (Handle_Standard_Transient *larg1);
%}
   
%include "ais/ais-animation.i";
%include "ais/ais-interactive-context.i";
%include "ais/ais-Interactive-object.i";

%include "tkservice/graphic-3d.i";
