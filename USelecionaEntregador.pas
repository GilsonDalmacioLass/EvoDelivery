unit USelecionaEntregador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFRMSelecionaEntregador = class(TForm)
    DBGrid1: TDBGrid;
    EdtPesquisa: TEdit;
    PnlButtonPesquisar: TPanel;
    FDQEntregadores: TFDQuery;
    FDQEntregadoresPessoaIdent: TFDAutoIncField;
    FDQEntregadoresPessoaCod: TStringField;
    FDQEntregadoresPessoaTipo: TStringField;
    FDQEntregadoresPessoaNomeRazaoSocial: TStringField;
    FDQEntregadoresPessoaNomeFantasia: TStringField;
    FDQEntregadoresPessoaNome: TStringField;
    FDQEntregadoresPessoaSexo: TStringField;
    FDQEntregadoresPessoaDtNascimento: TDateField;
    FDQEntregadoresPessoaDtFundacao: TDateField;
    FDQEntregadoresPaisIdentNacFkPessoa: TLongWordField;
    FDQEntregadoresCidadeIdentNaturalFkPessoa: TLongWordField;
    FDQEntregadoresEstadoCivilIdentFkPessoa: TLongWordField;
    FDQEntregadoresPessoaNomePai: TStringField;
    FDQEntregadoresPessoaNomeMae: TStringField;
    FDQEntregadoresPessoaNomeConjuge: TStringField;
    FDQEntregadoresPessoaNomeContato: TStringField;
    FDQEntregadoresPessoaCNPJCPF: TStringField;
    FDQEntregadoresPessoaCNPJCPFConjuge: TStringField;
    FDQEntregadoresPessoaInscrEstad: TStringField;
    FDQEntregadoresIndicInscEstadIdentFkPessoa: TLongWordField;
    FDQEntregadoresPessoaInscrMunic: TStringField;
    FDQEntregadoresPessoaInscrSuframa: TStringField;
    FDQEntregadoresPessoaIdentidade: TStringField;
    FDQEntregadoresPessoaIdentidadeDtEmis: TDateField;
    FDQEntregadoresPessoaIdentidadeOrgaoEmis: TStringField;
    FDQEntregadoresEstadoIdentIdentidadeEmisFkPessoa: TLongWordField;
    FDQEntregadoresOcupacaoIdentFkPessoa: TLongWordField;
    FDQEntregadoresPessoaSenha: TVarBytesField;
    FDQEntregadoresPessoaFoneDDI: TStringField;
    FDQEntregadoresPessoaFoneDDD: TStringField;
    FDQEntregadoresPessoaNrFone: TStringField;
    FDQEntregadoresPessoaNrFax: TStringField;
    FDQEntregadoresPessoaEmail: TStringField;
    FDQEntregadoresPessoaSiteWeb: TStringField;
    FDQEntregadoresPessoaFacebook: TStringField;
    FDQEntregadoresPessoaInstagram: TStringField;
    FDQEntregadoresPessoaLinkedin: TStringField;
    FDQEntregadoresPessoaWhatSapp: TStringField;
    FDQEntregadoresPessoaTwitter: TStringField;
    FDQEntregadoresPessoaRespons: TStringField;
    FDQEntregadoresPessoaEndereco: TStringField;
    FDQEntregadoresPessoaEnderecoNr: TStringField;
    FDQEntregadoresPessoaEnderecoCompl: TStringField;
    FDQEntregadoresCEPIdentFkPessoa: TLongWordField;
    FDQEntregadoresPessoaFoto: TBlobField;
    FDQEntregadoresPessoaExcluido: TWordField;
    FDQEntregadoresPessoaEmpresaIdent: TLongWordField;
    FDQEntregadoresPessoaIdentFkPessoaEmpresa: TLongWordField;
    FDQEntregadoresEmpresaIdentFkPessoaEmpresa: TLongWordField;
    FDQEntregadoresPessoaEmpresaFlagAtivo: TWordField;
    FDQEntregadoresPessoaEmpresaFlagCliente: TWordField;
    FDQEntregadoresPessoaEmpresaFlagFornec: TWordField;
    FDQEntregadoresPessoaEmpresaFlagFunc: TWordField;
    FDQEntregadoresPessoaEmpresaFlagTransp: TWordField;
    FDQEntregadoresPessoaEmpresaFlagUsu: TWordField;
    FDQEntregadoresPessoaEmpresaFlagMotoboy: TWordField;
    FDQEntregadoresPerfilAcesSistIdentFkPessoaEmpresa: TLongWordField;
    FDQEntregadoresPessoaEmpresaExcluido: TWordField;
    DSEntregador: TDataSource;
    PCabecalho1: TPanel;
    PCabecalho: TPanel;
    PVoltar: TPanel;
    procedure PnlButtonPesquisarClick(Sender: TObject);
    procedure EdtPesquisaChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PVoltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMSelecionaEntregador: TFRMSelecionaEntregador;

implementation

{$R *.dfm}

uses UDMPrincipal, USelecionaTipoEntrega, UNovoDelivery, UTelaInicial;

procedure TFRMSelecionaEntregador.DBGrid1DblClick(Sender: TObject);
begin
  FRMNovoDelivery.Entregador := FDQEntregadoresPessoaEmpresaIdent.AsInteger;
  FRMNovoDelivery.HabilitaTipoRecebimento(1, FDQEntregadoresPessoaNome.AsString);
  FRMSelecionaTipoEntrega.Close;
  FRMSelecionaEntregador.Close;
end;

procedure TFRMSelecionaEntregador.EdtPesquisaChange(Sender: TObject);
begin
  PnlButtonPesquisarClick(Self);
end;

procedure TFRMSelecionaEntregador.FormCreate(Sender: TObject);
begin
  FRMSelecionaTipoEntrega.Color := DMPrincipal.HexToTColor('c0bebe',0);
  PVoltar.Color := DMPrincipal.HexToTColor('c02b2b',0);
  PCabecalho.Color := DMPrincipal.HexToTColor('3e3e3e',0);
  PCabecalho1.Color := DMPrincipal.HexToTColor('8e8e8e',0);
end;

procedure TFRMSelecionaEntregador.PnlButtonPesquisarClick(Sender: TObject);
begin
  FDQEntregadores.Close;
  FDQEntregadores.SQL.Clear;
  FDQEntregadores.SQL.Add('select * from tbpessoa');
  FDQEntregadores.SQL.Add('left join tbpessoaempresa on PessoaIdentFkPessoaEmpresa = PessoaIdent');
  FDQEntregadores.SQL.Add('where (PessoaEmpresaFlagMotoboy = 1)');
  FDQEntregadores.SQL.Add('and (EmpresaIdentFkPessoaEmpresa = :PEmpresaIdent)');
  FDQEntregadores.SQL.Add('and (PessoaNome like '+QuotedStr(('%'+EdtPesquisa.Text+'%'))+')');
  FDQEntregadores.ParamByName('PEmpresaIdent').AsInteger := DMPrincipal.IdentEmpresaSelecionada;
  FDQEntregadores.Open();
end;

procedure TFRMSelecionaEntregador.PVoltarClick(Sender: TObject);
begin
  FRMSelecionaEntregador.Close;
end;

end.
