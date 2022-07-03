unit UPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Touch.Keyboard,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFRMPagamento = class(TForm)
    ImgFundo: TImage;
    ImgDinheiro: TImage;
    ImgCartaoC: TImage;
    ImgCartaoD: TImage;
    ImgDinheiroON: TImage;
    ImgCartaoCON: TImage;
    ImgCartaoDON: TImage;
    ImgVazio: TImage;
    DBGrid1: TDBGrid;
    ImgFinalizar: TImage;
    ImgFinalizarON: TImage;
    EdtValorRecebido: TEdit;
    EdtTipoRecebimento: TEdit;
    LblNumero: TLabel;
    LblStatus: TLabel;
    LblData: TLabel;
    LblHora: TLabel;
    LblUsuario: TLabel;
    LblTotal: TLabel;
    LblAdicionais: TLabel;
    LblAcrecimos: TLabel;
    LblDescontos: TLabel;
    LblSubTotal: TLabel;
    LblQtdPessoa: TLabel;
    LblvalorPPessoa: TLabel;
    Image1: TImage;
    Image2: TImage;
    LblTipoRecebimento: TLabel;
    ImgAddPagamento: TImage;
    FDMTPagamento: TFDMemTable;
    DSPagamento: TDataSource;
    FDMTPagamentoTipoRecebimento: TStringField;
    FDMTPagamentovalorRecebimento: TCurrencyField;
    EdtTroco: TEdit;
    EdtAReceber: TEdit;
    EdtRecebido: TEdit;
    BAddPagamento: TButton;
    BFinaliza: TButton;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image20: TImage;
    Timer1: TTimer;
    Panel1: TPanel;
    procedure FormShow(Sender: TObject);
    procedure ImgCartaoDMouseEnter(Sender: TObject);
    procedure ImgCartaoDMouseLeave(Sender: TObject);
    procedure ImgCartaoCMouseEnter(Sender: TObject);
    procedure ImgCartaoCMouseLeave(Sender: TObject);
    procedure ImgDinheiroMouseEnter(Sender: TObject);
    procedure ImgDinheiroMouseLeave(Sender: TObject);
    procedure ImgFinalizarMouseEnter(Sender: TObject);
    procedure ImgFinalizarMouseLeave(Sender: TObject);
    procedure AbrePagamento();
    procedure CalculaqtdPPessoa();
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure EdtValorRecebidoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtTipoRecebimentoKeyPress(Sender: TObject; var Key: Char);
    procedure ImgDinheiroClick(Sender: TObject);
    procedure ImgCartaoCClick(Sender: TObject);
    procedure ImgCartaoDClick(Sender: TObject);
    procedure ImgAddPagamentoClick(Sender: TObject);
    procedure ImgFinalizarClick(Sender: TObject);
    procedure BAddPagamentoClick(Sender: TObject);
    procedure BFinalizaClick(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure Image15Click(Sender: TObject);
    procedure Image14Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure Image16Click(Sender: TObject);
    procedure Image17Click(Sender: TObject);
    procedure Image18Click(Sender: TObject);
    procedure Image19Click(Sender: TObject);
    procedure Image20Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMPagamento: TFRMPagamento;

implementation

{$R *.dfm}

uses UDMPrincipal, UMessageDlg, UDetalhePedido;

procedure TFRMPagamento.AbrePagamento;
begin
//  LblNumero.Caption := FormatFloat('00',StrToCurr(listaMesas.FmesaSelecionada.descricao_mesa));
//  LblDescontos.Caption := 'R$ ' + FormatFloat('0.00',
//    FRMGerenciamento.desconto);
//  LblSubTotal.Caption := 'R$ ' + FormatFloat('0.00', listaMesas.FmesaSelecionada.getSubTotal);
//  LblTotal.Caption := 'R$ ' + FormatFloat('0.00', listaMesas.FmesaSelecionada.getTotal);
//  EdtValorRecebido.Text := FormatFloat('0.00', listaMesas.FmesaSelecionada.getTotal);
//  LblAdicionais.Caption := FRMGerenciamento.LblAdicionais.Caption;
end;

procedure TFRMPagamento.BAddPagamentoClick(Sender: TObject);
begin
 ImgAddPagamentoClick(self);
end;

procedure TFRMPagamento.BFinalizaClick(Sender: TObject);
begin
 ImgFinalizarClick(self);
end;

procedure TFRMPagamento.CalculaqtdPPessoa;
begin
//  if FRMGerenciamento.qtdPessoas < 10 then
//  begin
//    LblQtdPessoa.Caption := '0' + intToStr(FRMGerenciamento.qtdPessoas);
//  end
//  else
//  begin
//    LblQtdPessoa.Caption := intToStr(FRMGerenciamento.qtdPessoas);
//  end;
//  LblvalorPPessoa.Caption := 'R$ ' + FormatFloat('0.00',
//    FRMGerenciamento.valorPPessoa);
end;

procedure TFRMPagamento.EdtTipoRecebimentoKeyPress(Sender: TObject;
  var Key: Char);
var
  codigo: integer;
begin
  if Key = #13 then
  begin
    if EdtTipoRecebimento.Text = '' then
    begin
      EdtTipoRecebimento.SetFocus;
    end
    else
    begin
      codigo := StrToInt(EdtTipoRecebimento.Text);
      if codigo = 1 then
      begin
        LblTipoRecebimento.Caption := 'Dinheiro';

      end;
      if codigo = 2 then
      begin
        LblTipoRecebimento.Caption := 'Cartao Credito';
      end;
      if codigo = 3 then
      begin
        LblTipoRecebimento.Caption := 'Cartao Debitos';
      end;
      BAddPagamento.SetFocus;
    end;
  end;
end;

procedure TFRMPagamento.EdtValorRecebidoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    if EdtValorRecebido.Text = '' then
    begin
      EdtValorRecebido.SetFocus;
    end
    else
    begin
      EdtTipoRecebimento.SetFocus;
    end;
  end;
end;

procedure TFRMPagamento.FormShow(Sender: TObject);
var
  vPng: TpngImage;
  widthT, heightT: integer;
begin
  LblData.Caption := DateToStr(Now);
  LblHora.Caption := TimeToStr(Now);
  ScaleBy(Screen.Width, 1920);
  vPng := TpngImage.Create;
  vPng.Assign(ImgFundo.Picture);
  widthT := Trunc((1920 * (100 * Screen.Width) / 1920) / 100);
  heightT := Trunc((1080 * (100 * Screen.Width) / 1920) / 100);
  DMPrincipal.SmoothResize(vPng, widthT, heightT);
  ImgFundo.Picture.Assign(vPng);
  vPng.Free;
  vPng := TpngImage.Create;
  vPng.Assign(ImgCartaoDON.Picture);
  widthT := Trunc((442 * (100 * Screen.Width) / 1920) / 100);
  heightT := Trunc((108 * (100 * Screen.Width) / 1920) / 100);
  DMPrincipal.SmoothResize(vPng, widthT, heightT);
  ImgCartaoDON.Picture.Assign(vPng);
  vPng.Free;
  vPng := TpngImage.Create;
  vPng.Assign(ImgCartaoCON.Picture);
  widthT := Trunc((442 * (100 * Screen.Width) / 1920) / 100);
  heightT := Trunc((108 * (100 * Screen.Width) / 1920) / 100);
  DMPrincipal.SmoothResize(vPng, widthT, heightT);
  ImgCartaoCON.Picture.Assign(vPng);
  vPng.Free;
  vPng := TpngImage.Create;
  vPng.Assign(ImgDinheiroON.Picture);
  widthT := Trunc((442 * (100 * Screen.Width) / 1920) / 100);
  heightT := Trunc((108 * (100 * Screen.Width) / 1920) / 100);
  DMPrincipal.SmoothResize(vPng, widthT, heightT);
  ImgDinheiroON.Picture.Assign(vPng);
  vPng.Free;
  vPng := TpngImage.Create;
  vPng.Assign(ImgFinalizarON.Picture);
  widthT := Trunc((442 * (100 * Screen.Width) / 1920) / 100);
  heightT := Trunc((166 * (100 * Screen.Width) / 1920) / 100);
  DMPrincipal.SmoothResize(vPng, widthT, heightT);
  ImgFinalizarON.Picture.Assign(vPng);
  vPng.Free;
  EdtValorRecebido.SetFocus;
  Timer1.Enabled := True;
end;

procedure TFRMPagamento.Image10Click(Sender: TObject);
begin
 DMPrincipal.clicaBotao(VK_NUMPAD8);
end;

procedure TFRMPagamento.Image11Click(Sender: TObject);
begin
DMPrincipal.clicaBotao(VK_NUMPAD9);
end;

procedure TFRMPagamento.Image12Click(Sender: TObject);
begin
DMPrincipal.clicaBotao(VK_NUMPAD0);
end;

procedure TFRMPagamento.Image13Click(Sender: TObject);
begin
DMPrincipal.clicaBotao(VK_DECIMAL);
end;

procedure TFRMPagamento.Image14Click(Sender: TObject);
begin
DMPrincipal.clicaBotao(VK_RETURN);
end;

procedure TFRMPagamento.Image15Click(Sender: TObject);
begin
DMPrincipal.clicaBotao(VK_BACK);
end;

procedure TFRMPagamento.Image16Click(Sender: TObject);
begin
 DMPrincipal.clicaBotao(VK_DIVIDE);
end;

procedure TFRMPagamento.Image17Click(Sender: TObject);
begin
DMPrincipal.clicaBotao(VK_MULTIPLY);
end;

procedure TFRMPagamento.Image18Click(Sender: TObject);
begin
DMPrincipal.clicaBotao(VK_SUBTRACT);
end;

procedure TFRMPagamento.Image19Click(Sender: TObject);
begin
DMPrincipal.clicaBotao(VK_ADD);
end;

procedure TFRMPagamento.Image1Click(Sender: TObject);
begin
//  FRMGerenciamento.ImgMaisClick(self);
//  CalculaqtdPPessoa;
end;

procedure TFRMPagamento.Image20Click(Sender: TObject);
begin
FRMPagamento.Close;
end;

procedure TFRMPagamento.Image2Click(Sender: TObject);
begin
//  FRMGerenciamento.ImgMenosClick(self);
//  CalculaqtdPPessoa;
end;

procedure TFRMPagamento.Image3Click(Sender: TObject);
begin
DMPrincipal.clicaBotao(VK_NUMPAD1);
end;

procedure TFRMPagamento.Image4Click(Sender: TObject);
begin
DMPrincipal.clicaBotao(VK_NUMPAD2);
end;

procedure TFRMPagamento.Image5Click(Sender: TObject);
begin
DMPrincipal.clicaBotao(VK_NUMPAD3);
end;

procedure TFRMPagamento.Image6Click(Sender: TObject);
begin
DMPrincipal.clicaBotao(VK_NUMPAD4);
end;

procedure TFRMPagamento.Image7Click(Sender: TObject);
begin
DMPrincipal.clicaBotao(VK_NUMPAD5);
end;

procedure TFRMPagamento.Image8Click(Sender: TObject);
begin
DMPrincipal.clicaBotao(VK_NUMPAD6);
end;

procedure TFRMPagamento.Image9Click(Sender: TObject);
begin
DMPrincipal.clicaBotao(VK_NUMPAD7);
end;

procedure TFRMPagamento.ImgAddPagamentoClick(Sender: TObject);
begin
  if EdtValorRecebido.Text = '' then
  begin
    EdtValorRecebido.SetFocus;
  end
  else
  begin
    if EdtTipoRecebimento.Text = '' then
    begin
      EdtTipoRecebimento.SetFocus;
    end
    else
    begin
      if FDMTPagamento.IsEmpty then
      begin
        FDMTPagamento.Close;
        FDMTPagamento.Open;
      end;
      FDMTPagamento.Append;
      FDMTPagamentoTipoRecebimento.AsString := LblTipoRecebimento.Caption;
      FDMTPagamentovalorRecebimento.AsCurrency :=
      StrToCurr(EdtValorRecebido.Text);
      FDMTPagamento.Post;
      EdtValorRecebido.Text := '';
      EdtTipoRecebimento.Text := '';
      LblTipoRecebimento.Caption := '';
//      if FDMTPagamento.Aggregates[0].Value < FRMGerenciamento.Total then
//      begin
//          EdtRecebido.Text := 'R$ ' + FormatFloat('0.00',
//          FDMTPagamento.Aggregates[0].Value);
//          EdtAReceber.Text := 'R$ ' + FormatFloat('0.00', FRMGerenciamento.Total -
//          FDMTPagamento.Aggregates[0].Value);
//          EdtValorRecebido.Text:=CurrToStr(FRMGerenciamento.Total - FDMTPagamento.Aggregates[0].Value);
//          EdtValorRecebido.SetFocus;
//      end
//      else
//      begin
//          EdtRecebido.Text := 'R$ ' + FormatFloat('0.00',
//          FDMTPagamento.Aggregates[0].Value);
//          EdtAReceber.Text := 'R$ 0,00 ';
//          EdtTroco.Text := 'RS ' + FormatFloat('0.00',
//          FDMTPagamento.Aggregates[0].Value - FRMGerenciamento.Total);
//          BFinaliza.SetFocus;
//      end;

    end;
  end;
end;

procedure TFRMPagamento.ImgCartaoCClick(Sender: TObject);
var
  botao: Char;
begin
  botao := #13;
  EdtTipoRecebimento.Text := '2';
  EdtTipoRecebimentoKeyPress(self, botao);
end;

procedure TFRMPagamento.ImgCartaoCMouseEnter(Sender: TObject);
begin
  ImgCartaoC.Picture := ImgCartaoCON.Picture;
end;

procedure TFRMPagamento.ImgCartaoCMouseLeave(Sender: TObject);
begin
  ImgCartaoC.Picture := ImgVazio.Picture;
end;

procedure TFRMPagamento.ImgCartaoDClick(Sender: TObject);
var
  botao: Char;
begin
  botao := #13;
  EdtTipoRecebimento.Text := '3';
  EdtTipoRecebimentoKeyPress(self, botao);
end;

procedure TFRMPagamento.ImgCartaoDMouseEnter(Sender: TObject);
begin
  ImgCartaoD.Picture := ImgCartaoDON.Picture;
end;

procedure TFRMPagamento.ImgCartaoDMouseLeave(Sender: TObject);
begin
  ImgCartaoD.Picture := ImgVazio.Picture;
end;

procedure TFRMPagamento.ImgDinheiroClick(Sender: TObject);
var
  botao: Char;
begin
  botao := #13;
  EdtTipoRecebimento.Text := '1';
  EdtTipoRecebimentoKeyPress(self, botao);
end;

procedure TFRMPagamento.ImgDinheiroMouseEnter(Sender: TObject);
begin
  ImgDinheiro.Picture := ImgDinheiroON.Picture;
end;

procedure TFRMPagamento.ImgDinheiroMouseLeave(Sender: TObject);
begin
  ImgDinheiro.Picture := ImgVazio.Picture;
end;

procedure TFRMPagamento.ImgFinalizarClick(Sender: TObject);
begin
//  if FDMTPagamento.Aggregates[0].Value < FRMGerenciamento.Total then
//  begin
//   TEvoMessageDlg.Mensagem('Não foi possivel finalizar o pagamento.','Falta Pagar ' + CurrToStr(FDMTPagamento.Aggregates[0].Value -
//      FRMGerenciamento.Total) + ' Reais','I', [mbOk]);
//   // ShowMessage('Falta Pagar ' + CurrToStr(FDMTPagamento.Aggregates[0].Value -
//   //   FRMGerenciamento.Total) + ' Reais');
//    EdtValorRecebido.SetFocus;
//  end
//  else
//  begin
//    DMPrincipal.FinalizaPagamentoMesa;
//    FRMPagamento.Close;
//    FRMGerenciamento.Close;
//  end;
  FRMDetalhePedido.AlteraStatusDeliveryPublic(6);
  FRMPagamento.Close;
end;

procedure TFRMPagamento.ImgFinalizarMouseEnter(Sender: TObject);
begin
  ImgFinalizar.Picture := ImgFinalizarON.Picture;
end;

procedure TFRMPagamento.ImgFinalizarMouseLeave(Sender: TObject);
begin
  ImgFinalizar.Picture := ImgVazio.Picture;
end;

procedure TFRMPagamento.Timer1Timer(Sender: TObject);
begin
  LblData.Caption := DateToStr(Now);
  LblHora.Caption := TimeToStr(Now);
end;

end.
