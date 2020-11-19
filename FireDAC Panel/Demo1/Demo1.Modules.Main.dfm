object ModuleMain: TModuleMain
  OldCreateOrder = False
  Height = 324
  Width = 508
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\test\Desktop\DelphiCon2020\FireDAC Panel\Demo1' +
        '\Demo.sqlite'
      'LockingMode=Normal'
      'DriverID=SQLite')
    ConnectedStoredUsage = []
    LoginPrompt = False
    BeforeConnect = FDConnection1BeforeConnect
    Left = 80
    Top = 64
  end
  object QCustomers: TFDQuery
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    SQL.Strings = (
      'select * from customers')
    Left = 176
    Top = 64
    object QCustomersid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object QCustomersLastname: TStringField
      FieldName = 'Lastname'
      Origin = 'Lastname'
      Size = 255
    end
    object QCustomersFirstname: TStringField
      FieldName = 'Firstname'
      Origin = 'Firstname'
      Size = 255
    end
    object QCustomersCompany: TStringField
      FieldName = 'Company'
      Origin = 'Company'
      Size = 255
    end
    object QCustomersAddress: TStringField
      FieldName = 'Address'
      Origin = 'Address'
      Size = 255
    end
    object QCustomersCity: TStringField
      FieldName = 'City'
      Origin = 'City'
      Size = 255
    end
    object QCustomersZIP: TStringField
      FieldName = 'ZIP'
      Origin = 'ZIP'
      Size = 10
    end
    object QCustomersEmail: TStringField
      FieldName = 'Email'
      Origin = 'Email'
      Size = 255
    end
    object QCustomersCountry: TStringField
      FieldName = 'Country'
      Origin = 'Country'
      Size = 100
    end
  end
end
