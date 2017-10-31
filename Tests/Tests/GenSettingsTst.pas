unit GenSettingsTst;

interface
uses
  DUnitX.TestFramework, GeneralSettingsController, GeneralSettingsInt;

type

  [TestFixture]
  TAxosoftIntergrate = class(TObject)
  private

  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    [TestCase('Test False','False')]
    procedure TestCreateScriptFalse(const Value: Boolean);

    [Test]
    [TestCase('Test True','True')]
    procedure TestCreateScriptTrue(const Value: Boolean);

    [Test]
    [TestCase('Test False','False')]
    procedure TestAmendScriptFalse(const Value: Boolean);

    [Test]
    [TestCase('Test True','True')]
    procedure TestAmendScriptTrue(const Value: Boolean);

    [Test]
    [TestCase('Test False','False')]
    procedure TestCheckDependenciesFalse(const Value: Boolean);

    [Test]
    [TestCase('Test True','True')]
    procedure TestCheckDependenciesTrue(const Value: Boolean);


    [Test]
    [TestCase('Test False','False')]
    procedure TestAllowAlterTableFalse(const Value: Boolean);

    [Test]
    [TestCase('Test True','True')]
    procedure TestAllowAlterTableTrue(const Value: Boolean);

    [Test]
    [TestCase('Test False','False')]
    procedure TestAllowInsertDataFalse(const Value: Boolean);

    [Test]
    [TestCase('Test True','True')]
    procedure TestAllowInsertDataTrue(const Value: Boolean);

    [Test]
    [TestCase('Test False','False')]
    procedure TestAllowCreateIndexesFalse(const Value: Boolean);

    [Test]
    [TestCase('Test True','True')]
    procedure TestAllowCreateIndexesTrue(const Value: Boolean);

    [Test]
    [TestCase('Test False','False')]
    procedure TestIntergrateAxoSoftFalse(const Value: Boolean);

    [Test]
    [TestCase('Test True','True')]
    procedure TestIntegrateAxoSoftTrue(const Value: Boolean);

    [Test]
    [TestCase('Test False','False')]
    procedure TestSaveDataFalse(const Value: Boolean);

    [Test]
    [TestCase('Test True','True')]
    procedure TestSaveDataTrue(const Value: Boolean);

    [Test]
    [TestCase('Test False','False')]
    procedure TestClearDataFalse(const Value: Boolean);

    [Test]
    [TestCase('Test True','True')]
    procedure TestClearDataTrue(const Value: Boolean);
  end;

implementation

procedure TAxosoftIntergrate.Setup;
begin

end;

procedure TAxosoftIntergrate.TearDown;
begin

end;

procedure TAxosoftIntergrate.TestAllowAlterTableFalse(const Value: Boolean);
var GeneralSettings : IGeneralSettings;
begin
 GeneralSettings := TGeneralSettings.Create;
 GeneralSettings.SetAllowAlterTable(Value);
  Assert.IsFalse(GeneralSettings.GetAllowAlterTable);
end;

procedure TAxosoftIntergrate.TestAllowAlterTableTrue(const Value: Boolean);
var GeneralSettings : IGeneralSettings;
begin
 GeneralSettings := TGeneralSettings.Create;
 GeneralSettings.SetAllowAlterTable(Value);
 Assert.IsTrue(GeneralSettings.GetAllowAlterTable);
end;

procedure TAxosoftIntergrate.TestAllowCreateIndexesFalse(const Value: Boolean);
var GeneralSettings : IGeneralSettings;
begin
 GeneralSettings := TGeneralSettings.Create;
 GeneralSettings.SetAllowCreateIndexes(Value);
 Assert.IsFalse(GeneralSettings.GetAllowCreateIndexes);
end;

procedure TAxosoftIntergrate.TestAllowCreateIndexesTrue(const Value: Boolean);
var GeneralSettings : IGeneralSettings;
begin
 GeneralSettings := TGeneralSettings.Create;
 GeneralSettings.SetAllowCreateIndexes(Value);
 Assert.IsTrue(GeneralSettings.GetAllowCreateIndexes);
end;

procedure TAxosoftIntergrate.TestAllowInsertDataFalse(const Value: Boolean);
var GeneralSettings : IGeneralSettings;
begin
 GeneralSettings := TGeneralSettings.Create;
 GeneralSettings.SetAllowInsertData(Value);
  Assert.IsFalse(GeneralSettings.GetAllowInsertData);
