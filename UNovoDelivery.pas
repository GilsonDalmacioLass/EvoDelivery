unit UNovoDelivery;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Menus;

type
  TFRMNovoDelivery = class(TForm)
    FDQClientes: TFDQuery;
    FDQClientesPessoaEmpresaIdent: TFDAutoIncField;
    FDQClientesPessoaIdentFkPessoaEmpresa: TLongWordField;
    FDQClientesPessoaCod: TStringField;
    FDQClientesPessoaDescr: TStringField;
    FDQClientesEmpresaIdentFkPessoaEmpresa: TLongWordField;
    FDQClientesEmpresaCod: TStringField;
    FDQClientesEmpresaRazaoSocial: TStringField;
    FDQClientesPessoaEmpresaFlagAtivo: TWordField;
    FDQClientesPessoaEmpresaFlagCliente: TWordField;
    FDQClientesPessoaEmpresaFlagFornec: TWordField;
    FDQClientesPessoaEmpresaFlagFunc: TWordField;
    FDQClientesPessoaEmpresaFlagTransp: TWordField;
    FDQClientesPessoaEmpresaFlagUsu: TWordField;
    FDQClientesPerfilAcesSistIdentFkPessoaEmpresa: TLongWordField;
    FDQClientesPessoaIdent: TLongWordField;
    FDQClientesPessoaCod_1: TStringField;
    FDQClientesPessoaTipo: TStringField;
    FDQClientesPessoaNomeRazaoSocial: TStringField;
    FDQClientesPessoaNomeFantasia: TStringField;
    FDQClientesPessoaNome: TStringField;
    FDQClientesPessoaSexo: TStringField;
    FDQClientesPessoaDtNascimento: TDateField;
    FDQClientesPessoaDtFundacao: TDateField;
    FDQClientesPaisIdentNacFkPessoa: TLongWordField;
    FDQClientesCidadeIdentNaturalFkPessoa: TLongWordField;
    FDQClientesEstadoCivilIdentFkPessoa: TLongWordField;
    FDQClientesPessoaNomePai: TStringField;
    FDQClientesPessoaNomeMae: TStringField;
    FDQClientesPessoaNomeConjuge: TStringField;
    FDQClientesPessoaNomeContato: TStringField;
    FDQClientesPessoaCNPJCPF: TStringField;
    FDQClientesPessoaCNPJCPFConjuge: TStringField;
    FDQClientesPessoaInscrEstad: TStringField;
    FDQClientesIndicInscEstadIdentFkPessoa: TLongWordField;
    FDQClientesPessoaInscrMunic: TStringField;
    FDQClientesPessoaInscrSuframa: TStringField;
    FDQClientesPessoaIdentidade: TStringField;
    FDQClientesPessoaIdentidadeDtEmis: TDateField;
    FDQClientesPessoaIdentidadeOrgaoEmis: TStringField;
    FDQClientesEstadoIdentIdentidadeEmisFkPessoa: TLongWordField;
    FDQClientesOcupacaoIdentFkPessoa: TLongWordField;
    FDQClientesPessoaSenha: TVarBytesField;
    FDQClientesPessoaFoneDDI: TStringField;
    FDQClientesPessoaFoneDDD: TStringField;
    FDQClientesPessoaNrFone: TStringField;
    FDQClientesPessoaNrFax: TStringField;
    FDQClientesPessoaEmail: TStringField;
    FDQClientesPessoaSiteWeb: TStringField;
    FDQClientesPessoaFacebook: TStringField;
    FDQClientesPessoaInstagram: TStringField;
    FDQClientesPessoaLinkedin: TStringField;
    FDQClientesPessoaWhatSapp: TStringField;
    FDQClientesPessoaTwitter: TStringField;
    FDQClientesPessoaRespons: TStringField;
    FDQClientesPessoaEndereco: TStringField;
    FDQClientesPessoaEnderecoNr: TStringField;
    FDQClientesPessoaEnderecoCompl: TStringField;
    FDQClientesCEPIdentFkPessoa: TLongWordField;
    FDQClientesPessoaFoto: TBlobField;
    FDQClientesPessoaExcluido: TWordField;
    Panel1: TPanel;
    DSClientes: TDataSource;
    Panel2: TPanel;
    PnlPedido: TPanel;
    Panel7: TPanel;
    FDQCEP: TFDQuery;
    FDQCEPCEPIdent: TFDAutoIncField;
    FDQCEPCEPCod: TStringField;
    FDQCEPCEPEndereco: TStringField;
    FDQCEPCEPBairro: TStringField;
    FDQCEPCEPCompl: TStringField;
    FDQCEPCidadeIdentFkCEP: TLongWordField;
    FDQCEPCidadeNome: TStringField;
    FDQCEPEstadoNomeSigla: TStringField;
    DBGrid3: TDBGrid;
    FDMTProdutos: TFDMemTable;
    DSProdutos: TDataSource;
    FDMTProdutosProdutoIdent: TIntegerField;
    FDMTProdutosProdutoDescricao: TStringField;
    FDMTProdutosProdutoCod: TStringField;
    FDMTProdutosProdutoQtde: TCurrencyField;
    FDMTProdutosProdutoValorUnitario: TCurrencyField;
    FDMTProdutosProdutoValorTotal: TCurrencyField;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    FDMTProdutos1: TFDMemTable;
    DBGAgrupar: TDBGrid;
    DSProdutos1: TDataSource;
    FDMTProdutos1ProdutoDescricao: TStringField;
    FDMTProdutos1ProdutoCod: TStringField;
    FDMTProdutos1ProdutoQtde: TCurrencyField;
    FDMTProdutos1ProdutoValorUnitario: TCurrencyField;
    FDMTProdutos1ProdutoValorTotal: TCurrencyField;
    PnlVoltar: TPanel;
    PnlFinalizarPedido: TPanel;
    Panel17: TPanel;
    LblTotal: TLabel;
    Label10: TLabel;
    Panel3: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    PFundoPPTelefone: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    EdtTelefone: TEdit;
    PnlButtonPesquisar: TPanel;
    PnlselecionarClientePTelefone: TPanel;
    TabSheet2: TTabSheet;
    PFundoPornome: TPanel;
    Label9: TLabel;
    EdtPesquisaPNome: TEdit;
    PPesquisaPorNome: TPanel;
    PSelecionarPorNome: TPanel;
    PnlInfCliente: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    EdtNome: TEdit;
    EdtEndereco: TEdit;
    EdtComplemento: TEdit;
    EdtBairro: TEdit;
    EdtCidade: TEdit;
    EdtNumero: TEdit;
    EdtCEP: TEdit;
    PnlIniciarPedido: TPanel;
    PnlTrocarCliente: TPanel;
    PnlFundoBotoes: TPanel;
    ImgFundoBotoes: TImage;
    ImgFundo2: TImage;
    ImgAdicionar: TImage;
    ImgDeletar: TImage;
    ImgAgrupar: TImage;
    imgDesagrupar: TImage;
    PopupMenu1: TPopupMenu;
    AdicionarProdutoESPAO1: TMenuItem;
    DeletarProdutoDELETE1: TMenuItem;
    Agrupar1: TMenuItem;
    Desagrupar1: TMenuItem;
    FDQDelivery: TFDQuery;
    FDQDeliveryDeliveryIdent: TFDAutoIncField;
    FDQDeliveryDeliveryDataSolicitacao: TDateTimeField;
    FDQDeliveryDeliveryDataProducao: TDateTimeField;
    FDQDeliveryDeliveryDataLiberado: TDateTimeField;
    FDQDeliveryDeliveryDataEntrega: TDateTimeField;
    FDQDeliveryDeliveryDataEntregue: TDateTimeField;
    FDQDeliveryDeliveryDataConclusao: TDateTimeField;
    FDQDeliveryDeliveryStatusIdentFkDeliveryStatus: TIntegerField;
    FDQDeliveryPessoaIdentFkDeliveryCliente: TIntegerField;
    FDQDeliveryPessoaIdentFkDeliveryEntregador: TIntegerField;
    FDQDeliveryTaxaEntregaIdentFkDeliveryTaxa: TIntegerField;
    FDQDeliveryDeliveryValorProdutos: TBCDField;
    FDQDeliveryDeliveryValorTaxaEntrega: TBCDField;
    FDQDeliveryDeliveryValorAcrescimo: TBCDField;
    FDQDeliveryDeliveryValorDesconto: TBCDField;
    FDQDeliveryProdutos: TFDQuery;
    FDQDeliveryProdutosProdutoDeliveryIdent: TFDAutoIncField;
    FDQDeliveryProdutosDeliveryIdentFkDelivery: TIntegerField;
    FDQDeliveryProdutosProdutoEmpresaIdentFkProduto: TIntegerField;
    FDQDeliveryProdutosProdutoDeliveryQtde: TBCDField;
    FDQDeliveryProdutosProdutoDeliveryValorUnitario: TBCDField;
    FDQDeliveryProdutosProdutoDeliveryValorAcrescimo: TBCDField;
    FDQDeliveryProdutosProdutoDeliveryValorDesconto: TBCDField;
    FDQDeliveryProdutosProdutoDeliveryValorTotal: TBCDField;
    Panel16: TPanel;
    LblSubTotal: TLabel;
    LblAdicionais: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    PTipoEntrega: TPanel;
    Panel5: TPanel;
    ImgEntregador: TImage;
    ImgBalcao: TImage;
    PNomeTipoEntrega: TPanel;
    PNomeEntregador: TPanel;
    ImgFundo: TImage;
    FDQDeliveryProdutosProdutoDeliveryPrinted: TBooleanField;
    FDQDeliveryProdutosProdutoDeliveryObservacao: TStringField;
    FDQDeliveryProdutosProdutoEmpresaPessoafkPessoaEmpresaIdent: TIntegerField;
    FDMTProdutosProdutoObs: TStringField;
    FDQDeliveryDeliveryTipoRecebimento: TStringField;
    Panel4: TPanel;
    ImgMinimizar: TImage;
    ImgFechar: TImage;
    DBGrid2: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure PesquisaNumeroParcial(ANumero: string);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure PnlselecionarClientePTelefoneClick(Sender: TObject);
    procedure PnlButtonPesquisarClick(Sender: TObject);
    procedure PnlTrocarClienteClick(Sender: TObject);
    procedure EdtTelefoneKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure PnlIniciarPedidoClick(Sender: TObject);
    procedure PPesquisaPorNomeClick(Sender: TObject);
    procedure PnlVoltarClick(Sender: TObject);
    procedure PnlFinalizarPedidoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AtualizaTotal;
    procedure ImgAdicionarClick(Sender: TObject);
    procedure ImgDeletarClick(Sender: TObject);
    procedure ImgAgruparClick(Sender: TObject);
    procedure imgDesagruparClick(Sender: TObject);
    procedure AdicionarProdutoESPAO1Click(Sender: TObject);
    procedure DeletarProdutoDELETE1Click(Sender: TObject);
    procedure Agrupar1Click(Sender: TObject);
    procedure Desagrupar1Click(Sender: TObject);
    procedure DBGAgruparKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure Panel4Click(Sender: TObject);
    procedure ImgMinimizarClick(Sender: TObject);
    procedure ImgFecharClick(Sender: TObject);

  private
    { Private declarations }
  public
    Entregador: Integer;
    Entrega: Boolean;
    ValorTaxaEntrega: Currency;
    procedure GravarNovoPedido;
    procedure HabilitaTipoRecebimento(tipo:integer; nome:string);
  end;

