unit Demo1.Modules.Main;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TModuleMain = class(TDataModule)
    FDConnection1: TFDConnection;
    QCustomers: TFDQuery;
    QCustomersid: TFDAutoIncField;
    QCustomersLastname: TStringField;
    QCustomersFirstname: TStringField;
    QCustomersCompany: TStringField;
    QCustomersAddress: TStringField;
    QCustomersCity: TStringField;
    QCustomersZIP: TStringField;
    QCustomersEmail: TStringField;
    QCustomersCountry: TStringField;
    procedure FDConnection1BeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModuleMain: TModuleMain;

implementation

uses
  System.IOUtils;
{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


procedure TModuleMain.FDConnection1BeforeConnect(Sender: TObject);
begin
  FDConnection1.Params.Database := TPath.Combine(TPath.GetLibraryPath, 'Demo.sqlite');
end;

end.
