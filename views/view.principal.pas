unit view.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, view.agendamento, view.cadastro, view.consultas,
  service.conexao;

type
  TViewPrincipal = class(TForm)
    pnlHeader: TPanel;
    pnlLogo: TPanel;
    imgLogo: TImage;
    lblLogo: TLabel;
    pnlFooter: TPanel;
    pnlCopy: TPanel;
    lblCopy: TLabel;
    pnlContent: TPanel;
    pnlButtons: TPanel;
    pnlUsuarioLogado: TPanel;
    lblUsuarioLogado: TLabel;
    lblAdmin: TLabel;
    btnAgendamento: TSpeedButton;
    btnCadastro: TSpeedButton;
    btnConsultas: TSpeedButton;
    btnClose: TSpeedButton;
    Timer: TTimer;
    pnlHora: TPanel;
    lblHoraAtual: TLabel;
    procedure btnCloseClick(Sender: TObject);
    procedure btnAgendamentoClick(Sender: TObject);
    procedure btnCadastroClick(Sender: TObject);
    procedure btnConsultasClick(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

procedure TViewPrincipal.btnAgendamentoClick(Sender: TObject);
begin // agendamento
  ViewAgendamento := TViewAgendamento.Create(Self);
  try
    ViewAgendamento.ShowModal;
  finally
    FreeAndNil(ViewAgendamento);
  end;
end;

procedure TViewPrincipal.btnCadastroClick(Sender: TObject);
begin // cadastro
  ViewCadastro := TViewCadastro.Create(Self);
  try
    ViewCadastro.ShowModal;
  finally
    FreeAndNil(ViewCadastro);
  end;
end;


procedure TViewPrincipal.btnCloseClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TViewPrincipal.btnConsultasClick(Sender: TObject);
begin // consultas
  ViewConsultas := TViewConsultas.Create(Self);
  try
    ViewConsultas.ShowModal;
  finally
    FreeAndNil(ViewConsultas);
  end;
end;

procedure TViewPrincipal.FormShow(Sender: TObject);
var // atribui nome de usuário ao label
  nomeUsuario: string;
begin
  if not ServiceConexao.FDQuery_Login.Eof then
  begin
    nomeUsuario := ServiceConexao.FDQuery_Login.FieldByName('log_usuario').AsString;
    lblAdmin.Caption := nomeUsuario;
  end
  else
  begin
    lblAdmin.Caption := 'Usuário não encontrado!';
  end;
end;

procedure TViewPrincipal.TimerTimer(Sender: TObject);
begin
  lblHoraAtual.Caption := TimeToStr(Time);
end;

end.
