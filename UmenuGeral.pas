unit UmenuGeral;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Menus, IdMailBox;

type
  TFRMmenuGeral = class(TForm)
    ImgFundo: TImage;
    Isair: TImage;
    Icontrolecaixa: TImage;
    IlistagemOn: TImage;
    Ivazio: TImage;
    IcontrolecaixaOn: TImage;
    IadministrativoOn: TImage;
    IfinanceiroOn: TImage;
    PopupMenu1: TPopupMenu;
    CONTROLECAIXA1: TMenuItem;
    ImgConfiguracoes: TImage;
    CONFIGURAES1: TMenuItem;
    procedure IsairClick(Sender: TObject);
    procedure IcontrolecaixaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IadministrativoClick(Sender: TObject);
    procedure IcontrolecaixaMouseEnter(Sender: TObject);
    procedure IcontrolecaixaMouseLeave(Sender: TObject);
    procedure CONTROLECAIXA1Click(Sender: TObject);
    procedure ADMINISTRATIVO1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ImgConfiguracoesClick(Sender: TObject);
    procedure CONFIGURAES1Click(Sender: TObject);
    procedure IfinanceiroClick(Sender: TObject);
    procedure FINANCEIRO1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMmenuGeral: TFRMmenuGeral;

implementation

uses
  Umenu, UDMprincipal, UTelaInicial, UConfig;

{$R *.dfm}

procedure TFRMmenuGeral.ADMINISTRATIVO1Click(Sender: TObject);
begin
  IadministrativoClick(self);
end;

procedure TFRMmenuGeral.CONFIGURAES1Click(Sender: TObject);
begin
  ImgConfiguracoesClick(self);
end;

procedure TFRMmenuGeral.CONTROLECAIXA1Click(Sender: TObject);
begin
  IcontrolecaixaClick(self);
end;

procedure TFRMmenuGeral.FINANCEIRO1Click(Sender: TObject);
begin
  IfinanceiroClick(self);
end;

procedure TFRMmenuGeral.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    IsairClick(self);
  end;
end;

procedure TFRMmenuGeral.FormShow(Sender: TObject);
var
  vPng: TpngImage;
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

procedure TFRMmenuGeral.IcontrolecaixaClick(Sender: TObject);
begin
  FRMmenu:=TFRMmenu.Create(self);
  FRMmenu.ShowModal;
end;

procedure TFRMmenuGeral.IcontrolecaixaMouseEnter(Sender: TObject);
begin
  Icontrolecaixa.Picture:=IcontrolecaixaOn.Picture;
end;

procedure TFRMmenuGeral.IcontrolecaixaMouseLeave(Sender: TObject);
begin
  Icontrolecaixa.Picture:=Ivazio.Picture;
end;

procedure TFRMmenuGeral.IfinanceiroClick(Sender: TObject);
begin
  ShowMessage('O usuário logado não tem acesso a esse menu');
end;

procedure TFRMmenuGeral.ImgConfiguracoesClick(Sender: TObject);
begin
  FRMConfig := TFRMConfig.Create(self);
  FRMConfig.ShowModal;
end;

procedure TFRMmenuGeral.IsairClick(Sender: TObject);
begin
  FRMmenuGeral.Close;
end;

procedure TFRMmenuGeral.IadministrativoClick(Sender: TObject);
begin
  ShowMessage('O usuário logado não tem acesso a esse menu');
end;

end.
