unit Demo1.Forms.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFormMain = class(TForm)
    Button1: TButton;
    DBGrid1: TDBGrid;
    DSCustomers: TDataSource;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

uses Demo1.Modules.Main;

procedure TFormMain.Button1Click(Sender: TObject);
begin
  ModuleMain.QCustomers.Close;
  ModuleMain.QCustomers.Open;
end;

end.
