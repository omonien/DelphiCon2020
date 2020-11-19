object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'FormMain'
  ClientHeight = 478
  ClientWidth = 591
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    591
    478)
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 145
    Width = 137
    Height = 25
    Caption = 'Open Customers'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 176
    Width = 568
    Height = 294
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSCustomers
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lastname'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Firstname'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Company'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Address'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'City'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZIP'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Email'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Country'
        Width = 100
        Visible = True
      end>
  end
  object Memo1: TMemo
    Left = 8
    Top = 18
    Width = 575
    Height = 121
    Anchors = [akLeft, akTop, akRight]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      
        'RowsetSize is "50", FetchMode is "OnDemand", RecordCountMode is ' +
        '"Total".'
      ''
      
        'Notice that the scrollbar vizualizes all 2000 records, but it st' +
        'ill loads data on demand every'
      '50 records.'
      ''
      
        'FireDAC issues a separate query which only counts the number of ' +
        'records in the original query.')
    ParentFont = False
    TabOrder = 2
  end
  object DSCustomers: TDataSource
    DataSet = ModuleMain.QCustomers
    Left = 336
    Top = 184
  end
end