end;

procedure TAxosoftIntergrate.TestAllowInsertDataTrue(const Value: Boolean);
var GeneralSettings : IGeneralSettings;
begin
 GeneralSettings := TGeneralSettings.Create;
 GeneralSettings.SetAllowInsertData(Value);
 Assert.IsTrue(GeneralSettings.GetAllowInsertData);
end;

procedure TAxosoftIntergrate.TestAmendScriptFalse(const Value: Boolean);
var GeneralSettings : IGeneralSettings;
begin
 GeneralSettings := TGeneralSettings.Create;
 GeneralSettings.SetAmendScript(Value);
  Assert.IsFalse(GeneralSettings.GetAmendScript);
end;

procedure TAxosoftIntergrate.TestAmendScriptTrue(const Value: Boolean);
var GeneralSettings : IGeneralSettings;
begin
 GeneralSettings := TGeneralSettings.Create;
 GeneralSettings.SetAmendScript(Value);
 Assert.IsTrue(GeneralSettings.GetAmendScript);
end;

procedure TAxosoftIntergrate.TestCheckDependenciesFalse(const Value: Boolean);
var GeneralSettings : IGeneralSettings;
begin
 GeneralSettings := TGeneralSettings.Create;
 GeneralSettings.SetCheckDependencies(Value);
  Assert.IsFalse(GeneralSettings.GetCheckDependencies);

end;

procedure TAxosoftIntergrate.TestCheckDependenciesTrue(const Value: Boolean);
var GeneralSettings : IGeneralSettings;
begin
 GeneralSettings := TGeneralSettings.Create;
 GeneralSettings.SetCheckDependencies(Value);
 Assert.IsTrue(GeneralSettings.GetCheckDependencies);

end;

procedure TAxosoftIntergrate.TestClearDataFalse(const Value: Boolean);
var GeneralSettings : IGeneralSettings;
begin
// GeneralSettings := TGeneralSettings.Create;
//  Assert.IsFalse(GeneralSettings.ClearData);

end;

procedure TAxosoftIntergrate.TestClearDataTrue(const Value: Boolean);
var GeneralSettings : IGeneralSettings;
begin
 //GeneralSettings := TGeneralSettings.Create;
 //Assert.IsTrue(GeneralSettings.ClearData);

end;

procedure TAxosoftIntergrate.TestCreateScriptFalse(const Value: Boolean);
var GeneralSettings : IGeneralSettings;
begin
 GeneralSettings := TGeneralSettings.Create;
 GeneralSettings.SetCreateScript(Value);
  Assert.IsFalse(GeneralSettings.GetCreateScript);
end;



procedure TAxosoftIntergrate.TestCreateScriptTrue(const Value: Boolean);
var GeneralSettings : IGeneralSettings;
begin
 GeneralSettings := TGeneralSettings.Create;
 GeneralSettings.SetCreateScript(Value);
  Assert.IsTrue(GeneralSettings.GetCreateScript);
end;

procedure TAxosoftIntergrate.TestIntegrateAxoSoftTrue(const Value: Boolean);
var GeneralSettings : IGeneralSettings;
begin
 GeneralSettings := TGeneralSettings.Create;
 GeneralSettings.SetIntergrateAxoSoft(Value);
 Assert.IsTrue(GeneralSettings.GetIntergrateAxoSoft);

end;

procedure TAxosoftIntergrate.TestIntergrateAxoSoftFalse(const Value: Boolean);
var GeneralSettings : IGeneralSettings;
begin
 GeneralSettings := TGeneralSettings.Create;
 GeneralSettings.SetIntergrateAxoSoft(Value);
  Assert.IsFalse(GeneralSettings.GetIntergrateAxoSoft);
end;

procedure TAxosoftIntergrate.TestSaveDataFalse(const Value: Boolean);
var GeneralSettings : IGeneralSettings;
begin
 GeneralSettings := TGeneralSettings.Create;
  Assert.IsFalse(GeneralSettings.SaveData);

end;

procedure TAxosoftIntergrate.TestSaveDataTrue(const Value: Boolean);
var GeneralSettings : IGeneralSettings;
begin
 GeneralSettings := TGeneralSettings.Create;
 Assert.IsTrue(GeneralSettings.SaveData);
end;

initialization
  TDUnitX.RegisterTestFixture(TAxosoftIntergrate);
end.