var
  FRMNovoDelivery: TFRMNovoDelivery;

implementation

{$R *.dfm}

uses UDMPrincipal, UMessageDlg, UCadastroCliente, UAddProduto,
  USelecionaEmpresa, USelecionaTipoEntrega, UTelaInicial;

procedure TFRMNovoDelivery.AdicionarProdutoESPAO1Click(Sender: TObject);
begin
  ImgAdicionarClick(Self);
end;

procedure TFRMNovoDelivery.Agrupar1Click(Sender: TObject);
begin
  ImgAgruparClick(Self);
end;

procedure TFRMNovoDelivery.AtualizaTotal;
begin
  if FRMNovoDelivery.FDMTProdutos.Aggregates[0].Value <> 0 then
    FRMNovoDelivery.LblTotal.Caption := FormatFloat('R$ 0.00',FRMNovoDelivery.FDMTProdutos.Aggregates[0].Value + ValorTaxaEntrega);
end;

procedure TFRMNovoDelivery.DBGAgruparKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    FRMNovoDelivery.Close;
  if Key = #32 then
    ImgAdicionarClick(self);
  if Key = #46 then
    ImgDeletarClick(self);
end;

procedure TFRMNovoDelivery.DBGrid1DblClick(Sender: TObject);
begin
  if FDQClientes.RecordCount >0 then
  begin
    PageControl1.Height := 130;
    EdtNome.Text := FDQClientesPessoaNome.AsString;
    EdtEndereco.Text := FDQClientesPessoaEndereco.AsString;
    EdtNumero.Text := FDQClientesPessoaEnderecoNr.AsString;
    EdtComplemento.Text := FDQClientesPessoaEnderecoCompl.AsString;
    EdtTelefone.Text := DMPrincipal.FormatarTelefone(FDQClientesPessoaFoneDDD.AsString + FDQClientesPessoaNrFone.AsString);
    FDQCEP.Close;
    FDQCEP.SQL.Clear;
    FDQCEP.SQL.Add('select * from vwtbcep');
    FDQCEP.SQL.Add('where CEPIdent = :PCEPIdent');
    FDQCEP.ParamByName('PCEPIdent').AsInteger := FDQClientesCEPIdentFkPessoa.AsInteger;
    FDQCEP.Open();
    EdtBairro.Text := FDQCEPCEPBairro.AsString;
    EdtCidade.Text := FDQCEPCidadeNome.AsString;
    EdtCEP.Text := FDQCEPCEPCod.AsString;
    PnlInfCliente.Visible := True;
    PnlButtonPesquisar.Visible := False;
    Panel2.Caption := ' Cliente Selecionado';
  end;
