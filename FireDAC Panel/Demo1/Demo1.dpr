program Demo1;

uses
  Vcl.Forms,
  Demo1.Forms.Main in 'Demo1.Forms.Main.pas' {FormMain},
  Demo1.Modules.Main in 'Demo1.Modules.Main.pas' {ModuleMain: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TModuleMain, ModuleMain);
  Application.Run;
end.
