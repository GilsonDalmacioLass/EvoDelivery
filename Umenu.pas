unit Umenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Menus;

type
  TFRMmenu = class(TForm)
    PopupMenu1: TPopupMenu;
    Abertura1: TMenuItem;
    Fechamento1: TMenuItem;
    Sangria1: TMenuItem;
    Suprimento1: TMenuItem;
    Configuraes1: TMenuItem;
    ImgFundo: TImage;
    ISair: TImage;
    Iabertura: TImage;
    Ifechamento: TImage;
    Isangria: TImage;
    Isuprimento: TImage;
    Ireimprime: TImage;
    IaberturaOn: TImage;
    Ivazio: TImage;
    IfechamentoOn: TImage;
    IsangriaOn: TImage;
    IsuprimentoOn: TImage;
    IreimprimeOn: TImage;
    procedure AberturaCaixa1Click(Sender: TObject);
    procedure Sanf1Click(Sender: TObject);
    procedure Suprimento1Click(Sender: TObject);
    procedure Configuraes1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure IsairmenuClick(Sender: TObject);
    procedure IaberturaClick(Sender: TObject);
    procedure LaberturaClick(Sender: TObject);
    procedure LfechamentoClick(Sender: TObject);
    procedure IfechamentoClick(Sender: TObject);
    procedure LsangriaClick(Sender: TObject);
    procedure IsangriaClick(Sender: TObject);
    procedure LsuprimentoClick(Sender: TObject);
    procedure IsuprimentoClick(Sender: TObject);
    procedure IreimprimeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Abertura1Click(Sender: TObject);
    procedure Fechamento1Click(Sender: TObject);
    procedure Sangria1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ISairClick(Sender: TObject);
    procedure IaberturaMouseEnter(Sender: TObject);
    procedure IaberturaMouseLeave(Sender: TObject);
    procedure IfechamentoMouseEnter(Sender: TObject);
    procedure IfechamentoMouseLeave(Sender: TObject);
    procedure IsangriaMouseEnter(Sender: TObject);
    procedure IsangriaMouseLeave(Sender: TObject);
    procedure IsuprimentoMouseEnter(Sender: TObject);
    procedure IsuprimentoMouseLeave(Sender: TObject);
    procedure IreimprimeMouseEnter(Sender: TObject);
    procedure IreimprimeMouseLeave(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMmenu: TFRMmenu;

implementation

{$R *.dfm}

uses Uabertura, UDMprincipal, Usangria, Ufechamento, Usuprimento, UmenuGeral, UReinprimirFechamento;

procedure TFRMmenu.Abertura1Click(Sender: TObject);
begin

IaberturaClick(self);
end;

procedure TFRMmenu.AberturaCaixa1Click(Sender: TObject);
begin
if DMPrincipal.statusCaixa=False then
   begin
FRMmenu.CloseModal;
FRMabertura:=TFRMabertura.Create(self);
FRMabertura.ShowModal;

   end else
   begin
     ShowMessage('O Caixa já está Aberto!');
   end;
end;

procedure TFRMmenu.Button2Click(Sender: TObject);
begin
  if DMPrincipal.statusCaixa=False then
   begin
   ShowMessage('O Caixa já está Fechado!');

   end else
   begin
      FRMmenu.CloseModal;
FRMfechamento:=TFRMfechamento.Create(self);
FRMfechamento.ShowModal;
   end;

end;

procedure TFRMmenu.Configuraes1Click(Sender: TObject);
begin
IreimprimeClick(self);
end;


procedure TFRMmenu.Fechamento1Click(Sender: TObject);
begin
Ifechamento.OnClick(self);

end;

procedure TFRMmenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FRMmenu.close;
 FRMmenuGeral.Close;
end;

procedure TFRMmenu.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#27 then
begin
  FRMmenu.Close;
  FRMmenuGeral.Close;
end;
end;

procedure TFRMmenu.FormShow(Sender: TObject);
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
  heightT := Trunc((853 * (100 * Screen.Width) / 1920) / 100);
  DMPrincipal.SmoothResize(vPng, widthT, heightT);
  ImgFundo.Picture.Assign(vPng);
  vPng.Free;

end;
procedure TFRMmenu.IsairmenuClick(Sender: TObject);
begin
FRMmenu.Close;
end;

procedure TFRMmenu.IsangriaClick(Sender: TObject);
begin
if DMPrincipal.statusCaixa=true then
 begin
   FRMsangria:=TFRMsangria.Create(self);
   FRMsangria.ShowModal;

 end else
 begin
   ShowMessage('Não Há Caixa Aberto!');
 end;
end;

procedure TFRMmenu.IsangriaMouseEnter(Sender: TObject);
begin
Isangria.Picture:=IsangriaOn.Picture;
end;

procedure TFRMmenu.IsangriaMouseLeave(Sender: TObject);
begin
Isangria.Picture:=Ivazio.Picture;
end;

procedure TFRMmenu.IsuprimentoClick(Sender: TObject);
begin
if DMPrincipal.statusCaixa=true then
 begin
   FRMsuprimento:=TFRMsuprimento.Create(self);
   FRMsuprimento.ShowModal;

 end else
 begin
   ShowMessage('Não Há Caixa Aberto!');
 end;
end;

procedure TFRMmenu.IsuprimentoMouseEnter(Sender: TObject);
begin
Isuprimento.Picture:=IsuprimentoOn.Picture;
end;

procedure TFRMmenu.IsuprimentoMouseLeave(Sender: TObject);
begin
Isuprimento.Picture:=Ivazio.Picture;
end;

procedure TFRMmenu.IaberturaClick(Sender: TObject);
begin
  if DMPrincipal.statusCaixa=False then
   begin
    FRMmenu.CloseModal;
    FRMabertura:=TFRMabertura.Create(self);
    FRMabertura.ShowModal;
   end else
   begin
     ShowMessage('O Caixa já está Aberto!');
     show
   end;
end;

procedure TFRMmenu.IaberturaMouseEnter(Sender: TObject);
begin
  Iabertura.Picture:=IaberturaOn.Picture;
end;

procedure TFRMmenu.IaberturaMouseLeave(Sender: TObject);
begin
Iabertura.Picture:=Ivazio.Picture;
end;

procedure TFRMmenu.IreimprimeClick(Sender: TObject);
begin
FRMreinprimirFechamento:=tfrmreinprimirFechamento.Create(self);
FRMreinprimirFechamento.ShowModal;
end;

procedure TFRMmenu.IreimprimeMouseEnter(Sender: TObject);
begin
Ireimprime.Picture:=IreimprimeOn.Picture;
end;

procedure TFRMmenu.IreimprimeMouseLeave(Sender: TObject);
begin
Ireimprime.Picture:=Ivazio.Picture;
end;

procedure TFRMmenu.IfechamentoClick(Sender: TObject);
begin

  if DMPrincipal.statusCaixa=False then
   begin
   ShowMessage('O Caixa já está Fechado!');

   end else
   begin
      FRMmenu.CloseModal;
      FRMfechamento:=TFRMfechamento.Create(self);
      FRMfechamento.ShowModal;

   end;
end;

procedure TFRMmenu.IfechamentoMouseEnter(Sender: TObject);
begin
Ifechamento.Picture:=IfechamentoOn.Picture;

end;

procedure TFRMmenu.IfechamentoMouseLeave(Sender: TObject);
begin
Ifechamento.Picture:=Ivazio.Picture;
end;

procedure TFRMmenu.ISairClick(Sender: TObject);
begin
FRMmenu.Close;


end;

procedure TFRMmenu.LaberturaClick(Sender: TObject);
begin

   if DMPrincipal.statusCaixa=False then
   begin
    FRMmenu.CloseModal;
    FRMabertura:=TFRMabertura.Create(self);
    FRMabertura.ShowModal;

   end else
   begin
     ShowMessage('O Caixa já está Aberto!');
   end;

end;

procedure TFRMmenu.LfechamentoClick(Sender: TObject);
begin

   if DMPrincipal.statusCaixa=False then
   begin
    ShowMessage('O Caixa já está Fechado!');
   end else
   begin
      FRMmenu.CloseModal;
      FRMfechamento:=TFRMfechamento.Create(self);
      FRMfechamento.ShowModal;
   end;
end;

procedure TFRMmenu.LsangriaClick(Sender: TObject);
begin
if DMPrincipal.statusCaixa=true then
 begin
   FRMsangria:=TFRMsangria.Create(self);
   FRMsangria.ShowModal;

 end else
 begin
   ShowMessage('Não Há Caixa Aberto!');
 end;
end;

procedure TFRMmenu.LsuprimentoClick(Sender: TObject);
begin
if DMPrincipal.statusCaixa=true then
 begin
   FRMsuprimento:=TFRMsuprimento.Create(self);
   FRMsuprimento.ShowModal;

 end else
 begin
   ShowMessage('Não Há Caixa Aberto!');
 end;
end;

procedure TFRMmenu.Sanf1Click(Sender: TObject);
begin
 if DMPrincipal.statusCaixa=true then
 begin
   FRMsangria:=TFRMsangria.Create(self);
   FRMsangria.ShowModal;

 end else
 begin
   ShowMessage('Não Há Caixa Aberto!');
 end;

end;

procedure TFRMmenu.Sangria1Click(Sender: TObject);
begin
IsangriaClick(self);
end;

procedure TFRMmenu.Suprimento1Click(Sender: TObject);
begin
 if DMPrincipal.statusCaixa=true then
 begin
   FRMsuprimento:=TFRMsuprimento.Create(self);
   FRMsuprimento.ShowModal;

 end else
 begin
   ShowMessage('Não Há Caixa Aberto!');
 end;
end;


end.
