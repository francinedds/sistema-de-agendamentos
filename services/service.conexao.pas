unit service.conexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TServiceConexao = class(TDataModule)
    FDConnection: TFDConnection;
    FDQuery_Consultas: TFDQuery;
    FDQuery_Clientes: TFDQuery;
    FDQuery_ClientesPES_CODIGO: TIntegerField;
    FDQuery_ClientesPES_NOMECOMPLETO: TStringField;
    FDQuery_ClientesPES_CPF: TStringField;
    FDQuery_ClientesPES_TELEFONE: TStringField;
    FDQuery_ClientesPES_EMAIL: TStringField;
    FDQuery_ConsultasCON_CODIGO: TIntegerField;
    FDQuery_ConsultasCON_CLIENTE: TStringField;
    FDQuery_ConsultasCON_PROFISSIONAL: TStringField;
    FDQuery_ConsultasCON_DATA: TDateField;
    FDQuery_ConsultasCON_HORA: TTimeField;
    FDQuery_ConsultasCON_TELEFONE: TStringField;
    FDQuery_ConsultasCON_EMAIL: TStringField;
    FDQuery_ConsultasCON_OBSERVACAO: TStringField;
    FDQuery_Login: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceConexao: TServiceConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
