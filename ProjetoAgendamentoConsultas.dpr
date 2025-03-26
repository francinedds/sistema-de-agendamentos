program ProjetoAgendamentoConsultas;

uses
  Vcl.Forms,
  view.principal in 'views\view.principal.pas' {ViewPrincipal},
  view.agendamento in 'views\view.agendamento.pas' {ViewAgendamento},
  view.cadastro in 'views\view.cadastro.pas' {ViewCadastro},
  view.consultas in 'views\view.consultas.pas' {ViewConsultas},
  service.conexao in 'services\service.conexao.pas' {ServiceConexao: TDataModule},
  view.login in 'views\view.login.pas' {ViewLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewLogin, ViewLogin);
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.CreateForm(TViewAgendamento, ViewAgendamento);
  Application.CreateForm(TViewCadastro, ViewCadastro);
  Application.CreateForm(TViewConsultas, ViewConsultas);
  Application.CreateForm(TServiceConexao, ServiceConexao);
  Application.Run;
end.
