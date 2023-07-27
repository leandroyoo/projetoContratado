program projetoContratado;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uDataModule in 'uDataModule.pas' {DataModule2: TDataModule},
  uCadCliente in 'uCadCliente.pas' {frmCadCliente},
  uCadProduto in 'uCadProduto.pas' {frmCadProduto},
  uCadVendas in 'uCadVendas.pas' {frmCadVendas},
  uLogin in 'uLogin.pas' {frmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.Run;
end.
