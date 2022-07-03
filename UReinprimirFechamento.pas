unit UReinprimirFechamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFRMreinprimirFechamento = class(TForm)
    Image1: TImage;
    Image2: TImage;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Label1: TLabel;
    Image3: TImage;
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
    frxReport1: TfrxReport;
    procedure Image2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Image3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMreinprimirFechamento: TFRMreinprimirFechamento;

implementation

uses
  UDMprincipal, UmenuGeral, Umenu;

{$R *.dfm}

procedure TFRMreinprimirFechamento.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
begin
 Image2Click(self);
end;
if Key=#27 then
begin
 Image3Click(self);
end;
end;

procedure TFRMreinprimirFechamento.FormShow(Sender: TObject);
begin
  DMPrincipal.FDQRegistros.Close;
  DMPrincipal.FDQRegistros.SQL.Clear;
  DMPrincipal.FDQRegistros.SQL.Add('select * from registroeventos where cod_evento = 2');
  DMPrincipal.FDQRegistros.Open();
  DBGrid1.SetFocus;
end;

procedure TFRMreinprimirFechamento.Image2Click(Sender: TObject);
var
Responsavel:TPermissoes;
dinheiro, sangria, suprimento, fundotroco: Currency;
data:TDateTime;
numAbertura:Integer;
begin
  numAbertura:=DMPrincipal.FDQRegistrosnum_abetura.AsInteger ;
  Data := DMPrincipal.FDQRegistrosdata_evento.asdatetime;

  DMPrincipal.FDQFechamento.Close;
  DMPrincipal.FDQFechamento.SQL.Clear;
  DMPrincipal.FDQFechamento.SQL.Add
    ('select *, SUM(valor_total)as Total from saida '+
  'left join registroeventos on (saida.cod_venda = registroeventos.cod_venda) '+
  'where (numabertura=:Pnumabertura) and (tipo_recebimento=:Ptipo) and (cod_evento=5) and (status_venda<>1) ');
  DMPrincipal.FDQFechamento.ParamByName('Pnumabertura').AsInteger :=numAbertura;
  DMPrincipal.FDQFechamento.ParamByName('Ptipo').AsString:='Cartão de Crédito';
  DMPrincipal.FDQFechamento.Open();
  frxReport1.Variables['credito'] :=
  QuotedStr(FormatFloat('##,#0.00',DMPrincipal.FDQFechamentoTotal.AsCurrency));


  DMPrincipal.FDQFechamento.Close;
  DMPrincipal.FDQFechamento.SQL.Clear;
  DMPrincipal.FDQFechamento.SQL.Add
       ('select *, SUM(valor_total)as Total from saida '+
  'left join registroeventos on (saida.cod_venda = registroeventos.cod_venda) '+
  'where (numabertura=:Pnumabertura) and (tipo_recebimento=:Ptipo) and (cod_evento=5) and (status_venda<>1) ');
  DMPrincipal.FDQFechamento.ParamByName('Pnumabertura').AsInteger :=numAbertura;
  DMPrincipal.FDQFechamento.ParamByName('Ptipo').AsString:='Cartão de Débito';
  DMPrincipal.FDQFechamento.Open();
  frxReport1.Variables['debito'] :=
  QuotedStr(FormatFloat('##,#0.00',DMPrincipal.FDQFechamentoTotal.AsCurrency));


  DMPrincipal.FDQFechamento.Close;
  DMPrincipal.FDQFechamento.SQL.Clear;
  DMPrincipal.FDQFechamento.SQL.Add
    ('select *, SUM(valor_total)as Total from saida '+
  'left join registroeventos on (saida.cod_venda = registroeventos.cod_venda) '+
  'where (numabertura=:Pnumabertura) and (tipo_recebimento=:Ptipo) and (cod_evento=5) and (status_venda<>1) ');
  DMPrincipal.FDQFechamento.ParamByName('Pnumabertura').AsInteger :=numAbertura;
  DMPrincipal.FDQFechamento.ParamByName('Ptipo').AsString:='Dinheiro';
  DMPrincipal.FDQFechamento.Open();
  dinheiro := DMPrincipal.FDQFechamentoTotal.AsCurrency;
  frxReport1.Variables['dinheiro'] :=
  QuotedStr(FormatFloat('##,#0.00',dinheiro));

  DMPrincipal.FDQFechamento.Close;
  DMPrincipal.FDQFechamento.SQL.Clear;
  DMPrincipal.FDQFechamento.SQL.Add
    ('select *, SUM(valor_total)as Total from saida '+
  'left join registroeventos on (saida.cod_venda = registroeventos.cod_venda) '+
  'where (numabertura=:Pnumabertura) and (cod_evento=5) and (status_venda=1) ');
  DMPrincipal.FDQFechamento.ParamByName('Pnumabertura').AsInteger :=numAbertura;
  DMPrincipal.FDQFechamento.Open();
  frxReport1.Variables['cancelado'] :=
  QuotedStr(FormatFloat('##,#0.00',DMPrincipal.FDQFechamentoTotal.AsCurrency));


  DMPrincipal.FDQSangria.Close;
  DMPrincipal.FDQSangria.SQL.Clear;
  DMPrincipal.FDQSangria.SQL.Add
  ('select *,sum(fundo_troco)as total_sangria  from registroeventos where cod_evento=3 and num_abetura=:Pnumabertura');
  DMPrincipal.FDQSangria.ParamByName('Pnumabertura').AsInteger :=numAbertura;
  DMPrincipal.FDQSangria.Open();


  DMPrincipal.FDQSuprimento.Close;
  DMPrincipal.FDQSuprimento.SQL.Clear;
  DMPrincipal.FDQSuprimento.SQL.Add
  ('select *,sum(fundo_troco)as total_suprimento  from registroeventos where cod_evento=4 and num_abetura=:Pnumabertura');
  DMPrincipal.FDQSuprimento.ParamByName('Pnumabertura').AsInteger :=numAbertura;
  DMPrincipal.FDQSuprimento.Open();


  DMPrincipal.FDQfundo.Close;
  DMPrincipal.FDQfundo.SQL.Clear;
  DMPrincipal.FDQfundo.SQL.Add
  ('select * from registroeventos where cod_evento=1 and num_abetura=:Pnumabertura');
  DMPrincipal.FDQfundo.ParamByName('Pnumabertura').AsInteger :=numAbertura;
  DMPrincipal.FDQfundo.Open();


  FDQDevolucao.Close;
  FDQDevolucao.SQL.Clear;
  FDQDevolucao.SQL.Add
  ('select *,sum(DEV_valorTotal)as total_Dev from devolucao where DEV_numAbertura_fk =:Pnumabertura');
  FDQDevolucao.ParamByName('Pnumabertura').AsInteger :=numAbertura;
  FDQDevolucao.Open();

  frxReport1.Variables['devolucao'] :=QuotedStr(FormatFloat('##,#0.00', FDQDevolucaototal_Dev.AsCurrency));
  frxReport1.Variables['data'] := QuotedStr(DateToStr(Data));

  sangria := DMPrincipal.FDQSangriatotal_sangria.AsCurrency;
  frxReport1.Variables['sangria'] :=QuotedStr(FormatFloat('##,#0.00',sangria));

  suprimento := DMPrincipal.FDQSuprimentototal_suprimento.AsCurrency;
  frxReport1.Variables['suprimento'] :=QuotedStr(FormatFloat('##,#0.00',suprimento));

  fundotroco := DMPrincipal.FDQfundofundo_troco.AsCurrency;
  frxReport1.Variables['fundotroco'] :=QuotedStr(FormatFloat('##,#0.00',fundotroco));

  frxReport1.Variables['dinheiro1'] :=QuotedStr(FormatFloat('##,#0.00', ((dinheiro - sangria) + suprimento + fundotroco)-FDQDevolucaototal_Dev.AsCurrency));

  frxReport1.PrepareReport();
  frxReport1.ShowPreparedReport;




end;



procedure TFRMreinprimirFechamento.Image3Click(Sender: TObject);
begin
FRMreinprimirFechamento.Close;
FRMmenuGeral.Close;
FRMmenu.Close;
end;

end.
