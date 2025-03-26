unit view.agendamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Grids, Vcl.Samples.Calendar,
  service.conexao, Vcl.ComCtrls;

type
  TViewAgendamento = class(TForm)
    pnlHeader: TPanel;
    pnlLogo: TPanel;
    imgLogo: TImage;
    lblLogo: TLabel;
    pnlUsuarioLogado: TPanel;
    btnClose: TSpeedButton;
    pnlContent: TPanel;
    pnlFooter: TPanel;
    Calendar: TCalendar;
    lblProfissional: TLabel;
    Label1: TLabel;
    cbSelecionarCliente: TComboBox;
    lblSelecionarCliente: TLabel;
    lblTelefone: TLabel;
    edtTelefone: TEdit;
    edtEmail: TEdit;
    lblEmail: TLabel;
    lblObservacoes: TLabel;
    edtObservacao: TEdit;
    pnlBtnSalvar: TPanel;
    btnSalvar: TSpeedButton;
    edtProfissional: TEdit;
    edtHora: TEdit;
    procedure btnCloseClick(Sender: TObject);
    procedure CarregarClientes;
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewAgendamento: TViewAgendamento;

implementation

{$R *.dfm}

procedure TViewAgendamento.btnCloseClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TViewAgendamento.btnSalvarClick(Sender: TObject);
begin // salvar agendamento
  with ServiceConexao.FDQuery_Consultas do
  begin
    SQL.Text := 'INSERT INTO consultas (con_cliente, con_profissional, ' +
                'con_data, con_hora, con_telefone, con_email, con_observacao) ' +
                'VALUES (:con_cliente, :con_profissional, :con_data, ' +
                ':con_hora, :con_telefone, :CON_EMAIL, :CON_OBSERVACAO)';
    Params.ParamByName('con_cliente').AsString      := cbSelecionarCliente.Text;
    Params.ParamByName('con_profissional').AsString := edtProfissional.Text;
    Params.ParamByName('con_data').AsDateTime       := calendar.CalendarDate;
    Params.ParamByName('con_hora').AsDateTime       := StrToDateTime(edtHora.Text);
    Params.ParamByName('con_telefone').AsString     := edtTelefone.Text;
    Params.ParamByName('con_email').AsString        := edtEmail.Text;
    Params.ParamByName('con_observacao').AsString   := edtObservacao.Text;
    ExecSQL;

  end;
    ShowMessage('Consulta agendada com sucesso!');
end;

procedure TViewAgendamento.CarregarClientes;
begin  // cliente para comboBox
  ServiceConexao.FDQuery_Clientes.SQL.Text := 'SELECT pes_codigo, pes_nomecompleto, pes_cpf, pes_telefone, pes_email FROM pessoas';
  ServiceConexao.FDQuery_Clientes.Open;

  cbSelecionarCliente.Items.Clear;

  while not ServiceConexao.FDQuery_Clientes.Eof do
  begin
    cbSelecionarCliente.Items.AddObject(ServiceConexao.FDQuery_Clientes.FieldByName('pes_nomecompleto').AsString, TObject(ServiceConexao.FDQuery_Clientes.FieldByName('pes_codigo').AsInteger));
    ServiceConexao.FDQuery_Clientes.Next;
  end;

  ServiceConexao.FDQuery_Clientes.Close;
end;

procedure TViewAgendamento.FormShow(Sender: TObject);
begin
  CarregarClientes;
end;

end.
