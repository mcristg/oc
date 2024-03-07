%{
#include <Standard_Transient.hxx>
  %}

%nodefaultdtor Standard_Transient;
class Standard_Transient
{
  Standard_Transient()=0;
};

%nodefaultdtor Handle_Standard_Transient;
class Handle_Standard_Transient
{
  Handle_Standard_Transient()=0;
};

%extend Handle_Standard_Transient
{
  Standard_Integer GetRefCount() {
    return (*self)->GetRefCount();
  }
  void IncrementRefCounter() {
    (*self)->IncrementRefCounter();
  }
  Standard_Integer DecrementRefCounter() {
    return (* self)->DecrementRefCounter();
  }
  Standard_Transient *get() {
    return self->get();
  }
}
