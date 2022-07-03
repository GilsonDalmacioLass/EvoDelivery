unit UAddProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls,UDMPrincipal, Vcl.Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFRMAddProduto = class(TForm)
    ImgFundo: TImage;
    ImgSair: TImage;
    ImgVendedor: TImage;
    ImgProduto: TImage;
    EdtVendedor: TEdit;
    EdtProduto: TEdit;
    EdtQtd: TEdit;
    LblVendedor: TLabel;
    LblProduto: TLabel;
    ImgConfirma: TImage;
    ImgConfirmaMouseON: TImage;
    BFinaliza: TButton;
    ImgVazio: TImage;
    ImgMais: TImage;
    ImgMenos: TImage;
    ImgObs: TImage;
    ImgAdicional: TImage;
    ImgMouseON: TImage;
    PopupMenu1: TPopupMenu;
    Observacao1: TMenuItem;
    Adicional1: TMenuItem;
    BuscaVendedor1: TMenuItem;
    BuscaProdutos1: TMenuItem;
    Memo1: TMemo;
    FDQProdutos: TFDQuery;
    FDQProdutosProdutoEmpresaIdent: TFDAutoIncField;
    FDQProdutosEmpresaIdentFkProdutoEmpresa: TLongWordField;
    FDQProdutosEmpresaCod: TStringField;
    FDQProdutosEmpresaRazaoSocial: TStringField;
    FDQProdutosProdutoIdentFkProdutoEmpresa: TLongWordField;
    FDQProdutosProdutoCod: TLargeintField;
    FDQProdutosProdutoDescr: TStringField;
    FDQProdutosProdutoEmpresaFlagEstoque: TWordField;
    FDQProdutosProdutoEmpresaFlagComposicao: TWordField;
    FDQProdutosProdutoEmpresaFlagVenda: TWordField;
    FDQProdutosProdutoEmpresaFlagTbPreco: TWordField;
    FDQProdutosProdutoEmpresaFlagSerial: TWordField;
    FDQProdutosProdutoEmpresaFlagSerialEstoque: TWordField;
    FDQProdutosProdutoEmpresaFlagLote: TWordField;
    FDQProdutosProdutoEmpresaFlagGrade: TWordField;
    FDQProdutosProdutoEmpresaFlagAdic: TWordField;
    FDQProdutosProdutoEmpresaFlagProducao: TWordField;
    FDQProdutosProdutoEmpresaFlagBalanca: TWordField;
    FDQProdutosProdutoEmpresaFlagImprimeValid: TWordField;
    FDQProdutosProdutoEmpresaFlagImprimeEmbal: TWordField;
    FDQProdutosProdutoEmpresaFlagQtde: TWordField;
    FDQProdutosProdutoEmpresaPrecoCusto: TBCDField;
    FDQProdutosProdutoEmpresaPrecoOutros: TBCDField;
    FDQProdutosProdutoEmpresaCustoMedio: TBCDField;
    FDQProdutosProdutoEmpresaCustoReal: TBCDField;
    FDQProdutosProdutoEmpresaCustoFinal: TBCDField;
    FDQProdutosProdutoEmpresaObs: TStringField;
    FDQProdutosProdutoEmpresaCSOSN: TWordField;
    FDQProdutosCFOPIdentFkProdutoEmpresa: TLongWordField;
    FDQProdutosCFOPCod: TWordField;
    FDQProdutosCFOPDescr: TStringField;
    FDQProdutosNCMIdentFkProdutoEmpresa: TLongWordField;
    FDQProdutosNCMCod: TStringField;
    FDQProdutosNCMDescr: TStringField;
    FDQProdutosUnidMedidaIdentifFkProdutoEmpresa: TLongWordField;
    FDQProdutosUnidMedidaNome: TStringField;
    FDQProdutosUnidMedidaAbrev: TStringField;
    FDQProdutosProdutoEmpresaValidadeDias: TLongWordField;
    FDQProdutosCESTIdentFkProdutoEmpresa: TLongWordField;
    FDQProdutosCESTCod: TStringField;
    FDQProdutosCESTDescr: TStringField;
    FDQProdutosProdutoEmpresaGTIN13: TLargeintField;
    FDQProdutosProdutoIdent: TLongWordField;
    FDQProdutosProdutoCod_1: TLargeintField;
    FDQProdutosProdutoCodInterno: TStringField;
    FDQProdutosProdutoStatus: TWordField;
    FDQProdutosProdutoFlagServico: TWordField;
    FDQProdutosProdutoDescr_1: TStringField;
    FDQProdutosProdutoPrecoMargemIdent: TLongWordField;
    FDQProdutosProdutoEmpresaIdentFkProdutoPrecoMargem: TLongWordField;
    FDQProdutosProdutoCod_2: TLargeintField;
    FDQProdutosProdutoDescr_2: TStringField;
    FDQProdutosProdutoPrecoMargemSeq: TLongWordField;
    FDQProdutosProdutoPrecoMargemVlrPreco: TBCDField;
    FDQProdutosProdutoPrecoMargemVlrMargem: TBCDField;
    procedure FormCreate(Sender: TObject);
    procedure ImgSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdtVendedorKeyPress(Sender: TObject; var Key: Char);
    procedure EdtProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtQtdKeyPress(Sender: TObject; var Key: Char);
    procedure BFinalizaClick(Sender: TObject);
    procedure LimpaCampos();
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ImgMaisClick(Sender: TObject);
    procedure ImgMenosClick(Sender: TObject);
    procedure ImgConfirmaMouseEnter(Sender: TObject);
    procedure ImgConfirmaMouseLeave(Sender: TObject);
    procedure ImgConfirmaClick(Sender: TObject);
    procedure ImgObsMouseEnter(Sender: TObject);
    procedure ImgObsMouseLeave(Sender: TObject);
    procedure ImgAdicionalMouseEnter(Sender: TObject);
    procedure ImgAdicionalMouseLeave(Sender: TObject);
    procedure ImgVendedorClick(Sender: TObject);
    procedure BuscaVendedor1Click(Sender: TObject);
    procedure ImgProdutoClick(Sender: TObject);
    procedure ImgAdicionalClick(Sender: TObject);
    procedure Adicional1Click(Sender: TObject);
    procedure CarregaVendedor;
    procedure EdtQtdChange(Sender: TObject);
    procedure EdtQtdExit(Sender: TObject);
    procedure EdtQtdKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    function IsAphaNumerico(S : string) : Boolean;
    function PedidoExit:Boolean;
    procedure InsereProduto;
    procedure ImgObsClick(Sender: TObject);



  private
    { Private declarations }
  public
    ObservacaoProdutoSelecionado: String;

  end;

