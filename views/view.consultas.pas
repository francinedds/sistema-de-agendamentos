unit view.consultas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  service.conexao, Vcl.Menus;

type
  TViewConsultas = class(TForm)
    pnlHeader: TPanel;
    pnlLogo: TPanel;
    imgLogo: TImage;
    lblLogo: TLabel;
    pnlUsuarioLogado: TPanel;
    btnClose: TSpeedButton;
    pnlFooter: TPanel;
    pnlContent: TPanel;
    lblNomeCompleto: TLabel;
    DBGrid: TDBGrid;
    DataSource: TDataSource;
    PopupMenu: TPopupMenu;
    Deletar: TMenuItem;
    procedure btnCloseClick(Sender: TObject);
    procedure DeletarClick(Sender: TObject);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewConsultas: TViewConsultas;

implementation

{$R *.dfm}

procedure TViewConsultas.btnCloseClick(Sender: TObject);
begin
  Self.Close;
end;


procedure TViewConsultas.DBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
    if gdSelected in State then
  begin
    // Define a cor de fundo da célula selecionada
    DBGrid.Canvas.Brush.Color := $00E2E2C5;  // Cor de fundo (cor do item selecionado)

    // Define a cor do texto da célula selecionada
    DBGrid.Canvas.Font.Color := clWindowText;  // Cor do texto (branco, para contraste)
  end
  else
  begin
    // Para células não selecionadas, você pode definir uma cor padrão
    DBGrid.Canvas.Brush.Color := clWindow;  // Cor de fundo padrão
    DBGrid.Canvas.Font.Color := clWindowText;  // Cor do texto padrão
  end;

  // Desenha a célula
  DBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TViewConsultas.DeletarClick(Sender: TObject);
begin // deletar
  ServiceConexao.FDQuery_Consultas.Close;
  ServiceConexao.FDQuery_Consultas.Open();
  DataSource.DataSet.Delete;
  ServiceConexao.FDQuery_Consultas.FieldByName('con_codigo').AsInteger;
  ServiceConexao.FDQuery_Consultas.FieldByName('con_cliente').AsString;
  ServiceConexao.FDQuery_Consultas.FieldByName('con_profissional').AsString;
  ServiceConexao.FDQuery_Consultas.FieldByName('con_data').AsDateTime;
  ServiceConexao.FDQuery_Consultas.FieldByName('con_hora').AsDateTime;
  ServiceConexao.FDQuery_Consultas.FieldByName('con_telefone').AsString;
  ServiceConexao.FDQuery_Consultas.FieldByName('con_email').AsString;
  ServiceConexao.FDQuery_Consultas.FieldByName('con_observacao').AsString;

  ShowMessage('Deletado com sucesso');
end;

end.