end;

procedure TFRMNovoDelivery.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    DBGrid1DblClick(Self);
  end;
end;

procedure TFRMNovoDelivery.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    FRMNovoDelivery.Close;
  if Key = #32 then
    ImgAdicionarClick(self);
  if Key = #46 then
    ImgDeletarClick(self);
end;

procedure TFRMNovoDelivery.DeletarProdutoDELETE1Click(Sender: TObject);
begin
 ImgDeletarClick(Self);
end;

procedure TFRMNovoDelivery.Desagrupar1Click(Sender: TObject);
begin
  imgDesagruparClick(Self);
end;

procedure TFRMNovoDelivery.EdtTelefoneKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    PnlButtonPesquisarClick(Self);
  end;
end;

procedure TFRMNovoDelivery.FormCreate(Sender: TObject);
begin
  PFundoPPTelefone.Color := DMPrincipal.HexToTColor('dbdada',0);
  PFundoPornome.Color := DMPrincipal.HexToTColor('dbdada',0);
  PnlButtonPesquisar.Color := DMPrincipal.HexToTColor('4b7ba0',0);
  PnlselecionarClientePTelefone.Color := DMPrincipal.HexToTColor('4b7ba0',0);
  PnlIniciarPedido.Color := DMPrincipal.HexToTColor('4b7ba0',0);
  PnlFundoBotoes.Color := DMPrincipal.HexToTColor('4b7ba0',0);
  PnlFinalizarPedido.Color := DMPrincipal.HexToTColor('4b7ba0',0);
  PnlTrocarCliente.Color := DMPrincipal.HexToTColor('c02b2b',0);
  PnlVoltar.Color := DMPrincipal.HexToTColor('c02b2b',0);
  PPesquisaPorNome.Color := DMPrincipal.HexToTColor('4b7ba0',0);
  PSelecionarPorNome.Color := DMPrincipal.HexToTColor('4b7ba0',0);
