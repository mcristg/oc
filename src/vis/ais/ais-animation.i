%{
#include <AIS_Animation.hxx>

typedef opencascade::handle<AIS_Animation> Handle_AIS_Animation;
typedef opencascade::handle<Media_Timer> Handle_Media_Timer;
%}

%ignore Handle_Standard_Transient;
class Handle_Standard_Transient {};

%rename(AIS_Animation) Handle_AIS_Animation;

%nodefaultdtor Handle_AIS_Animation;
class Handle_AIS_Animation : public Handle_Standard_Transient
{
  Handle_AIS_Animation()=0;
};

%extend Handle_AIS_Animation
{
  Handle_AIS_Animation(const TCollection_AsciiString &theAnimationName){
        return new Handle_AIS_Animation(new AIS_Animation(theAnimationName));
  }
  void Delete() {
      self->~Handle_AIS_Animation();
  } 
  const TCollection_AsciiString & Name() const {
    return (*self)->Name();
  }
  double StartPts() const {
    return (*self)->StartPts();
  }
  void SetStartPts(const double thePtsStart) {
    (*self)->SetStartPts(thePtsStart);
  }
  double Duration() const {
    return (*self)->Duration();
  }
  void UpdateTotalDuration() {
    (*self)->UpdateTotalDuration();
  }
  bool HasOwnDuration() const {
    return (*self)->HasOwnDuration();
  }
  double OwnDuration() const {
    return (*self)->OwnDuration();
  }
  void SetOwnDuration(const double theDuration) {
    (*self)->SetOwnDuration(theDuration);
  }
  void Add(const occ::handle< AIS_Animation > &theAnimation) {
    (*self)->Add(theAnimation);
  }
  void Clear() {
    (*self)->Clear();
  }
  occ::handle< AIS_Animation > Find(const TCollection_AsciiString &theAnimationName) const {
    return (*self)->Find(theAnimationName);
  }
  bool Remove(const occ::handle< AIS_Animation > &theAnimation) {
    return (*self)->Remove(theAnimation);
  }
  bool Replace(const occ::handle< AIS_Animation > &theAnimationOld, const occ::handle< AIS_Animation > &theAnimationNew) {
    return (*self)->Replace(theAnimationOld, theAnimationNew);
  }
  void CopyFrom(const occ::handle< AIS_Animation > &theOther) {
    (*self)->CopyFrom(theOther);
  }
  const NCollection_Sequence< occ::handle< AIS_Animation > > &Children() const {
    return (*self)->Children();
  }
  void StartTimer(const double theStartPts,
                  const double thePlaySpeed,
                  const bool theToUpdate,
                  const bool theToStopTimer=false) {
    (*self)->StartTimer(theStartPts, thePlaySpeed, theToUpdate, theToStopTimer);
  }
  double UpdateTimer() {
    return (*self)->UpdateTimer();
  }
  double ElapsedTime() const {
    return (*self)->ElapsedTime();
  }
  const occ::handle< Media_Timer > &Timer() const {
    return (*self)->Timer();
  }
  void SetTimer(const occ::handle< Media_Timer > &theTimer) {
    (*self)->SetTimer(theTimer);
  }
  void Start(const bool theToUpdate) {
    (*self)->Start(theToUpdate);
  }
  void Pause() {
    (*self)->Pause();
  }
  void Stop() {
    (*self)->Stop();
  }
  bool IsStopped() {
    return (*self)->IsStopped();
  }
  bool Update(const double thePts) {
    return (*self)->Update(thePts);
  }
}
