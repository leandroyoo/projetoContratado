unit uCadProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.FMTBcd, Data.SqlExpr;

type
  TfrmCadProduto = class(TForm)
    lblCPF: TLabel;
    Label2: TLabel;
    lblTitulo: TLabel;
    edtCodProd: TEdit;
    edtNomeProd: TEdit;
    DBGrid1: TDBGrid;
    btnFiltrar: TButton;
    btnSair: TButton;
    btnCadastrar1: TButton;
    Label1: TLabel;
    edtPreco: TEdit;
    DtsProduto: TDataSource;
    FDConnectionP: TFDConnection;
    FDStoredProcP: TFDStoredProc;
    procedure btnSairClick(Sender: TObject);
    procedure btnCadastrar1Click(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadProduto: TfrmCadProduto;

implementation

{$R *.dfm}

uses uDataModule, uPrincipal, uCadCliente;

procedure TfrmCadProduto.btnCadastrar1Click(Sender: TObject);

var

  TmpDataset    : TDataSet;
  CountRegister : integer;

begin
    CountRegister:=  FDConnectionP.ExecSQL(
    'insert into tb_produtos(CodProduto, nome, Preco) values ( ?, ?, ?)',
    [strtoint(edtCodProd.text), edtNomeProd.text, strtofloat(edtPreco.Text)],
    [ftInteger, ftString, ftFloat ]
    );


end;

//botão para atualizar o retorno de Grid de Produto
procedure TfrmCadProduto.btnFiltrarClick(Sender: TObject);
begin
    FDConnectionP.Connected := true;
    FDStoredProcP.StoredProcName:='dbo.retorna_grid_produto';
    FDStoredProcP.Active:=True;

end;

procedure TfrmCadProduto.btnSairClick(Sender: TObject);
begin
close;
end;


//ao abrir o form já seta o retorno do grid
procedure TfrmCadProduto.FormCreate(Sender: TObject);
begin
    FDConnectionP.Connected := true;
    FDStoredProcP.StoredProcName:='dbo.retorna_grid_produto';
    FDStoredProcP.Active:=True;

end;

end.
