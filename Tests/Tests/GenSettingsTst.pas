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


  end;

implementation

procedure TAxosoftIntergrate.Setup;
begin

end;

procedure TAxosoftIntergrate.TearDown;
begin

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

initialization
  TDUnitX.RegisterTestFixture(TAxosoftIntergrate);
end.
