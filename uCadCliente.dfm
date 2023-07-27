object frmCadCliente: TfrmCadCliente
  Left = 0
  Top = 0
  Caption = 'frmCadCliente'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object lblCPF: TLabel
    Left = 113
    Top = 75
    Width = 79
    Height = 23
    Caption = 'CPF/CNPJ:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 113
    Top = 133
    Width = 51
    Height = 23
    Caption = 'Nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblTitulo: TLabel
    Left = 137
    Top = 8
    Width = 361
    Height = 37
    Caption = 'CADASTRO DE CLIENTE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'SimSun'
    Font.Style = []
    ParentFont = False
  end
  object edtCpf: TEdit
    Left = 113
    Top = 104
    Width = 416
    Height = 23
    TabOrder = 0
  end
  object edtNome: TEdit
    Left = 113
    Top = 160
    Width = 416
    Height = 23
    ImeName = 'Portuguese (Brazilian ABNT)'
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 113
    Top = 248
    Width = 416
    Height = 152
    DataSource = DtsCliente
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object btnSair: TButton
    Left = 390
    Top = 200
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Sair'
    TabOrder = 3
    OnClick = btnSairClick
  end
  object btnCadastrar1: TButton
    Left = 309
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 4
    OnClick = btnCadastrar1Click
  end
  object DtsCliente: TDataSource
    DataSet = FDStoredProcCliente
    Left = 16
    Top = 136
  end
  object FDStoredProcCliente: TFDStoredProc
    Connection = FDConnectionCli
    Left = 16
    Top = 80
  end
  object FDConnectionCli: TFDConnection
    Params.Strings = (
      'Database=bd_pdv'
      'User_Name=sa'
      'Password=12345'
      'Server=ACER\SQLEXPRESS'
      'DriverID=MSSQL')
    Connected = True
    Left = 16
    Top = 16
  end
  object ClienteTable: TFDQuery
    Connection = FDConnectionCli
    SQL.Strings = (
      'select * from tb_Cliente'
      '')
    Left = 536
    Top = 32
    object ClienteTableCPF: TIntegerField
      FieldName = 'CPF'
      Origin = 'CPF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ClienteTableNome: TStringField
      AutoGenerateValue = arAutoInc
      FieldName = 'Nome'
      Origin = 'Nome'
      Size = 100
    end
  end
end
