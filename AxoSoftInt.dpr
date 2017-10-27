program AxoSoftInt;

uses
  System.StartUpCopy,
  FMX.Forms,
  FrmMain in 'Views\FrmMain.pas' {Form5},
  GeneralSettingsInt in 'Models\GeneralSettingsInt.pas',
  GeneralSettingsController in 'Controllers\GeneralSettingsController.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
