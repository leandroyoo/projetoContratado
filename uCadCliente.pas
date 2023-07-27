unit uCadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait;

type
  TfrmCadCliente = class(TForm)
    edtCpf: TEdit;
    edtNome: TEdit;
    DBGrid1: TDBGrid;
    lblCPF: TLabel;
    Label2: TLabel;
    lblTitulo: TLabel;
    btnSair: TButton;
    DtsCliente: TDataSource;
    FDStoredProcCliente: TFDStoredProc;
    FDConnectionCli: TFDConnection;
    btnCadastrar1: TButton;
    ClienteTable: TFDQuery;
    ClienteTableCPF: TIntegerField;
    ClienteTableNome: TStringField;
    procedure btnSairClick(Sender: TObject);

    procedure btnCadastrar1Click(Sender: TObject);
    procedure recarregaGrid(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCliente: TfrmCadCliente;

implementation

{$R *.dfm}

uses uDataModule, uPrincipal;


procedure TfrmCadCliente.btnSairClick(Sender: TObject);
begin
close;
end;


procedure TfrmCadCliente.FormCreate(Sender: TObject);
begin
recarregaGrid(self);
end;

 //Retorno do Grid Cliente
procedure TfrmCadCliente.recarregaGrid(Sender: TObject);
begin
 FDConnectionCLi.Connected := true;
    FDStoredProcCliente.StoredProcName:='dbo.retorna_grid_cliente_v2';
    FDStoredProcCliente.Active:=True;



end;

//Cadastro de clientes 'INSERT'
procedure TfrmCadCliente.btnCadastrar1Click(Sender: TObject);
var

  TmpDataset    : TDataSet;
  CountRegister : integer;

begin
    CountRegister:=  FDConnectionCli.ExecSQL(
    'insert into tb_cliente(cpf, nome) values ( ?, ?)',
    [strtoint(edtCpf.text), edtNome.text],
    [ftInteger, ftString ]
    );

    recarregaGrid(self);

end;



end.