var
  FRMAddProduto: TFRMAddProduto;
  AdicionaisProduto:TAdicionalList;

implementation

{$R *.dfm}

uses  UTelaInicial, UBuscaVendedor,
  UBuscaProduto, UMessageDlg, UNovoDelivery, USelecionaObservacao;

procedure TFRMAddProduto.Adicional1Click(Sender: TObject);
begin
  ImgAdicionalClick(self);
end;

procedure TFRMAddProduto.BFinalizaClick(Sender: TObject);
begin
  if (EdtVendedor.Text='') then
  begin
    TEvoMessageDlg.Mensagem('Por favor preencha o campo Vendedor!','','I', [mbOk]);
    EdtVendedor.SetFocus;
  end else
  begin
    if EdtProduto.Text='' then
    begin
      TEvoMessageDlg.Mensagem('Por favor preencha o campo Produto!','Não há produtos lançados.','I', [mbOk]);
      EdtProduto.SetFocus;
    end else
    begin
      InsereProduto;
      if FRMNovoDelivery.FDMTProdutos.Aggregates[0].Value <> 0 then
        FRMNovoDelivery.LblSubTotal.Caption := FormatFloat('R$ 0.00',FRMNovoDelivery.FDMTProdutos.Aggregates[0].Value);
      FRMNovoDelivery.AtualizaTotal;
      LimpaCampos;
      CarregaVendedor;
    end;
  end;
