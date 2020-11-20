(* Copyright (c) 2017-2020. Cary Jensen, Jensen Data Systems, Inc.

   This code sample is intended for attendees of DelphiCon Worldwide

   No guarantees or warranties are expressed or implied concerning
   the applicability of techniques or code included in this example
   or mentioned in the presentation. If you wish to use techniques or
   code included in this example or those described, it is
   your responsibility to test and certify any code, techniques,
   or design you adopt.

   For more information about "Delphi in Depth: FireDAC"
   by Cary Jensen, including links to order the book, please visit:
   http://www.JensenDataSystems.com/FireDACBook
   ISBN-13: 978-1546391272 
   ISBN-10: 1546391274

*)
unit mainformu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Phys.IB, FireDAC.Phys.IBDef, Vcl.StdCtrls,
  FireDAC.Stan.StorageXML;

type
  Tmainform = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    FDConnection1: TFDConnection;
    SalesTable: TFDQuery;
    SalesTableGUID: TStringField;
    btnOpen: TButton;
    btnClose: TButton;
    btnSaveToFile: TButton;
    btnLoadFromFile: TButton;
    FDStanStorageXMLLink1: TFDStanStorageXMLLink;
    procedure FormCreate(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnSaveToFileClick(Sender: TObject);
    procedure btnLoadFromFileClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mainform: Tmainform;

implementation

{$R *.dfm}

uses FireDAC.Stan.ExprFuncs;

procedure Tmainform.btnCloseClick(Sender: TObject);
begin
  SalesTable.Close;
end;

procedure Tmainform.btnLoadFromFileClick(Sender: TObject);
begin
  SalesTable.LoadFromFile( ExtractFilePath( ParamStr( 0 ) ) + 'FDMemTable.XML', sfXML );
end;

procedure Tmainform.btnOpenClick(Sender: TObject);
begin
  SalesTable.Open();
end;

procedure Tmainform.btnSaveToFileClick(Sender: TObject);
begin
  SalesTable.SaveToFile( ExtractFilePath( ParamStr( 0 ) ) + 'FDMemTable.XML', sfXML );
end;

procedure Tmainform.FormCreate(Sender: TObject);
var
  DataDir: string;
begin
  DataDir := GetEnvironmentVariable('DEMOSDIR');
  if DataDir.IsEmpty then
  begin
    ShowMessage('DEMOSDIR environment variable is not set. ' +
                'Cannot continue');
    exit;
  end;

  FDConnection1.Params.Clear;
  FDConnection1.Params.Add('DriverID=IB');
  FDConnection1.Params.Add('Database=' +
    GetEnvironmentVariable('DEMOSDIR') + '\Data\employee.gdb');
  FDConnection1.Params.Add('User_Name=sysdba');
  FDConnection1.Params.Add('password=masterkey');
  FDConnection1.Params.Add('Server=localhost');
  FDCOnnection1.LoginPrompt := False;
  SalesTable.Connection := FDConnection1;
end;

end.
