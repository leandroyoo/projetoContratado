unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmLogin = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses uPrincipal;
//uCadCliente, uCadProduto, uCadVendas, uDataModule;

procedure TfrmLogin.Button1Click(Sender: TObject);
begin

    if (Edit1.text = 'adm') and (Edit2.Text = '12345') then
    begin

     frmprincipal := TfrmPrincipal.Create(Self);
     frmprincipal.Show;
     frmlogin.Hide;


    end
    else
    begin
      showMessage('Login ou Senha Incorretos');
    end;



end;

procedure TfrmLogin.Button2Click(Sender: TObject);
begin
close;
end;

end.