end;

procedure TFRMAddProduto.BuscaVendedor1Click(Sender: TObject);
begin
  ImgVendedorClick(self);
end;

procedure TFRMAddProduto.CarregaVendedor;
var
  tecla : Char;
begin
  tecla := #13;
  EdtVendedor.Text := IntToStr(Permissoes.codusuario);
  EdtVendedorKeyPress(Self,tecla);
end;

procedure TFRMAddProduto.EdtProdutoKeyPress(Sender: TObject; var Key: Char);
var
  codigo,nome:string;
begin
  if key=#32 then
  begin
    ImgProdutoClick(self);
  end;
  if key=#13 then
  begin
    if EdtProduto.Text='' then
    begin

    end else
    begin
      codigo:=EdtProduto.Text;
      nome:=DMPrincipal.GetProduto(codigo);
      if nome='Nao encontrado' then
      begin
        LblProduto.Caption:=nome;
        EdtProduto.Text:='';
        EdtProduto.SetFocus;
      end else
      begin
        LblProduto.Caption:=nome;
        EdtQtd.SetFocus;
      end;
    end;
  end;
  if Key=#27 then
  begin
    ImgSairClick(self);
  end;
end;

procedure TFRMAddProduto.EdtQtdChange(Sender: TObject);
begin
  if EdtQtd.Text = '00' then
    EdtQtd.Text := '1';
  if not IsAphaNumerico(EdtQtd.Text) then
  begin
    TEvoMessageDlg.Mensagem('Só é permitido números neste campo!','Favor preencher o campo QTD apenas com números.','I',[mbOk]);
    EdtQtd.Text := '1';
  end;
end;

procedure TFRMAddProduto.EdtQtdExit(Sender: TObject);
begin
  if (EdtQtd.Text = '') or (EdtQtd.Text ='0') then
    EdtQtd.Text := '1';
end;

procedure TFRMAddProduto.EdtQtdKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    if EdtQtd.Text='' then
    begin
      EdtQtd.Text:='1';
      ImgConfirma.Picture:=ImgConfirmaMouseON.Picture;
      BFinaliza.SetFocus;
    end else
    begin
      ImgConfirma.Picture:=ImgConfirmaMouseON.Picture;
      BFinaliza.SetFocus;
    end;
  end;
  if Key=#27 then
  begin
    ImgSairClick(self);
  end;
end;

procedure TFRMAddProduto.EdtQtdKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_up then
    ImgMaisClick(Self);
  if key = vk_down then
    ImgMenosClick(Self);
end;

procedure TFRMAddProduto.EdtVendedorKeyPress(Sender: TObject; var Key: Char);
var
  codigo:integer;
  nome:string;
begin
  if key=#13 then
  begin
    if EdtVendedor.Text='' then
    begin

    end else
    begin
      codigo:=StrToInt(EdtVendedor.Text);
      nome := DMPrincipal.GetVendedor(codigo);
      if nome='Nao encontrado' then
      begin
        LblVendedor.Caption:=nome;
        EdtVendedor.Text:='';
        EdtVendedor.SetFocus;
      end else
      begin
        LblVendedor.Caption:=nome;
        EdtProduto.SetFocus;
      end;
    end;
  end;
  if Key=#27 then
  begin
    ImgSairClick(self);
  end;
  if key=#32 then
  begin
    ImgVendedorClick(self);
  end;
end;

procedure TFRMAddProduto.FormCreate(Sender: TObject);
var
  vPng: TpngImage;
  widthT,heightT:Integer;
