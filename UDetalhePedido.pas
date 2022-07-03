unit UDetalhePedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.Mask, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Menus;

type
  TFRMDetalhePedido = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    FDQDelivery: TFDQuery;
    DataSource1: TDataSource;
    FDQDeliveryCodigoDelivery: TFDAutoIncField;
    FDQDeliveryData: TDateTimeField;
    FDQDeliveryCliente: TStringField;
    FDQDeliveryBairro: TStringField;
    FDQDeliveryValorPedido: TBCDField;
    FDQDeliveryIdStatus: TIntegerField;
    FDQDeliveryStatus: TStringField;
    FDQDeliveryEntregador: TStringField;
    FDQDeliveryCódigo: TLongWordField;
    FDQDeliveryDescrição: TStringField;
    FDQDeliveryQuantidade: TBCDField;
    FDQDeliveryValor: TBCDField;
    FDQDeliveryTotal: TBCDField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBText1: TDBText;
    Label4: TLabel;
    PStatusDelivery: TPanel;
    ImgFundoStatus: TImage;
    ImgFrenteStatus: TImage;
    FDQAlteraStatus: TFDQuery;
    FDQAlteraStatusDeliveryIdent: TFDAutoIncField;
    FDQAlteraStatusDeliveryDataSolicitacao: TDateTimeField;
    FDQAlteraStatusDeliveryDataProducao: TDateTimeField;
    FDQAlteraStatusDeliveryDataLiberado: TDateTimeField;
    FDQAlteraStatusDeliveryDataEntrega: TDateTimeField;
    FDQAlteraStatusDeliveryDataEntregue: TDateTimeField;
    FDQAlteraStatusDeliveryDataConclusao: TDateTimeField;
    FDQAlteraStatusDeliveryStatusIdentFkDeliveryStatus: TIntegerField;
    FDQAlteraStatusPessoaIdentFkDeliveryCliente: TIntegerField;
    FDQAlteraStatusPessoaIdentFkDeliveryEntregador: TIntegerField;
    FDQAlteraStatusTaxaEntregaIdentFkDeliveryTaxa: TIntegerField;
    FDQAlteraStatusDeliveryValorProdutos: TBCDField;
    FDQAlteraStatusDeliveryValorTaxaEntrega: TBCDField;
    FDQAlteraStatusDeliveryValorAcrescimo: TBCDField;
    FDQAlteraStatusDeliveryValorDesconto: TBCDField;
    Label5: TLabel;
    LblProducao: TLabel;
    LblEntregaLiberada: TLabel;
    LblPagamento: TLabel;
    PRodape: TPanel;
    PCabecalho1: TPanel;
    PCabecalho: TPanel;
    ImgFechar: TImage;
    PEditarBotoesProdutosa: TPanel;
    PnlButtonEditar: TPanel;
    PnlAdicionarProduto: TPanel;
    PnlDeletarProduto: TPanel;
    PnlButtonCancelar: TPanel;
    PnlButtonProximaEtapa: TPanel;
    LblProxima1: TLabel;
    LblProxima2: TLabel;
    PnlButtonEfeitoProximaEtapa: TPanel;
    PnlCancelarEfeito: TPanel;
    PnlEditarEfeito: TPanel;
    PopupMenu1: TPopupMenu;
    PrximaEtapa1: TMenuItem;
    Editar1: TMenuItem;
    Cancelar1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure ImgFrenteStatusDblClick(Sender: TObject);
    procedure AlteraStatusDeliveryPublic(IdentStatus: Integer);
    procedure FormCreate(Sender: TObject);
    procedure ImgFecharClick(Sender: TObject);
    procedure PnlButtonEditarClick(Sender: TObject);
    procedure PnlButtonProximaEtapaClick(Sender: TObject);
    procedure PrximaEtapa1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure PnlButtonCancelarClick(Sender: TObject);
  private
    procedure AlteraStatusDelivery(IdentStatus: Integer);
    procedure AtualizaStatus;
  public
    DeliveryIdent: integer;
    procedure CarregaPedido;
  end;

var
  FRMDetalhePedido: TFRMDetalhePedido;

implementation

{$R *.dfm}

uses UMessageDlg, UDMPrincipal, UTelaInicial, UPagamento;

{ TFRMDetalhePedido }

