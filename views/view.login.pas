unit view.login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, service.conexao, view.principal;

type
  TViewLogin = class(TForm)
    pnlHeader: TPanel;
    pnlLogo: TPanel;
    imgLogo: TImage;
    lblLogo: TLabel;
    pnlUsuarioLogado: TPanel;
    btnClose: TSpeedButton;
    pnlContent: TPanel;
    lblUsuario: TLabel;
    lblSenha: TLabel;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    pnlBtnEntrar: TPanel;
    btnEntrar: TSpeedButton;
    procedure btnCloseClick(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewLogin: TViewLogin;

implementation

{$R *.dfm}

procedure TViewLogin.btnCloseClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TViewLogin.btnEntrarClick(Sender: TObject);
  var
  nomeUsuario, senha: string;
begin
  nomeUsuario := edtUsuario.Text;
  senha := edtSenha.Text;

  // verifica se os campos estão preenchidos
  if (nomeUsuario = '') or (senha = '') then
  begin
    ShowMessage('Por favor, preencha ambos os campos!');
    Exit;
  end;

  ServiceConexao.FDQuery_Login.SQL.Text := 'SELECT * FROM login WHERE log_usuario = :log_usuario AND log_senha = :log_senha';
  ServiceConexao.FDQuery_Login.ParamByName('log_usuario').AsString := nomeUsuario;
  ServiceConexao.FDQuery_Login.ParamByName('log_senha').AsString := senha;
  ServiceConexao.FDQuery_Login.Open;

  // verifica se o usuário existe
  if ServiceConexao.FDQuery_Login.RecordCount > 0 then
  begin
    ShowMessage('Login bem-sucedido!');
    ViewPrincipal := TViewPrincipal.Create(Self);
    try
      ViewPrincipal.ShowModal;

    finally
      ViewPrincipal.Free;
    end;
  end
  else
  begin
    ShowMessage('Usuário ou senha incorretos!');
  end;
end;

end.