begin
  ScaleBy(Screen.Width, 1920);
  vpng := TPngImage.Create;
  vPng.Assign(ImgFundo.Picture);
  widthT:=Trunc((598 * (100*Screen.Width)/1920)/100);
  heightT:=Trunc((663 * (100*Screen.Width)/1920)/100);
  DMPrincipal.SmoothResize(vPng,widthT,heightT);
  ImgFundo.Picture.Assign(vPng);
  vPng.Free;
  vpng := TPngImage.Create;
  vPng.Assign(ImgConfirmaMouseON.Picture);
  widthT:=Trunc((256 * (100*Screen.Width)/1920)/100);
  heightT:=Trunc((105 * (100*Screen.Width)/1920)/100);
  DMPrincipal.SmoothResize(vPng,widthT,heightT);
  ImgConfirmaMouseON.Picture.Assign(vPng);
  vPng.Free;
end;

procedure TFRMAddProduto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    ImgSairClick(self);
end;

procedure TFRMAddProduto.FormShow(Sender: TObject);
begin
  CarregaVendedor;
end;

procedure TFRMAddProduto.ImgAdicionalClick(Sender: TObject);
begin
//  FRMAddAdicionais:=TFRMAddAdicionais.Create(self);
//
//  FRMAddAdicionais.ShowModal;
end;

procedure TFRMAddProduto.ImgAdicionalMouseEnter(Sender: TObject);
begin
  ImgAdicional.Picture:=ImgMouseON.Picture;
end;

procedure TFRMAddProduto.ImgAdicionalMouseLeave(Sender: TObject);
begin
  ImgAdicional.Picture:=ImgVazio.Picture;
end;