procedure TFRMDetalhePedido.AlteraStatusDelivery(IdentStatus: Integer);
begin
  FDQAlteraStatus.Close;
  FDQAlteraStatus.SQL.Clear;
  FDQAlteraStatus.SQL.Add('select * from tbdelivery');
  FDQAlteraStatus.SQL.Add('where DeliveryIdent = :PIdentDelivery');
  FDQAlteraStatus.ParamByName('PIdentDelivery').AsInteger := DeliveryIdent;
  FDQAlteraStatus.Open();
  FDQAlteraStatus.Edit;
  FDQAlteraStatusDeliveryStatusIdentFkDeliveryStatus.AsInteger := IdentStatus;
  if IdentStatus = 2 then
    FDQAlteraStatusDeliveryDataProducao.AsDateTime := Now;
  if IdentStatus = 3 then
    FDQAlteraStatusDeliveryDataLiberado.AsDateTime := Now;
  if IdentStatus = 4 then
    FDQAlteraStatusDeliveryDataEntrega.AsDateTime := Now;
  if IdentStatus = 5 then
    FDQAlteraStatusDeliveryDataEntregue.AsDateTime := Now;
  if IdentStatus = 6 then
    FDQAlteraStatusDeliveryDataConclusao.AsDateTime := Now;
  if IdentStatus = 7 then
  begin

  end;
  FDQAlteraStatus.Post;
  AtualizaStatus;
  FDQDelivery.Close;
  FDQDelivery.Open();
  DBText1.Caption := FormatFloat('000', FDQDeliveryCodigoDelivery.AsInteger);
  FRMTelaInicial.FDQDelivery.Close;
  FRMTelaInicial.FDQDelivery.Open();
  FRMTelaInicial.AtualizaNotificationEntrega;
  FRMTelaInicial.AtualizaNotificationConcluido;
end;

procedure TFRMDetalhePedido.AlteraStatusDeliveryPublic(IdentStatus: Integer);
begin
  AlteraStatusDelivery(IdentStatus);
end;

procedure TFRMDetalhePedido.AtualizaStatus;
begin
  FDQAlteraStatus.Close;
  FDQAlteraStatus.SQL.Clear;
  FDQAlteraStatus.SQL.Add('select * from tbdelivery');
  FDQAlteraStatus.SQL.Add('where DeliveryIdent = :PIdentDelivery');
  FDQAlteraStatus.ParamByName('PIdentDelivery').AsInteger := DeliveryIdent;
  FDQAlteraStatus.Open();
  if FDQAlteraStatusDeliveryStatusIdentFkDeliveryStatus.AsInteger = 1 then
  begin
    LblProducao.Caption := 'Iniciar Produção';
    LblProxima1.Caption := 'Iniciar';
    LblProxima2.Caption := 'Produção';
    LblEntregaLiberada.Caption := ' ';
  end;
  if FDQAlteraStatusDeliveryStatusIdentFkDeliveryStatus.AsInteger = 2 then
  begin
    ImgFundoStatus.Width := 245;
    LblProducao.Caption := 'Em Produção';
    LblProxima1.Caption := 'Liberar';
    LblProxima2.Caption := 'Entrega';
    LblEntregaLiberada.Caption := ' ';
  end;
  if FDQAlteraStatusDeliveryStatusIdentFkDeliveryStatus.AsInteger = 3 then
  begin
    ImgFundoStatus.Width := 430;
    LblProducao.Caption := 'Produzido';
    LblProxima1.Caption := 'Iniciar';
    LblProxima2.Caption := 'Entrega';
    LblEntregaLiberada.Caption := 'Entrega Liberada';
  end;
  if FDQAlteraStatusDeliveryStatusIdentFkDeliveryStatus.AsInteger = 4 then
  begin
    ImgFundoStatus.Width := 460;
    LblProducao.Caption := 'Produzido';
    LblProxima1.Caption := 'Finalizar';
    LblProxima2.Caption := 'Entrega';
    LblEntregaLiberada.Caption := 'Em Entrega';
  end;
  if FDQAlteraStatusDeliveryStatusIdentFkDeliveryStatus.AsInteger = 5 then
  begin
    ImgFundoStatus.Width := 675;
    LblProducao.Caption := 'Produzido';
    LblProxima1.Caption := 'Efetuar';
    LblProxima2.Caption := 'Pagamento';
    LblEntregaLiberada.Caption := 'Entregue';
    LblPagamento.Caption := 'Aguardando Pagamento';
  end;
  if FDQAlteraStatusDeliveryStatusIdentFkDeliveryStatus.AsInteger = 6 then
  begin
    ImgFundoStatus.Width := 860;
    LblProducao.Caption := 'Produzido';
    LblEntregaLiberada.Caption := 'Entregue';
    LblPagamento.Caption := 'Pagamento Ok';
    PnlButtonEditar.Visible := False;
    PnlButtonCancelar.Visible := False;
    PnlButtonProximaEtapa.Visible := False;
  end;

