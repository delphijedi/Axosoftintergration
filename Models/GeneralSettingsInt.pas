unit GeneralSettingsInt;

interface

Type
 IGeneralSettings  = Interface(IInterface)
 ['{5076DCCB-184F-4238-9E87-16586FC827F8}']
  procedure SetCreateScript(const Value: Boolean);
  procedure SetAmendScript(const Value: Boolean);
  procedure SetCheckDependencies(const Value: Boolean);
  procedure SetAllowAlterTable(const Value: Boolean);
  procedure SetAllowInsertData(const Value: Boolean);
  procedure SetAllowCreateIndexes(const Value: Boolean);
  procedure SetIntergrateAxoSoft(const Value: Boolean);
  function  GetCreateScript: Boolean;
  function GetAmendScript: Boolean;
  function GetCheckDependencies: Boolean;
  function GetAllowAlterTable: Boolean;
  function GetAllowInsertData: Boolean;
  function GetAllowCreateIndexes: Boolean;
  function GetIntergrateAxoSoft: Boolean;
  function SaveData: Boolean;

 End;

implementation

end.
