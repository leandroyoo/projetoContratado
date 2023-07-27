unit uCadVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, Vcl.Buttons;

type
  TfrmCadVendas = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtCpf: TEdit;
    edtNome: TEdit;
    edtCodProd: TEdit;
    edtNomeProd: TEdit;
    edtQuantProd: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    FDStoredProcVendas: TFDStoredProc;
    DtsVendas: TDataSource;
    Button1: TButton;
    Button2: TButton;
    ClienteTable: TFDQuery;
    ClienteTableCPF: TIntegerField;
    ClienteTableNome: TStringField;
    FDConnection1: TFDConnection;
    spdBtnVendas: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadVendas: TfrmCadVendas;

implementation

{$R *.dfm}

uses uCadProduto;

procedure TfrmCadVendas.Button1Click(Sender: TObject);
begin
    //retorno de grid com procedure configurada do SQL
    FDConnection1.Connected := true;
    FDStoredProcVendas.StoredProcName:='dbo.retorna_grid_vendas_v2';
    FDStoredProcVendas.Active:=True;
end;

procedure TfrmCadVendas.Button2Click(Sender: TObject);
      var
      CountRegister: integer;
      CountRegister2: integer;
begin
    //iserção dos campos de venda dentro das suas respectivas tabelas
    CountRegister:=  FDConnection1.ExecSQL(
    'insert into tb_Cliente(CPF, nome) values ( ?, ?)',
    [strtoint(edtCpf.text), edtNome.text],
    [ftInteger, ftString]
    );


      CountRegister2:=  FDConnection1.ExecSQL(
      'insert into tb_produtos(CodProduto, nome, Preco, quantidade) values ( ?, ?, ?, ?)',
      [strtoint(edtCodProd.text), edtNomeProd.text, strtofloat(edtQuantProd.Text), strtoint(edtQuantProd.Text)],
      [ftInteger, ftString, ftFloat, ftInteger ]
      );

  end;


procedure TfrmCadVendas.FormCreate(Sender: TObject);
begin
    FDConnection1.Connected := true;
    FDStoredProcVendas.Connection :=  FDConnection1;
    FDStoredProcVendas.StoredProcName:='dbo.retorna_grid_vendas_v2';
    FDStoredProcVendas.Active:=True;

end;

end.













