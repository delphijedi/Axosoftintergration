unit GeneralSettingsController;

interface

uses  GeneralSettingsInt;

Type

  TGeneralSettings = class(TInterfacedObject, IGeneralSettings)
  protected
    FCreateScript: Boolean;
    FAmendScript: Boolean;
    FCheckDependencies: Boolean;
    FAllowAlterTable: Boolean;
    FAllowInsertData: Boolean;
    FAllowCreateIndexes: Boolean;
    FIntergrateAxoSoft: Boolean;
  private
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
  public
    property CreateScript: Boolean read GetCreateScript write SetCreateScript;
    property AmendScript: Boolean read GetAmendScript write SetAmendScript;
    property CheckDependencies: Boolean read GetCheckDependencies write SetCheckDependencies;
    property AllowAlterTable: Boolean read GetAllowAlterTable write SetAllowAlterTable;
    property AllowInsertData: Boolean read GetAllowInsertData write SetAllowInsertData;
    property AllowCreateIndexes: Boolean read GetAllowCreateIndexes write SetAllowInsertData;
    property IntegrateAxoSoft: Boolean read GetIntergrateAxoSoft write SetIntergrateAxoSoft;
    function SaveData: Boolean;
  end;

implementation

{ TGeneralSettings }

function TGeneralSettings.GetAllowAlterTable: Boolean;
begin
  Result := FAllowAlterTable;
end;

function TGeneralSettings.GetAllowCreateIndexes: Boolean;
begin
  Result := FAllowCreateIndexes;
end;

function TGeneralSettings.GetAllowInsertData: Boolean;
begin
  Result := FAllowInsertData;
end;

function TGeneralSettings.GetAmendScript: Boolean;
begin
  Result := FAmendScript;
end;

function TGeneralSettings.GetCheckDependencies: Boolean;
begin
  Result := FCheckDependencies;
end;

function TGeneralSettings.GetCreateScript: Boolean;
begin
  Result := FCreateScript;
end;

function TGeneralSettings.GetIntergrateAxoSoft: Boolean;
begin
  Result := FIntergrateAxoSoft;
end;

function TGeneralSettings.SaveData: Boolean;
begin
  Result := False;
end;

procedure TGeneralSettings.SetAllowAlterTable(const Value: Boolean);
begin
  FAllowAlterTable := Value;
end;

procedure TGeneralSettings.SetAllowCreateIndexes(const Value: Boolean);
begin
  FAllowCreateIndexes := Value;
end;

procedure TGeneralSettings.SetAllowInsertData(const Value: Boolean);
begin
  FAllowInsertData := Value;
end;

procedure TGeneralSettings.SetAmendScript(const Value: Boolean);
begin
  FAmendScript := Value;
end;

procedure TGeneralSettings.SetCheckDependencies(const Value: Boolean);
begin
  FCheckDependencies := Value;
end;

procedure TGeneralSettings.SetCreateScript(const Value: Boolean);
begin
  FCreateScript := Value;
end;

procedure TGeneralSettings.SetIntergrateAxoSoft(const Value: Boolean);
begin
  FIntergrateAxoSoft := Value;
end;

end.
