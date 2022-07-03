unit Ufechamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, frxClass, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Stan.Async, FireDAC.DApt;

type
  TFRMfechamento = class(TForm)
    ImgFundo: TImage;
    LdataFechamento: TLabel;
    Isair: TImage;
    Iconfirma: TImage;
    Ldatafecha: TLabel;
    Panel1: TPanel;
    Label4: TLabel;
    Esenha: TEdit;
    frxReport1: TfrxReport;
    DSCaixa: TDataSource;
    FDMTCaixa: TFDMemTable;
    FDMTCaixaNome: TStringField;
    FDMTCaixavalor: TCurrencyField;
    FDQDevolucao: TFDQuery;
    FDQDevolucaoDEV_id_pk: TFDAutoIncField;
    FDQDevolucaoDEV_data: TDateTimeField;
    FDQDevolucaoDEV_usuario_fk: TIntegerField;
    FDQDevolucaoDEV_produto_fk: TIntegerField;
    FDQDevolucaoDEV_qtd_produto: TBCDField;
    FDQDevolucaoDEV_valorTotal: TBCDField;
    FDQDevolucaoDEV_terminal: TIntegerField;
    FDQDevolucaoDEV_numAbertura_fk: TIntegerField;
    FDQDevolucaoExported: TBooleanField;
    FDQDevolucaototal_Dev: TFMTBCDField;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure IsairClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EsenhaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Fechamento;
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMfechamento: TFRMfechamento;

implementation

{$R *.dfm}

uses UDMprincipal, Umenu, UmenuGeral, UTelaInicial, UMessageDlg;

procedure TFRMfechamento.Button1Click(Sender: TObject);
begin
  ShowMessage('Caixa Fechado com Sucesso!!');
  FRMfechamento.Close;
end;

procedure TFRMfechamento.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Image7Click(self);
  end;
  if Key = #27 then
  begin
    IsairClick(self);
  end;
end;

procedure TFRMfechamento.EsenhaKeyPress(Sender: TObject; var Key: Char);
var
  Responsavel: TPermissoes;
  dinheiro, sangria, suprimento, fundotroco: Currency;
  Data: TDateTime;
begin
  if Key = #13 then
  begin
    if Esenha.Text = '' then
    begin
      ShowMessage('Digite a senha para confirmar!');
    end
    else
    begin

      Responsavel := DMPrincipal.buscaPermissoes(Esenha.Text);

      if (Responsavel <> nil) and (Responsavel.fechaCaixa) then
      begin
       Fechamento;
      end
      else

      begin

        ShowMessage('Senha Incoreta ou sem Permissão');
      end;

    end;

  end;

end;

procedure TFRMfechamento.Fechamento;
var
dinheiro, sangria, suprimento, fundotroco: Currency;
  Data: TDateTime;
begin
  Data := Now;
  DMPrincipal.insertEventoRegistro(2, DateTimeToStr(Now),Permissoes.nomeUsuario, Permissoes.nomeUsuario, 0,DMPrincipal.numAbertura, 0.00, 0, 0, 0, False, '', 0,Permissoes.codusuario, '');
  TEvoMessageDlg.Mensagem('Caixa Fechado com Sucesso!','','I',[mbOk]);

