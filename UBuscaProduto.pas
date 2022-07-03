unit UBuscaProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Udmprincipal;

type
  TFRMBuscaProdutos = class(TForm)
    ImgFundo: TImage;
    Image1: TImage;
    SBSecao: TScrollBox;
    ImgFundoSBsecao: TImage;
    SBProdutos: TScrollBox;
    Image3: TImage;
    Label1: TLabel;
    EdtPesquisa: TEdit;
    Edit1: TEdit;
    PPesquisa: TPanel;
    DBGrid1: TDBGrid;
    FDQProdutos: TFDQuery;
    DSProdutos: TDataSource;
    FDQProdutosProdutoIdent: TLongWordField;
    FDQProdutosProdutoCod: TLargeintField;
    FDQProdutosProdutoCodInterno: TStringField;
    FDQProdutosProdutoStatus: TWordField;
    FDQProdutosProdutoFlagServico: TWordField;
    FDQProdutosProdutoDescr: TStringField;
    FDQProdutosProdutExcluido: TWordField;
    FDQProdutosProdutoEmpresaIdent: TLongWordField;
    FDQProdutosEmpresaIdentFkProdutoEmpresa: TLongWordField;
    FDQProdutosProdutoIdentFkProdutoEmpresa: TLongWordField;
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
    FDQProdutosNCMIdentFkProdutoEmpresa: TLongWordField;
    FDQProdutosUnidMedidaIdentifFkProdutoEmpresa: TLongWordField;
    FDQProdutosProdutoEmpresaValidadeDias: TLongWordField;
    FDQProdutosCESTIdentFkProdutoEmpresa: TLongWordField;
    FDQProdutosProdutoEmpresaGTIN13: TLargeintField;
    FDQProdutosProdutoEmpresaExcluido: TWordField;
    FDQProdutosProdutoEmpresaFlagProdIngr: TSmallintField;
    FDQProdutosProdutoPrecoMargemIdent: TLongWordField;
    FDQProdutosProdutoEmpresaIdentFkProdutoPrecoMargem: TLongWordField;
    FDQProdutosProdutoPrecoMargemSeq: TLongWordField;
    FDQProdutosProdutoPrecoMargemVlrPreco: TBCDField;
    FDQProdutosProdutoPrecoMargemVlrMargem: TBCDField;
    FDQProdutosProdutoPrecoMargemExcluido: TWordField;
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure EdtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure EdtPesquisaChange(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FDQProdutosAfterScroll(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    produtoSelecionado:TProduto;
  end;

var
  FRMBuscaProdutos: TFRMBuscaProdutos;

implementation

{$R *.dfm}

uses UAddProduto;

procedure TFRMBuscaProdutos.DBGrid1DblClick(Sender: TObject);
begin
ModalResult:=mrOk;
end;

procedure TFRMBuscaProdutos.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
 begin
   ModalResult:=mrOk;
 end;
end;

procedure TFRMBuscaProdutos.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#32 then
begin
  EdtPesquisa.SetFocus;
  PPesquisa.Visible:=true;
  FDQProdutos.Close;
  FDQProdutos.Open();
end;

end;

procedure TFRMBuscaProdutos.EdtPesquisaChange(Sender: TObject);
var
stringText:string;
begin
 stringText:=EdtPesquisa.Text;
 FDQProdutos.Close;
 FDQProdutos.SQL.Clear;
 FDQProdutos.SQL.Add('select * from tbproduto');
 FDQProdutos.SQL.Add('left join tbprodutoempresa on ProdutoIdentFkProdutoEmpresa = ProdutoIdent');
 FDQProdutos.SQL.Add('left join tbprodutoprecomargem on ProdutoEmpresaIdentFkProdutoPrecoMargem = ProdutoEmpresaIdent');
 FDQProdutos.SQL.Add('where (ProdutoCodInterno LIKE'+QuotedStr('%'+stringText+'%')+')');
 FDQProdutos.SQL.Add('or (ProdutoDescr LIKE'+QuotedStr('%'+stringText+'%')+')');
 FDQProdutos.SQL.Add('and isnull(ProdutExcluido)');
 FDQProdutos.SQL.Add('order by ProdutoEmpresaIdent');
 FDQProdutos.Open();
 PPesquisa.Visible := True;
end;

procedure TFRMBuscaProdutos.EdtPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#32 then
 begin
  DBGrid1.SetFocus;
 end;
 if key=#27 then
 begin
   PPesquisa.Visible:=false;
   Edit1.SetFocus;
 end;
 if key=#13 then
 begin
   DBGrid1.SetFocus;
 end;
end;

procedure TFRMBuscaProdutos.FDQProdutosAfterScroll(DataSet: TDataSet);
begin
 produtoSelecionado:=TProduto.Create;
 produtoSelecionado.id_produto_pk := FDQProdutosProdutoIdent.AsInteger;
 produtoSelecionado.cod_produto := IntToStr(FDQProdutosProdutoCod.Asinteger);
 produtoSelecionado.nome_produto := FDQProdutosProdutoDescr.AsString;
 produtoSelecionado.valor_produto := FDQProdutosProdutoPrecoMargemVlrPreco.AsCurrency;
 produtoSelecionado.unidade_produto := '1';
 produtoSelecionado.qtd_produto := 1;
 produtoSelecionado.valor_Total_produto := FDQProdutosProdutoPrecoMargemVlrPreco.AsCurrency;

end;

procedure TFRMBuscaProdutos.FormCreate(Sender: TObject);
var
vPng: TpngImage;
widthT,heightT:Integer;
begin
 // CarregaSecoes;
  ScaleBy(Screen.Width, 1920); // (Tamannho atual da tela, Tamanho para qual o sistema foi feito)

    vpng := TPngImage.Create;
    vPng.Assign(ImgFundo.Picture);
    widthT:=Trunc((800 * (100*Screen.Width)/1920)/100);
    heightT:=Trunc((661 * (100*Screen.Width)/1920)/100);
    DMPrincipal.SmoothResize(vPng,widthT,heightT);
    ImgFundo.Picture.Assign(vPng);
    vPng.Free;

end;

procedure TFRMBuscaProdutos.FormShow(Sender: TObject);
begin
FDQProdutos.Close;
FDQProdutos.Open();
PPesquisa.Visible := True;
Edit1.SetFocus;
end;

procedure TFRMBuscaProdutos.Image1Click(Sender: TObject);
begin
FRMBuscaProdutos.Close;
end;

end.


uses UDMPrincipal;
