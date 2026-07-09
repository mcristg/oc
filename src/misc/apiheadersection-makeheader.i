
%{
#include <APIHeaderSection_MakeHeader.hxx>
#include <StepData_StepModel.hxx>

typedef occ::handle<StepData_StepModel> Handle_StepData_StepModel;
typedef occ::handle<TCollection_HAsciiString> Handle_TCollection_HAsciiString;
%}

class APIHeaderSection_MakeHeader{
  public:
  APIHeaderSection_MakeHeader(const Handle_StepData_StepModel& model);
  void SetName(const Handle_TCollection_HAsciiString& aName);
  void SetAuthorValue (const int num,const Handle_TCollection_HAsciiString& aAuthor);
  void SetOrganizationValue (const int num,const Handle_TCollection_HAsciiString& aOrganization);
  void SetOriginatingSystem(const Handle_TCollection_HAsciiString& aOriginatingSystem);
  void SetDescriptionValue(const int num,const Handle_TCollection_HAsciiString& description);
};
