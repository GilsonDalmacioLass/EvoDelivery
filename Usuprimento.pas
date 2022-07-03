unit Usuprimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids,
  Vcl.DBGrids;

type
  TFRMsuprimento = class(TForm)
    ImgFundo: TImage;
    Image6: TImage;
    Image7: TImage;
    Panel1: TPanel;
    Label4: TLabel;
    Esenha: TEdit;
    EvalorSuprimento: TEdit;
    DSCaixa: TDataSource;
    FDMTCaixa: TFDMemTable;
    FDMTCaixaNome: TStringField;
    FDMTCaixavalor: TCurrencyField;
    Image1: TImage;
    procedure Image7Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure EvalorSuprimentoKeyPress(Sender: TObject; var Key: Char);
    procedure EsenhaKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMsuprimento: TFRMsuprimento;

implementation

{$R *.dfm}

uses UDMprincipal, Umenu, UmenuGeral, UMessageDlg;

procedure TFRMsuprimento.EsenhaKeyPress(Sender: TObject; var Key: Char);
var
Responsavel:TPermissoes;
valor:Currency;
begin
  if Key=#13 then
  begin
     if Esenha.Text='' then
     begin
       ShowMessage('Digite a senha para confirmar!');

     end else
     begin
       Responsavel :=DMPrincipal.buscaPermissoes(Esenha.Text);
       if (Responsavel <> nil) and (Responsavel.fazSuprimento) then
       begin
          valor:= StrToCurr(EvalorSuprimento.Text);
          DMPrincipal.insertEventoRegistro(4,DateTimeToStr(Now),Permissoes.nomeUsuario,Permissoes.nomeUsuario,valor,DMPrincipal.numAbertura,StrToCurr(EvalorSuprimento.Text),0,0,0,False,'',0,Permissoes.codusuario,'');
          ShowMessage('Suprimento efetuada com Sucesso!!');
          DMPrincipal.imprimiRelatorioCaixa(2,FormatFloat('##,##0.00',valor));
          FRMsuprimento.Close;
          FRMmenu.Close;
       end else
       begin
        ShowMessage('Senha Incoreta ou sem Permissão');
        Esenha.Text:='';
       end;

     end;
   end;

  if Key=#27 then
  begin
    FRMsuprimento.Close;
  end;
end;

procedure TFRMsuprimento.EvalorSuprimentoKeyPress(Sender: TObject;
  var Key: Char);
var
 Responsavel:TPermissoes;
begin
if Key=#13 then
begin
    if DMPrincipal.statusCaixa then
  begin


    if  Permissoes.fazSuprimento then
    begin
      DMPrincipal.insertEventoRegistro(4,DateTimeToStr(Now),Permissoes.nomeUsuario,Permissoes.nomeUsuario,StrToCurr(EvalorSuprimento.Text),DMPrincipal.numAbertura,StrToCurr(EvalorSuprimento.Text),0,0,0,False,'',0,Permissoes.codusuario,'');
      ShowMessage('Sangria efetuada com Sucesso!!');
      FRMsuprimento.Close;

    end else
    begin

      Panel1.Visible:=true;
      Esenha.SetFocus;
      Image6.Visible:=False;
      Image7.Visible:=False;
    end;



  end else
  begin
  ShowMessage('Não existe Caixa Aberto!!');
  end;
 end;

   if Key=#27 then
   begin
    FRMsuprimento.Close;

   end;
end;

procedure TFRMsuprimento.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key =#27 then
begin
 Image7Click(self);

end;
if Key =#13 then
begin
 Image6Click(self);
end;
end;

procedure TFRMsuprimento.FormShow(Sender: TObject);
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
//  DMPrincipal.CarregaCaixa('suprimento');
//  EvalorSuprimento.setfocus;
//  if  Permissoes.fazSuprimento=false then
//  begin
//    DBGrid1.Visible:=false;
//  end;
end;

procedure TFRMsuprimento.Image1Click(Sender: TObject);
begin
Self.Close;
end;

procedure TFRMsuprimento.Image6Click(Sender: TObject);
var
 Responsavel:TPermissoes;
 valor:Currency;

begin
    if DMPrincipal.statusCaixa then
  begin


    if  Permissoes.fazSuprimento then
    begin
    valor:= StrToCurr(EvalorSuprimento.Text);
      DMPrincipal.insertEventoRegistro(4,DateTimeToStr(Now),Permissoes.nomeUsuario,Permissoes.nomeUsuario,valor,DMPrincipal.numAbertura,StrToCurr(EvalorSuprimento.Text),0,0,0,False,'',0,Permissoes.codusuario,'');
      TEvoMessageDlg.Mensagem('Sangria efetuada com Sucesso!','','I',[mbok]);
      DMPrincipal.imprimiRelatorioCaixa(2,FormatFloat('##,##0.00',valor));
      FRMsuprimento.Close;

    end else
    begin

      Panel1.Visible:=true;
      Esenha.SetFocus;
    end;



  end else
  begin
    TEvoMessageDlg.Mensagem('Não existe Caixa Aberto!', '','C',[mbok]);
  end;




    end;


procedure TFRMsuprimento.Image7Click(Sender: TObject);
begin
FRMsuprimento.Close;
FRMmenuGeral.Close;

end;

end.