procedure TFRMAddProduto.ImgConfirmaClick(Sender: TObject);
begin
  if EdtQtd.Text = '0' then
  begin
    TEvoMessageDlg.Mensagem('Valor inválido para o campo Quantidade!','O valor não deve ser igual a zero'#13'Favor informar valor válido!','I',[mbok]);
    EdtQtd.Text := '1';
  end else
  BFinaliza.Click;
end;

procedure TFRMAddProduto.ImgConfirmaMouseEnter(Sender: TObject);
begin
  ImgConfirma.Picture:=ImgConfirmaMouseON.Picture;
end;

procedure TFRMAddProduto.ImgConfirmaMouseLeave(Sender: TObject);
begin
  ImgConfirma.Picture:=ImgVazio.Picture;
end;

procedure TFRMAddProduto.ImgMaisClick(Sender: TObject);
var
  qtd:integer;
begin
  qtd:=StrToInt(EdtQtd.Text);
  EdtQtd.Text:=IntToStr(qtd+1)
end;

procedure TFRMAddProduto.ImgMenosClick(Sender: TObject);
var
  qtd:integer;
begin
  if EdtQtd.Text = '0' then
  begin
    EdtQtd.Text := '1';
  end else
  begin
    qtd:=StrToInt(EdtQtd.Text);
    EdtQtd.Text:=IntToStr(qtd-1);
  end;
end;

procedure TFRMAddProduto.ImgObsClick(Sender: TObject);
begin
  if EdtProduto.Text <>'' then
  begin
    FrmSelecionaObservacao := TFrmSelecionaObservacao.Create(Self);
    FrmSelecionaObservacao.ShowModal;
    ImgConfirma.Picture:=ImgConfirmaMouseON.Picture;
    BFinaliza.SetFocus;

  end else
  begin
    TEvoMessageDlg.Mensagem('É necessário selecionar um produto para essa ação!','','C',[mbOk]);
    EdtQtd.SetFocus;
  end;
end;

procedure TFRMAddProduto.ImgObsMouseEnter(Sender: TObject);
begin
  ImgObs.Picture:=ImgMouseON.Picture;
end;

procedure TFRMAddProduto.ImgObsMouseLeave(Sender: TObject);
begin
  ImgObs.Picture:=ImgVazio.Picture;
end;

procedure TFRMAddProduto.ImgProdutoClick(Sender: TObject);
var
  produtot:TProduto;
  tecla:char;
begin
  tecla:=#13;
  produtot:=BuscaProduto(Top,Left+Width);
  if not (produtot = nil) then
  begin
    EdtProduto.Text:=produtot.cod_produto;
    EdtProdutoKeyPress(self,tecla);
  end;
end;

procedure TFRMAddProduto.ImgSairClick(Sender: TObject);
begin
  FRMAddProduto.Close;
end;

procedure TFRMAddProduto.ImgVendedorClick(Sender: TObject);
begin
  FRMBuscaVendedores:=TFRMBuscaVendedores.Create(self);
  FRMBuscaVendedores.ShowModal;
end;

procedure TFRMAddProduto.InsereProduto;
begin
  FDQProdutos.Close;
  FDQProdutos.SQL.Clear;
  FDQProdutos.SQL.Add('select * from vwtbprodutoempresa');
  FDQProdutos.SQL.Add('left join vwtbproduto on ProdutoIdentFkProdutoEmpresa = ProdutoIdent');
  FDQProdutos.SQL.Add('left join vwtbprodutoprecomargem on ProdutoEmpresaIdentFkProdutoPrecoMargem = ProdutoEmpresaIdent');
  FDQProdutos.SQL.Add('where (vwtbproduto.ProdutoCod=:Pcodigo)');
  FDQProdutos.SQL.Add('and (EmpresaIdentFkProdutoEmpresa = :PEmpresaIdent)');
  FDQProdutos.ParamByName('PEmpresaIdent').AsInteger := DMPrincipal.IdentEmpresaSelecionada;
  FDQProdutos.ParamByName('Pcodigo').AsInteger := StrToInt(EdtProduto.Text);
  FDQProdutos.Open();
  if not FDQProdutos.IsEmpty then
  begin
    FRMNovoDelivery.FDMTProdutos.Append;
    FRMNovoDelivery.FDMTProdutosProdutoIdent.AsInteger :=
      FDQProdutosProdutoEmpresaIdent.AsInteger;
    FRMNovoDelivery.FDMTProdutosProdutoDescricao.AsString :=
      FDQProdutosProdutoDescr.AsString;
    FRMNovoDelivery.FDMTProdutosProdutoCod.AsString :=
      FDQProdutosEmpresaCod.AsString;
    FRMNovoDelivery.FDMTProdutosProdutoQtde.AsCurrency := StrToCurr(EdtQtd.Text);
    FRMNovoDelivery.FDMTProdutosProdutoValorUnitario.AsCurrency :=
      FDQProdutosProdutoPrecoMargemVlrPreco.AsCurrency;
    FRMNovoDelivery.FDMTProdutosProdutoValorTotal.AsCurrency :=
      FDQProdutosProdutoPrecoMargemVlrPreco.AsCurrency * StrToCurr(EdtQtd.Text);
    FRMNovoDelivery.FDMTProdutosProdutoObs.AsString := ObservacaoProdutoSelecionado;
    FRMNovoDelivery.FDMTProdutos.Post;
  end;
end;

function TFRMAddProduto.IsAphaNumerico(S: string): Boolean;
var
  valor:integer;
begin
  result:= TryStrToInt(S,valor);
end;


procedure TFRMAddProduto.LimpaCampos;
begin
  EdtQtd.Text:='1';
  EdtVendedor.Text:='';
  EdtProduto.Text:='';
  LblVendedor.Caption:='';
  LblProduto.Caption:='';
  ImgConfirma.Picture:=ImgVazio.Picture;
end;

function TFRMAddProduto.PedidoExit: Boolean;
begin
//  DMPrincipal.FDQPedido.Close;
//  DMPrincipal.FDQPedido.SQL.Clear;
//  DMPrincipal.FDQPedido.SQL.Add('select * from tbprodutomesa ');
//  DMPrincipal.FDQPedido.SQL.Add('where (ProdutoMesaPrinted < 1) and (ProdutoMesaMesaIdent = :Pmesa)');
//  DMPrincipal.FDQPedido.ParamByName('Pmesa').AsInteger := listaMesas.getMesaSelecionada.id_mesa_pk;
//  DMPrincipal.FDQPedido.Open();
//  if DMPrincipal.FDQPedido.IsEmpty then
//  begin
//    result := False;
//  end else
//  begin
//    result := True;
//  end;
end;

end.