end;

procedure TFRMDetalhePedido.Cancelar1Click(Sender: TObject);
begin
  PnlButtonCancelarClick(Self);
end;

procedure TFRMDetalhePedido.CarregaPedido;
begin
  FDQDelivery.Close;
  FDQDelivery.SQL.Clear;
  FDQDelivery.SQL.Add(
    ' SELECT                                                  ' +
    '     DeliveryIdent as CodigoDelivery,                    ' +
    '     DeliveryDataSolicitacao as Data,                    ' +
    '     a.PessoaNome as Cliente,                            ' +
    '     CEPBairro as Bairro,                                ' +
    '     DeliveryValorProdutos as ValorPedido,               ' +
    '     DeliveryStatusIdentFkDeliveryStatus as IdStatus,    ' +
    '     DeliveryStatusDescricao as Status,                  ' +
    '     c.PessoaNome as Entregador,                         ' +
    '     ProdutoIdent as Código,                             ' +
    '     ProdutoDescr as Descrição,                          ' +
    '     ProdutoDeliveryQtde as Quantidade,                  ' +
    '     ProdutoDeliveryValorUnitario as Valor,              ' +
    '     ProdutoDeliveryValorTotal as Total                  ' +
    ' FROM tbdelivery                                         ' +
    '   LEFT JOIN tbdeliveryStatus ON DeliveryStatusIdentFkDeliveryStatus = DeliveryStatusIdent  ' +
    '   LEFT JOIN tbpessoaempresa ON PessoaIdentFkDeliveryCliente = PessoaEmpresaIdent           ' +
    '   LEFT JOIN tbpessoa a ON PessoaIdentFkPessoaEmpresa = a.PessoaIdent                       ' +
    '   LEFT JOIN tbpessoaempresa b ON PessoaIdentFkDeliveryEntregador = b.PessoaEmpresaIdent    ' +
    '   LEFT JOIN tbpessoa c ON b.PessoaIdentFkPessoaEmpresa = c.PessoaIdent                     ' +
    '   LEFT JOIN tbcep ON CEPIdent = a.CEPIdentFkPessoa                                         ' +
    '   INNER JOIN tbprodutodelivery ON DeliveryIdent = DeliveryIdentFkDelivery                  ' +
    '   LEFT JOIN tbprodutoempresa ON ProdutoEmpresaIdentFkProduto = ProdutoEmpresaIdent         ' +
    '   LEFT JOIN tbproduto ON ProdutoIdent = ProdutoIdentFkProdutoEmpresa                       ' +
    ' WHERE DeliveryIdent = :PIdentDelivery '
  );
  FDQDelivery.ParamByName('PIdentDelivery').AsInteger := DeliveryIdent;
  FDQDelivery.Open();
  AtualizaStatus;
end;

procedure TFRMDetalhePedido.Editar1Click(Sender: TObject);
begin
  PnlButtonEditarClick(Self);
end;

procedure TFRMDetalhePedido.FormCreate(Sender: TObject);
begin

  PCabecalho.Color := DMPrincipal.HexToTColor('3e3e3e',0);
  PRodape.Color := DMPrincipal.HexToTColor('3e3e3e',0);
  PCabecalho1.Color := DMPrincipal.HexToTColor('8e8e8e',0);
  PnlButtonEditar.Color := DMPrincipal.HexToTColor('4b7ba0',0);
  PnlEditarEfeito.Color := DMPrincipal.HexToTColor('4b7ba0',50);
  PnlButtonCancelar.Color := DMPrincipal.HexToTColor('c02b2b',0);
  PnlCancelarEfeito.Color := DMPrincipal.HexToTColor('c02b2b',50);
  PnlButtonProximaEtapa.Color := DMPrincipal.HexToTColor('42b72a',0);
  PnlButtonEfeitoProximaEtapa.Color := DMPrincipal.HexToTColor('42b72a',50);