//  DMPrincipal.FDQFechamento.Close;
//  DMPrincipal.FDQFechamento.SQL.Clear;
//  DMPrincipal.FDQFechamento.SQL.Add
//    ('select *, SUM(valor_total)as Total from saida '+
//  'left join registroeventos on (saida.cod_venda = registroeventos.cod_venda) '+
//  'where (numabertura=:Pnumabertura) and (tipo_recebimento=:Ptipo) and (cod_evento=5) and (status_venda<>1) ');
//  DMPrincipal.FDQFechamento.ParamByName('Pnumabertura').AsInteger :=DMPrincipal.numAbertura;
//  DMPrincipal.FDQFechamento.ParamByName('Ptipo').AsString:='Cartão de Crédito';
//  DMPrincipal.FDQFechamento.Open();
//  frxReport1.Variables['credito'] :=
//  QuotedStr(FormatFloat('##,#0.00',DMPrincipal.FDQFechamentoTotal.AsCurrency));
//
//
//  DMPrincipal.FDQFechamento.Close;
//  DMPrincipal.FDQFechamento.SQL.Clear;
//  DMPrincipal.FDQFechamento.SQL.Add
//       ('select *, SUM(valor_total)as Total from saida '+
//  'left join registroeventos on (saida.cod_venda = registroeventos.cod_venda) '+
//  'where (numabertura=:Pnumabertura) and (tipo_recebimento=:Ptipo) and (cod_evento=5) and (status_venda<>1) ');
//  DMPrincipal.FDQFechamento.ParamByName('Pnumabertura').AsInteger :=DMPrincipal.numAbertura;
//  DMPrincipal.FDQFechamento.ParamByName('Ptipo').AsString:='Cartão de Débito';
//  DMPrincipal.FDQFechamento.Open();
//  frxReport1.Variables['debito'] :=
//  QuotedStr(FormatFloat('##,#0.00',DMPrincipal.FDQFechamentoTotal.AsCurrency));
//
//
//  DMPrincipal.FDQFechamento.Close;
//  DMPrincipal.FDQFechamento.SQL.Clear;
//  DMPrincipal.FDQFechamento.SQL.Add
//    ('select *, SUM(valor_total)as Total from saida '+
//  'left join registroeventos on (saida.cod_venda = registroeventos.cod_venda) '+
//  'where (numabertura=:Pnumabertura) and (tipo_recebimento=:Ptipo) and (cod_evento=5) and (status_venda<>1) ');
//  DMPrincipal.FDQFechamento.ParamByName('Pnumabertura').AsInteger :=DMPrincipal.numAbertura;
//  DMPrincipal.FDQFechamento.ParamByName('Ptipo').AsString:='Dinheiro';
//  DMPrincipal.FDQFechamento.Open();
//  dinheiro := DMPrincipal.FDQFechamentoTotal.AsCurrency;
//  frxReport1.Variables['dinheiro'] :=
//  QuotedStr(FormatFloat('##,#0.00',dinheiro));
//
//  DMPrincipal.FDQFechamento.Close;
//  DMPrincipal.FDQFechamento.SQL.Clear;
//  DMPrincipal.FDQFechamento.SQL.Add
//    ('select *, SUM(valor_total)as Total from saida '+
//  'left join registroeventos on (saida.cod_venda = registroeventos.cod_venda) '+
//  'where (numabertura=:Pnumabertura) and (cod_evento=5) and (status_venda=1) ');
//  DMPrincipal.FDQFechamento.ParamByName('Pnumabertura').AsInteger :=DMPrincipal.numAbertura;
//  DMPrincipal.FDQFechamento.Open();
//  frxReport1.Variables['cancelado'] :=
//  QuotedStr(FormatFloat('##,#0.00',DMPrincipal.FDQFechamentoTotal.AsCurrency));
//
//
//  DMPrincipal.FDQSangria.Close;
//  DMPrincipal.FDQSangria.SQL.Clear;
//  DMPrincipal.FDQSangria.SQL.Add
//  ('select *,sum(fundo_troco)as total_sangria  from registroeventos where cod_evento=3 and num_abetura=:Pnumabertura');
//  DMPrincipal.FDQSangria.ParamByName('Pnumabertura').AsInteger :=DMPrincipal.numAbertura;
//  DMPrincipal.FDQSangria.Open();
//
//
//  DMPrincipal.FDQSuprimento.Close;
//  DMPrincipal.FDQSuprimento.SQL.Clear;
//  DMPrincipal.FDQSuprimento.SQL.Add
//  ('select *,sum(fundo_troco)as total_suprimento  from registroeventos where cod_evento=4 and num_abetura=:Pnumabertura');
//  DMPrincipal.FDQSuprimento.ParamByName('Pnumabertura').AsInteger :=DMPrincipal.numAbertura;
//  DMPrincipal.FDQSuprimento.Open();
//
//
//  DMPrincipal.FDQfundo.Close;
//  DMPrincipal.FDQfundo.SQL.Clear;
//  DMPrincipal.FDQfundo.SQL.Add
//  ('select * from registroeventos where cod_evento=1 and num_abetura=:Pnumabertura');
//  DMPrincipal.FDQfundo.ParamByName('Pnumabertura').AsInteger :=DMPrincipal.numAbertura;
//  DMPrincipal.FDQfundo.Open();
//
//
//  FDQDevolucao.Close;
//  FDQDevolucao.SQL.Clear;
//  FDQDevolucao.SQL.Add
//  ('select *,sum(DEV_valorTotal)as total_Dev from devolucao where DEV_numAbertura_fk =:Pnumabertura');
//  FDQDevolucao.ParamByName('Pnumabertura').AsInteger :=DMPrincipal.numAbertura;
//  FDQDevolucao.Open();
//
//  frxReport1.Variables['devolucao'] :=QuotedStr(FormatFloat('##,#0.00', FDQDevolucaototal_Dev.AsCurrency));
//  frxReport1.Variables['data'] := QuotedStr(DateToStr(Data));
//
//  sangria := DMPrincipal.FDQSangriatotal_sangria.AsCurrency;
//  frxReport1.Variables['sangria'] :=QuotedStr(FormatFloat('##,#0.00',sangria));
//
//  suprimento := DMPrincipal.FDQSuprimentototal_suprimento.AsCurrency;
//  frxReport1.Variables['suprimento'] :=QuotedStr(FormatFloat('##,#0.00',suprimento));
//
//  fundotroco := DMPrincipal.FDQfundofundo_troco.AsCurrency;
//  frxReport1.Variables['fundotroco'] :=QuotedStr(FormatFloat('##,#0.00',fundotroco));
//
//  frxReport1.Variables['dinheiro1'] :=QuotedStr(FormatFloat('##,#0.00', ((dinheiro - sangria) + suprimento + fundotroco)-FDQDevolucaototal_Dev.AsCurrency));
//
//  frxReport1.PrepareReport();
//  frxReport1.ShowPreparedReport;
  FRMmenu.Close;
  FRMfechamento.Close;
  //FRMTelainicial.statusCaixaLabel;
