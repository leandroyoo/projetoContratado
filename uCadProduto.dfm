object frmCadProduto: TfrmCadProduto
  Left = 0
  Top = 0
  Caption = 'frmCadProduto'
  ClientHeight = 575
  ClientWidth = 728
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
    Width = 151
    Height = 23
    Caption = 'Codigo do Produto:'
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
    Width = 143
    Height = 23
    Caption = 'Nome do Produto:'
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
    Width = 380
    Height = 37
    Caption = 'CADASTRO DE PRODUTOS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'SimSun'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 113
    Top = 189
    Width = 139
    Height = 23
    Caption = 'Pre'#231'o do produto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object edtCodProd: TEdit
    Left = 113
    Top = 104
    Width = 208
    Height = 23
    TabOrder = 0
  end
  object edtNomeProd: TEdit
    Left = 113
    Top = 160
    Width = 416
    Height = 23
    ImeName = 'Portuguese (Brazilian ABNT)'
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 113
    Top = 336
    Width = 416
    Height = 152
    DataSource = DtsProduto
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object btnFiltrar: TButton
    Left = 113
    Top = 305
    Width = 75
    Height = 25
    Caption = 'Atualizar'
    DisabledImageName = 'btnFiltrar'
    TabOrder = 3
    OnClick = btnFiltrarClick
  end
  object btnSair: TButton
    Left = 390
    Top = 288
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Sair'
    TabOrder = 4
    OnClick = btnSairClick
  end
  object btnCadastrar1: TButton
    Left = 309
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 5
    OnClick = btnCadastrar1Click
  end
  object edtPreco: TEdit
    Left = 113
    Top = 216
    Width = 416
    Height = 23
    ImeName = 'Portuguese (Brazilian ABNT)'
    TabOrder = 6
  end
  object DtsProduto: TDataSource
    DataSet = FDStoredProcP
    Left = 624
    Top = 296
  end
  object FDConnectionP: TFDConnection
    Params.Strings = (
      'Database=bd_pdv'
      'User_Name=sa'
      'Password=12345'
      'Server=ACER\SQLEXPRESS'
      'DriverID=MSSQL')
    Connected = True
    Left = 592
    Top = 72
  end
  object FDStoredProcP: TFDStoredProc
    Connection = FDConnectionP
    Left = 568
    Top = 208
  end
end