end;

procedure TFRMNovoDelivery.FormShow(Sender: TObject);
var
  vPng: TpngImage;
  widthT, heightT: Integer;
begin
  ScaleBy(Screen.Width, 1216);
  Height:=Screen.Height;
  vPng := TpngImage.Create;
  vPng.Assign(ImgMinimizar.Picture);
  widthT := Trunc((36 * (100 * Screen.Width) / 1216) / 100);
  heightT :=  widthT;
  DMPrincipal.SmoothResize(vPng, widthT, heightT);
  ImgMinimizar.Picture.Assign(vPng);
  vPng.Free;
  vPng := TpngImage.Create;
  vPng.Assign(ImgFechar.Picture);
  widthT := Trunc((36 * (100 * Screen.Width) / 1216) / 100);
  heightT :=  widthT;
  DMPrincipal.SmoothResize(vPng, widthT, heightT);
  ImgFechar.Picture.Assign(vPng);
  vPng.Free;
  EdtTelefone.SetFocus;

end;

procedure TFRMNovoDelivery.GravarNovoPedido;
var
entrega: string;
begin
  if not FDMTProdutos.IsEmpty then
  begin
    FDQDelivery.Close;
    FDQDelivery.Open();
    FDQDelivery.Insert;
    FDQDeliveryDeliveryDataSolicitacao.AsDateTime := Now;
    FDQDeliveryDeliveryStatusIdentFkDeliveryStatus.AsInteger := 1; //1 = Solicitado
    FDQDeliveryPessoaIdentFkDeliveryCliente.AsInteger := FDQClientesPessoaEmpresaIdent.AsInteger;
    FDQDeliveryPessoaIdentFkDeliveryEntregador.AsInteger := Entregador;
    FDQDeliveryTaxaEntregaIdentFkDeliveryTaxa.AsInteger := 1;
    FDQDeliveryDeliveryValorProdutos.AsCurrency := FDMTProdutos.Aggregates[0].Value;
    FDQDeliveryDeliveryValorTaxaEntrega.AsCurrency := 1;
    FDQDeliveryDeliveryValorAcrescimo.AsCurrency := 0;
    FDQDeliveryDeliveryValorDesconto.AsCurrency := 0;
    FDQDeliveryDeliveryTipoRecebimento.AsString := 'Cartão de Crédito';
    FDQDelivery.Post;
    FDQDelivery.Close;
    FDQDelivery.Open();
    FDQDelivery.Last;
    FDMTProdutos.First;
    FDQDeliveryProdutos.Close;
    FDQDeliveryProdutos.Open();
    while not FDMTProdutos.Eof do
    begin
      FDQDeliveryProdutos.Insert;
      FDQDeliveryProdutosDeliveryIdentFkDelivery.AsInteger := FDQDeliveryDeliveryIdent.AsInteger;
      FDQDeliveryProdutosProdutoEmpresaIdentFkProduto.AsInteger := FDMTProdutosProdutoIdent.AsInteger;
      FDQDeliveryProdutosProdutoDeliveryQtde.AsCurrency := FDMTProdutosProdutoQtde.AsCurrency;
      FDQDeliveryProdutosProdutoDeliveryValorUnitario.AsCurrency := FDMTProdutosProdutoValorUnitario.AsCurrency;
      FDQDeliveryProdutosProdutoDeliveryValorAcrescimo.AsCurrency := 0;
      FDQDeliveryProdutosProdutoDeliveryValorDesconto.AsCurrency := 0;
      FDQDeliveryProdutosProdutoDeliveryValorTotal.AsCurrency := FDMTProdutosProdutoValorTotal.AsCurrency;
      FDQDeliveryProdutosProdutoDeliveryPrinted.AsBoolean := False;
      FDQDeliveryProdutosProdutoEmpresaPessoafkPessoaEmpresaIdent.AsInteger := Permissoes.codusuario;
      FDQDeliveryProdutosProdutoDeliveryObservacao.AsString := FDMTProdutosProdutoObs.AsString;
      FDQDeliveryProdutos.Post;
      FDMTProdutos.Next;
    end;
    if TEvoMessageDlg.Mensagem('Deseja Iniciar a Produção?', 'Clique em Sim caso queira confirmar a impressão dos'#13'itens lançados.'#13+#13'Clique em Não para cancelar a impressão dos'#13'itens lançados.', 'I', [mbNao,mbSepara,mbSim]) then
    begin
      entrega := 'Retirada Balcão';
      if FDQDeliveryPessoaIdentFkDeliveryEntregador.AsInteger >0 then
        entrega := 'Delivery';
      DMPrincipal.ImprimeProducao(FDQDeliveryDeliveryIdent.AsInteger,entrega);
      FDQDelivery.Edit;
      FDQDeliveryDeliveryDataProducao.AsDateTime := Now;
      FDQDeliveryDeliveryStatusIdentFkDeliveryStatus.AsInteger := 2;
      FDQDelivery.Post;
    end;
    TEvoMessageDlg.Mensagem('Pedido concluído com sucesso!','','I',[mbOk]);
    FRMTelaInicial.FDQDelivery.Close;
    FRMTelaInicial.FDQDelivery.Open();
    FRMNovoDelivery.Close;
  end else
  begin
     TEvoMessageDlg.Mensagem('Não existem produtos lançados!','Por favor adicione produtos'+#13+'para continuar.','E',[mbOk]);
  end;
end;

procedure TFRMNovoDelivery.HabilitaTipoRecebimento(tipo:integer; nome:string);
begin
  if tipo = 1 then
  begin
    ImgEntregador.Visible := True;
    ImgBalcao.Visible := False;
    PNomeTipoEntrega.Caption := '  Entregador';
    PNomeTipoEntrega.Color := DMPrincipal.HexToTColor('1993ee',0);
    PNomeEntregador.Caption := '  '+nome;
    PNomeEntregador.Visible := True;
    PNomeTipoEntrega.Width := 113;
  end else
  begin
    ImgEntregador.Visible := False;
    ImgBalcao.Visible := True;
    PNomeTipoEntrega.Caption := '  Retirar no Balcão';
    PNomeTipoEntrega.Color := DMPrincipal.HexToTColor('d78e00',0);
    PNomeTipoEntrega.Width := 160;
  end;
  PTipoEntrega.Visible := True;
end;

procedure TFRMNovoDelivery.ImgFecharClick(Sender: TObject);
begin
  if TEvoMessageDlg.Mensagem('Deseja realmente sair da tela?','Ao sair o pedido atual será cancelado!!','Q',[mbNao, mbSepara, mbSim]) then
  begin
    Self.Close;
  end;

end;

procedure TFRMNovoDelivery.ImgAdicionarClick(Sender: TObject);
begin
  FRMAddProduto := TFRMAddProduto.Create(self);
  FRMAddProduto.ShowModal;
end;

procedure TFRMNovoDelivery.ImgAgruparClick(Sender: TObject);
var
AIsCreate: Boolean;
begin
  FDMTProdutos.First;
  FDMTProdutos1.Open;
  while not FDMTProdutos.Eof do
  begin
    if FDMTProdutos1.RecordCount >=1 then
    begin
      try
        AIsCreate := False;
        FDMTProdutos1.First;
        while not FDMTProdutos1.Eof  do
        begin
          if FDMTProdutos1ProdutoDescricao.AsString = FDMTProdutosProdutoDescricao.AsString then
            AIsCreate := True;
          FDMTProdutos1.Next;
        end;
      finally
       if  AIsCreate = False then
        begin
          FDMTProdutos1.Append;
          FDMTProdutos1ProdutoDescricao.AsString := FDMTProdutosProdutoDescricao.AsString;
          FDMTProdutos1ProdutoCod.AsString := FDMTProdutosProdutoCod.AsString;
          FDMTProdutos1ProdutoQtde.AsCurrency := FDMTProdutosProdutoQtde.AsCurrency;
          FDMTProdutos1ProdutoValorUnitario.AsCurrency := FDMTProdutosProdutoValorUnitario.AsCurrency;
          FDMTProdutos1ProdutoValorTotal.AsCurrency := FDMTProdutosProdutoValorTotal.AsCurrency;
          FDMTProdutos1.Post;
        end else
        begin
          FDMTProdutos1.First;
          while not FDMTProdutos1.Eof  do
          begin
            if FDMTProdutos1ProdutoDescricao.AsString = FDMTProdutosProdutoDescricao.AsString then
            begin
              FDMTProdutos1.Edit;
              FDMTProdutos1ProdutoQtde.AsCurrency := FDMTProdutos1ProdutoQtde.AsCurrency + FDMTProdutosProdutoQtde.AsCurrency;
              FDMTProdutos1ProdutoValorTotal.AsCurrency := FDMTProdutos1ProdutoValorTotal.AsCurrency +  FDMTProdutosProdutoValorTotal.AsCurrency;
              FDMTProdutos1.Post;
            end;
            FDMTProdutos1.Next;
          end;
        end;
      end;
    end else
    begin
      FDMTProdutos1.Append;
      FDMTProdutos1ProdutoDescricao.AsString := FDMTProdutosProdutoDescricao.AsString;
      FDMTProdutos1ProdutoCod.AsString := FDMTProdutosProdutoCod.AsString;
      FDMTProdutos1ProdutoQtde.AsCurrency := FDMTProdutosProdutoQtde.AsCurrency;
      FDMTProdutos1ProdutoValorUnitario.AsCurrency := FDMTProdutosProdutoValorUnitario.AsCurrency;
      FDMTProdutos1ProdutoValorTotal.AsCurrency := FDMTProdutosProdutoValorTotal.AsCurrency;
      FDMTProdutos1.Post;
    end;
    FDMTProdutos.Next;
  end;
  DBGAgrupar.Visible := True;
end;

procedure TFRMNovoDelivery.ImgDeletarClick(Sender: TObject);
begin
 if DBGAgrupar.Visible then
  begin
    TEvoMessageDlg.Mensagem('Por Favor desagrupe os produtos para deletar o produto!','','I',[mbOk]);
  end else
  begin
    if TEvoMessageDlg.Mensagem('Deseja realmente excluir o produto lançado?','','Q',[mbNao,mbSepara,mbSim])then
    begin
      FDMTProdutos.Delete;
    end;
  end;
end;

procedure TFRMNovoDelivery.imgDesagruparClick(Sender: TObject);
begin
  DBGAgrupar.Visible := False;
  FDMTProdutos1.Close;
end;

procedure TFRMNovoDelivery.ImgMinimizarClick(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TFRMNovoDelivery.PnlVoltarClick(Sender: TObject);
begin
  if PnlVoltar.Caption = 'Cancelar' then
  begin
    Panel1.Width :=  625;
    Panel3.Width := 610;
    PnlPedido.Visible := False;
    PnlFinalizarPedido.Color := DMPrincipal.HexToTColor('4b7ba0',0);
    PnlFinalizarPedido.Caption := 'Tipo de Entrega';
  end else
  begin

  end;
end;

procedure TFRMNovoDelivery.PnlFinalizarPedidoClick(Sender: TObject);
begin
  if PnlFinalizarPedido.Caption = 'Tipo de Entrega' then
  begin
    FRMSelecionaTipoEntrega := TFRMSelecionaTipoEntrega.Create(Self);
    FRMSelecionaTipoEntrega.ShowModal;
    PnlFinalizarPedido.Caption := 'Finalizar Pedido';
    PnlFinalizarPedido.Color := DMPrincipal.HexToTColor('42b72a',0);

  end else
  begin
    GravarNovoPedido;
  end;
end;

procedure TFRMNovoDelivery.PnlIniciarPedidoClick(Sender: TObject);
begin
  Panel1.Width := 500;
  Panel3.Width := 485;
  ValorTaxaEntrega := 0;
  PnlPedido.Visible := True;
  FDMTProdutos.Close;
  FDMTProdutos.Open;
  DBGrid3.SetFocus;
end;

procedure TFRMNovoDelivery.PnlselecionarClientePTelefoneClick(Sender: TObject);
begin
  if DBGrid1.Focused then
  begin
    DBGrid1DblClick(Self);
  end else
  begin
    TEvoMessageDlg.Mensagem('Por favor selecione o cliente'+#13+' na listagem!','','C',[mbOk]);
  end;

end;

procedure TFRMNovoDelivery.PnlTrocarClienteClick(Sender: TObject);
begin
  EdtNome.Text := '';
  EdtTelefone.Text := '(  )             -';
  EdtEndereco.Text := '';
  EdtComplemento.Text := '';
  EdtBairro.Text := '';
  EdtCidade.Text := '';
  EdtNumero.Text := '';
  EdtCEP.Text := '';
  PnlInfCliente.Visible := False;
  PnlButtonPesquisar.Visible := True;
  Panel2.Caption := ' Pesquisa de Cliente';
  if PageControl1.ActivePage = TabSheet1 then
  begin
    EdtTelefone.SetFocus;
  end else
  begin
    EdtPesquisaPNome.SetFocus;
  end;


end;

procedure TFRMNovoDelivery.PPesquisaPorNomeClick(Sender: TObject);
begin
  FDQClientes.Close;
  FDQClientes.SQL.Clear;
  FDQClientes.SQL.Add('select * from vwtbpessoaempresa');
  FDQClientes.SQL.Add('left join tbpessoa on PessoaIdentFkPessoaEmpresa = PessoaIdent');
  FDQClientes.SQL.Add('where (PessoaEmpresaFlagCliente = 1)');
  FDQClientes.SQL.Add('and (PessoaDescr like '+QuotedStr(('%'+EdtPesquisaPNome.Text+'%'))+')');
  FDQClientes.SQL.Add('and (EmpresaIdentFkPessoaEmpresa = :PEmpresaIdent)');
  FDQClientes.ParamByName('PEmpresaIdent').AsInteger:= DMPrincipal.IdentEmpresaSelecionada;
  FDQClientes.Open();
  if not FDQClientes.IsEmpty then
  begin
    if FDQClientes.RecordCount >= 1 then
    begin
      PageControl1.Height := 285;
    end;
  end;
end;

procedure TFRMNovoDelivery.Panel4Click(Sender: TObject);
begin
FRMNovoDelivery.Close;
end;

procedure TFRMNovoDelivery.PesquisaNumeroParcial(ANumero: string);
begin
  FDQClientes.Close;
  FDQClientes.SQL.Clear;
  FDQClientes.SQL.Add('select * from vwtbpessoaempresa');
  FDQClientes.SQL.Add('left join tbpessoa on PessoaIdentFkPessoaEmpresa = PessoaIdent');
  FDQClientes.SQL.Add('where (PessoaEmpresaFlagCliente = 1)');
  FDQClientes.SQL.Add('and (PessoaNrFone like '+QuotedStr(('%'+ANumero+'%'))+')');
  FDQClientes.SQL.Add('and (EmpresaIdentFkPessoaEmpresa = :PEmpresaIdent)');
  FDQClientes.ParamByName('PEmpresaIdent').AsInteger:= DMPrincipal.IdentEmpresaSelecionada;
  FDQClientes.Open();
  if not FDQClientes.IsEmpty then
  begin
    if FDQClientes.RecordCount >= 1 then
    begin
      PageControl1.Height := 285;
    end;
  end else
  begin
    TEvoMessageDlg.Mensagem('Cliente não encontrado!','O numero de telefone informado não existe'+#13+
      'ou ainda não esta cadastrado!','I', [mbOk]);
    if TEvoMessageDlg.Mensagem('Deseja Adicionar um novo cliente?','','Q',[mbSim,mbSepara,mbNao]) then
    begin
     // FRMCadastroCliente := TFRMCadastroCliente.Create(Self);
     // FRMCadastroCliente.ShowModal;
    end;
  end;
end;

procedure TFRMNovoDelivery.PnlButtonPesquisarClick(Sender: TObject);
var
aNumero: string;
qtdCaractere: integer;
begin
  if (EdtTelefone.Text <> '(  )             -') and (EdtTelefone.Text <> '') then
  begin
    if Length(EdtTelefone.Text)< 8 then
    begin
      //DBGrid1.SetFocus;
      PesquisaNumeroParcial(EdtTelefone.Text);
    end else
    begin
      aNumero := EdtTelefone.Text;
      EdtTelefone.Text := DMPrincipal.FormatarTelefone(EdtTelefone.Text);
      if Copy(EdtTelefone.Text,1,1) = '(' then
      begin
        qtdCaractere := Length(aNumero);
        PesquisaNumeroParcial(Copy(aNumero,4,qtdCaractere - 4));
      end else
      begin
        if Length(EdtTelefone.Text) <8 then
        begin
          PesquisaNumeroParcial(EdtTelefone.Text);
        end else
        begin
         PesquisaNumeroParcial(aNumero);
        end;

      end;
    end;

  end;
end;

end.
