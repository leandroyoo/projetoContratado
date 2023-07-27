unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    pnlTopo: TPanel;
    pnlVendas: TPanel;
    pnlCadastro: TPanel;
    pnlSair: TPanel;
    spdBtnVendas: TSpeedButton;
    spdBtnCliente: TSpeedButton;
    spdBtnProdutos: TSpeedButton;
    spdBtnNFE: TSpeedButton;
    spdBtnUsuario: TSpeedButton;
    spdBtnSair: TSpeedButton;
    pnlRelatorio: TPanel;
    procedure spdBtnSairClick(Sender: TObject);
    procedure spdBtnClienteClick(Sender: TObject);
    procedure spdBtnProdutosClick(Sender: TObject);
    procedure spdBtnVendasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uCadCliente, uDataModule, uCadProduto, uCadVendas;

//tela principal


///procedures de chamada de outras telas
procedure TfrmPrincipal.spdBtnClienteClick(Sender: TObject);
begin
frmCadCliente := TfrmCadCliente.Create(self);
frmCadCliente.show;
end;

procedure TfrmPrincipal.spdBtnProdutosClick(Sender: TObject);
begin
frmCadProduto := TfrmCadProduto.Create(self);
frmCadProduto.show;

end;

procedure TfrmPrincipal.spdBtnSairClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TfrmPrincipal.spdBtnVendasClick(Sender: TObject);
begin
frmCadVendas := TfrmCadVendas.Create(Self);
frmCadVendas.Show;
end;

end.
