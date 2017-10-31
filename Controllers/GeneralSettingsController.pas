unit GeneralSettingsController;

interface

uses  GeneralSettingsInt, System.sysutils, JSON, JSON.Builders, JSON.Writers, System.Classes;

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
    function ClearData: Boolean;
    function CreateGenSettingsJSON: TJSONObject;
  end;

implementation

{ TGeneralSettings }

function TGeneralSettings.ClearData: Boolean;
begin
  result := DeleteFile('GenSettings.json');
end;

function TGeneralSettings.CreateGenSettingsJSON: TJSONObject;
var
  JsonPairs: TJSONObject;
  JsonObject: TJSONObject;
  BuilderArray: TJSONArray;
begin
  JsonPairs := TJSONObject.Create();
  JsonPairs.AddPair('CreateScript', Self.CreateScript.ToString());
  JsonPairs.AddPair('AmendScript', Self.AmendScript.ToString());
  JsonPairs.AddPair('CheckDependencies', CheckDependencies.ToString());
  JsonPairs.AddPair('AllowAlterTable', AllowAlterTable.ToString());
  JsonPairs.AddPair('AllowInsertData', AllowInsertData.ToString());
  JsonPairs.AddPair('AllowCreateIndexes' ,AllowCreateIndexes.ToString());
  JsonPairs.AddPair('IntergrateAxoSoft', IntegrateAxoSoft.ToString());
  BuilderArray := TJSONArray.Create;
  BuilderArray.Add(JsonPairs);
  JsonObject := TJSONObject.Create;
  JsonObject.AddPair('GenSettings', BuilderArray);
  result := JsonObject;



end;

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
var Builder: TJSONObject;
    WriteStream: TStringList;
begin
  Builder := CreateGenSettingsJSON;
  WriteStream := TStringList.Create;
  try
    try
    WriteStream.Text := Builder.ToString;
    WriteStream.SaveToFile('GenSettings.json');
    finally
      WriteStream.Free;
    end;
  except on E: Exception do
    Result := False;
  end;
  Result := True;
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
