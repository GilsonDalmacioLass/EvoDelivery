unit Usangria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids,
  Vcl.DBGrids;

type
  TFRMsangria = class(TForm)
    EvalorSangria: TEdit;
    ImgConfirma: TImage;
    ImgCancelar: TImage;
    Image8: TImage;
    Panel1: TPanel;
    Label4: TLabel;
    Esenha: TEdit;
    ImgFundo: TImage;
    FDMTCaixa: TFDMemTable;
    FDMTCaixaNome: TStringField;
    FDMTCaixavalor: TCurrencyField;
    DSCaixa: TDataSource;
    Image1: TImage;
    procedure ImgConfirmaClick(Sender: TObject);
    procedure ImgCancelarClick(Sender: TObject);
    procedure EsenhaKeyPress(Sender: TObject; var Key: Char);
    procedure EvalorSangriaKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMsangria: TFRMsangria;

implementation

{$R *.dfm}

uses UDMprincipal, Umenu, UmenuGeral, UMessageDlg;

procedure TFRMsangria.EsenhaKeyPress(Sender: TObject; var Key: Char);
var
Responsavel:TPermissoes;
valor:Currency;

begin
   if key = #13 then
   begin
     if Esenha.Text='' then
     begin
     ShowMessage('Digite a senha para confirmar!');

     end else
     begin



     Responsavel :=DMPrincipal.buscaPermissoes(Esenha.Text);
      if (Responsavel <> nil) and (Responsavel.fazSangria) then
      begin

        valor:=StrToCurr(EvalorSangria.Text);
        DMPrincipal.insertEventoRegistro(3,DateTimeToStr(Now),Permissoes.nomeUsuario,Permissoes.nomeUsuario,valor,DMPrincipal.numAbertura,-StrToCurr(EvalorSangria.Text),0,0,0,False,'',0,Permissoes.codusuario,'');
        ShowMessage('Sangria efetuada com Sucesso!!');
        DMPrincipal.imprimiRelatorioCaixa(1,FormatFloat('##,##0.00',valor));
        FRMsangria.Close;
        FRMmenu.Close;
      end else

      begin
        ShowMessage('Senha Incoreta ou sem Permissão');
      end;

     end;
   end;
end;

procedure TFRMsangria.EvalorSangriaKeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then
 begin
  ImgConfirma.OnClick(self);
 end;
  if Key=#27 then
 begin
  FRMsangria.Close;
 end;
end;

procedure TFRMsangria.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key =#27 then
begin
 ImgCancelarClick(self);
end;
if Key =#13 then
begin
  ImgConfirmaClick(self);
end;
end;

procedure TFRMsangria.FormShow(Sender: TObject);
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


end;

procedure TFRMsangria.ImgConfirmaClick(Sender: TObject);
var
valor:Currency;
begin
  if DMPrincipal.statusCaixa then
  begin


    if  Permissoes.fazSangria then
    begin
      valor:=StrToCurr(EvalorSangria.Text);
      DMPrincipal.insertEventoRegistro(3,DateTimeToStr(Now),Permissoes.nomeUsuario,Permissoes.nomeUsuario,valor,DMPrincipal.numAbertura,-StrToCurr(EvalorSangria.Text),0,0,0,False,'',0,Permissoes.codusuario,'');
      TEvoMessageDlg.Mensagem('Sangria efetuada com Sucesso!','','I',[mbok]);
      DMPrincipal.imprimiRelatorioCaixa(1,FormatFloat('##,##0.00',valor));
      FRMsangria.Close;

    end else
    begin
      Panel1.Visible:=true;
      Esenha.SetFocus;
      ImgCancelar.Visible:=False;
      ImgConfirma.Visible:=False;
    end;



  end else
  begin
    TEvoMessageDlg.Mensagem('Não existe Caixa Aberto!', '','C',[mbok]);
  end;

end;

procedure TFRMsangria.Image1Click(Sender: TObject);
begin
self.Close;
end;

procedure TFRMsangria.ImgCancelarClick(Sender: TObject);
begin
FRMsangria.Close;
FRMmenuGeral.Close;

end;

end.