end;

procedure TFRMDetalhePedido.FormShow(Sender: TObject);
begin
  if DeliveryIdent >0 then
  begin
    CarregaPedido;
    DBText1.Caption := FormatFloat('000', FDQDeliveryCodigoDelivery.AsInteger);
  end;
end;

procedure TFRMDetalhePedido.ImgFecharClick(Sender: TObject);
begin
FRMDetalhePedido.Close;
end;

procedure TFRMDetalhePedido.ImgFrenteStatusDblClick(Sender: TObject);
var
entrega:string;
begin
  if PnlButtonEditar.Caption = '  Editar' then
  begin
    if FDQDeliveryStatus.AsString = 'Solicitado' then
    begin
      if TEvoMessageDlg.Mensagem('Deseja iniciar a produção do pedido?','','Q',[mbNao,mbSepara,mbSim]) then
      begin
        AlteraStatusDelivery(2);
        entrega := 'Retirada Balcão';
        if FDQDeliveryEntregador.AsString <>'' then
          entrega := 'Delivery';
        DMPrincipal.ImprimeProducao(FDQDeliveryCodigoDelivery.AsInteger,entrega);
      end;
      exit
    end;
    if FDQDeliveryStatus.AsString = 'Produção' then
    begin
      if TEvoMessageDlg.Mensagem('Deseja finalizar a produção e liberar'+#13+
      'para entrega o pedido?','','Q',[mbNao,mbSepara,mbSim]) then
      begin
        AlteraStatusDelivery(3);
        DMPrincipal.ImprimeComprovanteEntrega(FDQDeliveryCodigoDelivery.AsInteger);
      end;
      exit
    end;
    if FDQDeliveryStatus.AsString = 'Liberado Entrega' then
    begin
      if TEvoMessageDlg.Mensagem('Deseja iniciar a entrega?','','Q',[mbNao,mbSepara,mbSim]) then
        AlteraStatusDelivery(4);
      exit
    end;
    if FDQDeliveryStatus.AsString = 'Entregando' then
    begin
      if TEvoMessageDlg.Mensagem('Confirmar entrega do pedido?','','Q',[mbNao,mbSepara,mbSim]) then
        AlteraStatusDelivery(5);
      exit
    end;
     if FDQDeliveryStatus.AsString = 'Entregue' then
    begin
      if TEvoMessageDlg.Mensagem('Deseja efetuar o pagamento?','','Q',[mbNao,mbSepara,mbSim]) then
      begin
        FRMPagamento := TFRMPagamento.Create(self);
        FRMPagamento.ShowModal;
      end;
      exit
    end;
  end else
  begin
    TEvoMessageDlg.Mensagem('O pedido está em modo edição!','Salve ou cancele as alterações.','E',[mbOk]);
  end;

end;

procedure TFRMDetalhePedido.PnlButtonCancelarClick(Sender: TObject);
begin
  if PnlButtonEditar.Caption = '  Editar' then
  begin
    if TEvoMessageDlg.Mensagem('Deseja realmente cancelar o pedido?','','Q',[mbNao,mbSepara,mbSim]) then
    begin
      AlteraStatusDelivery(7);
    end;
  end else
  begin
    PnlButtonEditar.Caption := '  Editar';
    PEditarBotoesProdutosa.Visible := False;
    DBGrid1.Width := 865;
  end;
end;

procedure TFRMDetalhePedido.PnlButtonEditarClick(Sender: TObject);
begin
  if PnlButtonEditar.Caption = '  Editar' then
  begin
    PnlButtonEditar.Caption := '  Salvar';
    PEditarBotoesProdutosa.Visible := True;
    DBGrid1.Width := 740;
  end else
  begin
    PnlButtonEditar.Caption := '  Editar';
    PEditarBotoesProdutosa.Visible := False;
    DBGrid1.Width := 865;
  end;

end;

procedure TFRMDetalhePedido.PnlButtonProximaEtapaClick(Sender: TObject);
begin
  ImgFrenteStatusDblClick(Self);
end;

procedure TFRMDetalhePedido.PrximaEtapa1Click(Sender: TObject);
begin
  ImgFrenteStatusDblClick(Self);
end;

end.
