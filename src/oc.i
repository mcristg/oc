%module "oc";

%nodefaultctor;

%typemap(cin) bool ":bool";
%typemap(cout) bool ":bool";
%typemap(ctype) bool "bool";
%typemap(out) bool "$result = (bool)$1;";
%typemap(lispclass) bool "cl:boolean";
%typemap(lispclass) float "cl:single-float";
%typemap(lispclass) double "cl:double-float";

%{
EXPORT void (* signal_lisp_error) (const char* message);

void (* signal_lisp_error) (const char* message) = nullptr;
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
      OCC_CATCH_SIGNALS
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

%insert(swiglisp) %{
(cffi:defcvar "signal_lisp_error" :pointer)
  
(cffi:defcallback signal-lisp-error :void ((message :string))
    (cl:error "~S" message))

(cl:defun init-occ ()
  (cl:setf *signal-lisp-error* (cffi:get-callback 'signal-lisp-error)))
     %}

/**
 *
 */
enum IFSelect_ReturnStatus {
 IFSelect_RetVoid,
 IFSelect_RetDone,
 IFSelect_RetError,
 IFSelect_RetFail,
 IFSelect_RetStop
};

%{     
using namespace std;
  %}

%include "standard/standard.i";
%include "stdt/standard-transient.i";
%include "collections/tcol.i";
%include "gp/gp.i";
%include "top-abs/topabs.i";
%include "topods/topods.i";
%include "geom-abs/geomabs.i";
%include "top-tools/toptools.i";
%include "brep-builder/brep.i";
%include "misc/geomlprop_slprops.i";
%include "brep-tools/breptools.i";
%include "brep-builder-api/brepbuilderapi.i";
%include "brep-offset-api/brepoffsetapi.i";
%include "brep-prim-api/brepprimapi.i";
%include "brep-algo-api/brepalgoapi.i";
%include "poly/poly.i";
%include "geom2d/geom2d.i";
%include "geom/geom.i";
%include "brep-lib/breplib.i";
%include "brep-fillet-api/brepfilletapi.i";
%include "brep-check/brepcheck.i";
%include "shape-build/shapebuild.i";
%include "xscontrol/xscontrol.i";
%include "shape-fix/shapefix.i";
%include "misc/shapeanalysis.i";
%include "misc/apiheadersection-makeheader.i";
%include "misc/shapeupgrade.i";
%include "geom-api/geomapi.i";
%include "gc/gc.i";
%include "gce2d/gce2d.i"; #using GCE2d_MakeSegment = class GC_MakeSegment2d’ is deprecated: GCE2d_MakeSegment is deprecated since OCCT 8.0.0. Use GC_MakeSegment2d instead.
%include "bnd/bnd-box.i";
%include "bnd-lib/bnd-lib.i";
%include "cpnts/adaptor2d.i";
%include "cpnts/adaptor3d.i";
%include "cpnts/cpnts.i";

%{
#include <TopExp.hxx>
  %}


class TopLoc_Location
{
	public:
	TopLoc_Location ();
	TopLoc_Location (const gp_Trsf& T);
	bool IsIdentity();
	const gp_Trsf& Transformation();
};

class TopExp
{
	public:
	static void Vertices(const TopoDS_Edge& E,TopoDS_Vertex& Vfirst,TopoDS_Vertex& Vlast,const bool CumOri = false) ;
	static bool CommonVertex(const TopoDS_Edge& E1, const TopoDS_Edge& E2, TopoDS_Vertex& V) ;
};

/**
 * TopExp_Explorer
 */
%{#include "TopExp_Explorer.hxx"%}
class TopExp_Explorer
{
	public:
	TopExp_Explorer();
	TopExp_Explorer(const TopoDS_Shape& S,const TopAbs_ShapeEnum ToFind,
		const TopAbs_ShapeEnum ToAvoid = TopAbs_SHAPE);
	void Init(const TopoDS_Shape& S, const TopAbs_ShapeEnum ToFind, 
		const TopAbs_ShapeEnum ToAvoid = TopAbs_SHAPE) ;
	bool More() const;
	void Next() ;
	const TopoDS_Shape& Current();
};

/**
 * BRepBndLib
 */
%{#include "BRepBndLib.hxx"%}
%nodefaultctor BRepBndLib;
%nodefaultdtor BRepBndLib;
class BRepBndLib
{
	public:
	static void Add(const TopoDS_Shape& shape,Bnd_Box& bndBox);
};

/**
 * GProp_GProps
 */
 %{#include "GProp_GProps.hxx"%}
 class GProp_GProps
 {
	 public:
	 GProp_GProps();
	 double Mass() const;
 };
 
/**
 * BRepGProp
 */
%{#include "BRepGProp.hxx"%}
class BRepGProp
{
	public:
	static void LinearProperties(const TopoDS_Shape& shape, GProp_GProps& properties);
        static void VolumeProperties(const TopoDS_Shape& shape, GProp_GProps& properties, const bool onlyClosed = false) ;
        static double VolumeProperties(const TopoDS_Shape& shape, GProp_GProps& properties, const double Eps, const bool onlyClosed = false) ;
        static void SurfaceProperties(const TopoDS_Shape& shape, GProp_GProps& properties) ;
        static double SurfaceProperties(const TopoDS_Shape& shape, GProp_GProps& properties, const double Eps) ;
};

 
%{#include <ShapeAnalysis_FreeBounds.hxx>%}
class ShapeAnalysis_FreeBounds
{
	public:
	ShapeAnalysis_FreeBounds(const TopoDS_Shape& shape,
		const bool splitclosed = false,
		const bool splitopen = true);
	const TopoDS_Compound& GetClosedWires() const;
	const TopoDS_Compound& GetOpenWires() const;
};

%{#include <GCPnts_UniformDeflection.hxx>%}
class GCPnts_UniformDeflection
{
	public:
	GCPnts_UniformDeflection();
	void Initialize(Adaptor3d_Curve& C,const double Deflection,
		const double U1,const double U2,
		const bool WithControl = true) ;
	int NbPoints() const;
	double Parameter(const int Index) const;
};

%include "brep-mesh/brep-mesh.i";

%{#include <GeomAPI_ProjectPointOnSurf.hxx>%}

class GeomAPI_ProjectPointOnSurf
{
	public:
	GeomAPI_ProjectPointOnSurf(const gp_Pnt& P,
		const Handle_Geom_Surface & Surface);
	void Init(const gp_Pnt& P,const Handle_Geom_Surface & surface);
	int NbPoints() const;	
	double LowerDistance() const;
	const gp_Pnt Point(const int Index) const;
	void LowerDistanceParameters(double &U, double &V) const;
	void Parameters(const int Index, double &U, double &V) const;
	gp_Pnt NearestPoint() const;
};

/**
 * BRepAlgo
 */
%{#include <BRepAlgo.hxx>%}
class BRepAlgo
{
	public:	
	static bool IsValid(const TopoDS_Shape& S);
	static bool IsTopologicallyValid(const TopoDS_Shape& S);
};


%include "shape-analysis/shape-analysis-edge.i";

/**
 * BRepAdaptor_Surface
 */
%{#include <BRepAdaptor_Surface.hxx>%}

class BRepAdaptor_Surface
{
    public:	
    BRepAdaptor_Surface();
    BRepAdaptor_Surface(const TopoDS_Face &F, const bool R=true);
    void BRepAdaptor_Surface::UIntervals(NCollection_Array1<double>& T, GeomAbs_Shape S) const;
};

