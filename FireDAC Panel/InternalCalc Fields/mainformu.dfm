object mainform: Tmainform
  Left = 0
  Top = 0
  Caption = 'InternalCalc Fields'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    635
    299)
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 48
    Width = 619
    Height = 243
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnOpen: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Open'
    TabOrder = 1
    OnClick = btnOpenClick
  end
  object btnClose: TButton
    Left = 104
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 2
    OnClick = btnCloseClick
  end
  object btnSaveToFile: TButton
    Left = 200
    Top = 8
    Width = 121
    Height = 25
    Caption = 'Save To File'
    TabOrder = 3
    OnClick = btnSaveToFileClick
  end
  object btnLoadFromFile: TButton
    Left = 360
    Top = 8
    Width = 121
    Height = 25
    Caption = 'Load From File'
    TabOrder = 4
    OnClick = btnLoadFromFileClick
  end
  object DataSource1: TDataSource
    DataSet = SalesTable
    Left = 304
    Top = 176
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=EMPLOYEE')
    LoginPrompt = False
    Left = 428
    Top = 123
  end
  object SalesTable: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM SALES')
    Left = 428
    Top = 171
    object SalesTableGUID: TStringField
      DefaultExpression = 'NEWGUID()'
      FieldKind = fkInternalCalc
      FieldName = 'GUID'
      Size = 40
    end
  end
  object FDStanStorageXMLLink1: TFDStanStorageXMLLink
    Left = 427
    Top = 224
  end
end
