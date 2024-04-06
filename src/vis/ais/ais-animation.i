%{
#include <AIS_Animation.hxx>
%}

%rename(AIS_Animation) Handle_AIS_Animation;

%nodefaultdtor Handle_AIS_Animation;
class Handle_AIS_Animation : public Handle_Standard_Transient
{
  Handle_AIS_Animation()=0;
};

%extend Handle_AIS_Animation
{
  Handle_AIS_Animation (const TCollection_AsciiString &theAnimationName){
        return new Handle_AIS_Animation(new AIS_Animation(theAnimationName));
  }
  void Delete() {
      self->~Handle_AIS_Animation();
  }
  const TCollection_AsciiString & Name () {
    return (*self)->Name();
  }
  Standard_Real StartPts () {
    return (*self)->StartPts();
  }
  void SetStartPts (const Standard_Real thePtsStart) {
    (*self)->SetStartPts(thePtsStart);
  }
  Standard_Real Duration () {
    return (*self)->Duration();
  }
  void UpdateTotalDuration () {
    (*self)->UpdateTotalDuration();
  }
  Standard_Boolean HasOwnDuration () {
    return (*self)->HasOwnDuration();
  }
  Standard_Real OwnDuration () {
    return (*self)->OwnDuration();
  }
  void SetOwnDuration (const Standard_Real theDuration) {
    (*self)->SetOwnDuration(theDuration);
  }
  void Add (const Handle_AIS_Animation &theAnimation) {
    (*self)->Add(theAnimation);
  }
  void Clear () {
    (*self)->Clear();
  }
  Handle_AIS_Animation Find (const TCollection_AsciiString &theAnimationName) {
    return (*self)->Find(theAnimationName);
  }
  Standard_Boolean Remove (const Handle_AIS_Animation &theAnimation) {
    return (*self)->Remove(theAnimation);
  }
  Standard_Boolean Replace (const Handle_AIS_Animation &theAnimationOld, const Handle_AIS_Animation &theAnimationNew) {
    return (*self)->Replace(theAnimationOld, theAnimationNew);
  }
  void CopyFrom (const Handle_AIS_Animation &theOther) {
    (*self)->CopyFrom(theOther);
  }
  const NCollection_Sequence< Handle_AIS_Animation > & Children () {
    return (*self)->Children();
  }
  void StartTimer (const Standard_Real theStartPts, const Standard_Real thePlaySpeed,
                   const Standard_Boolean theToUpdate, const Standard_Boolean theToStopTimer=Standard_False) {
    (*self)->StartTimer(theStartPts, thePlaySpeed, theToUpdate, theToStopTimer);
  }
  Standard_Real UpdateTimer () {
    return (*self)->UpdateTimer();
  }
  Standard_Real ElapsedTime () {
    return (*self)->ElapsedTime();
  }
  const Handle_Media_Timer & Timer () {
    return (*self)->Timer();
  }
  void SetTimer (const Handle_Media_Timer &theTimer) {
    (*self)->SetTimer(theTimer);
  }
  void Start (const Standard_Boolean theToUpdate) {
    (*self)->Start(theToUpdate);
  }
  void Pause () {
    (*self)->Pause();
  }
  void Stop () {
    (*self)->Stop();
  }
  bool IsStopped () {
    return (*self)->IsStopped();
  }
  Standard_Boolean Update (const Standard_Real thePts) {
    return (*self)->Update(thePts);
  }
}  