end;

procedure TFRMfechamento.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Iconfirma.OnClick(self);
  end;
  if Key = #27 then
  begin
    Isair.OnClick(self);

  end;
end;

procedure TFRMfechamento.FormShow(Sender: TObject);
var
  vPng, vpng1, vpng2: TpngImage;
  vStream: TMemoryStream;
  widthT, heightT: integer;

begin
  // Redesenha a tela na resolução do monitor.

  ScaleBy(Screen.Width, 1920);

  vPng := TpngImage.Create;
  vPng.Assign(ImgFundo.Picture);
  widthT := Trunc((960 * (100 * Screen.Width) / 1920) / 100);
  heightT := Trunc((880 * (100 * Screen.Width) / 1920) / 100);
  DMPrincipal.SmoothResize(vPng, widthT, heightT);
  ImgFundo.Picture.Assign(vPng);
  vPng.Free;
  //DMPrincipal.CarregaCaixa('fechamento');

  LdataFechamento.Caption := DateTimeToStr(Now);
//  if  Permissoes.fechaCaixa=false then
//  begin
//    DBGrid1.Visible:=false;
//  end;
end;

procedure TFRMfechamento.IsairClick(Sender: TObject);
begin
  FRMfechamento.Close;
  FRMmenuGeral.Close;
end;

procedure TFRMfechamento.Image1Click(Sender: TObject);
begin
Self.Close;
end;

procedure TFRMfechamento.Image7Click(Sender: TObject);
var
  dinheiro, sangria, suprimento, fundotroco: Currency;
  Data: TDateTime;
begin
  if Permissoes.fechaCaixa then
  begin
    Fechamento;
  end
  else
  begin
    Panel1.Visible := true;
    Esenha.SetFocus;
    Iconfirma.Visible := False;
    Isair.Visible := False;

  end;

end;

end.
