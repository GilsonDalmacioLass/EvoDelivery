unit Uabertura;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  MidasLib,
  Vcl.ExtCtrls;

type
  TFRMabertura = class(TForm)
    EfundoTroco: TEdit;
    Label2: TLabel;
    LdataAbertura: TLabel;
    Isair: TImage;
    Iconfirma: TImage;
    Panel1: TPanel;
    Label4: TLabel;
    Esenha: TEdit;
    ImgFundo: TImage;
    procedure IsairClick(Sender: TObject);
    procedure IconfirmaClick(Sender: TObject);
    procedure EfundoTrocoKeyPress(Sender: TObject; var Key: Char);
    procedure EsenhaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMabertura: TFRMabertura;

implementation

{$R *.dfm}

uses UDMprincipal, Umenu, UTelaInicial, UMessageDlg;

procedure TFRMabertura.EfundoTrocoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if EfundoTroco.Text = '' then
    begin
      EfundoTroco.Text := '0.00';
    end;

    Iconfirma.OnClick(self);
  end;
  if Key = #27 then
  begin
    Isair.OnClick(self);
  end;
end;

procedure TFRMabertura.EsenhaKeyPress(Sender: TObject; var Key: Char);
var
  Responsavel: TPermissoes;

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

      if (Responsavel <> nil) and (Responsavel.abrirCaixa) then
      begin

        DMPrincipal.insertEventoRegistro(1, DateTimeToStr(Now),
          Responsavel.nomeUsuario, Permissoes.nomeUsuario,
          StrToCurr(EfundoTroco.Text), DMPrincipal.numAbertura + 1,
          StrToCurr(EfundoTroco.Text), 0, 0, 0, False, '', 0,
          Permissoes.codusuario, '');
        ShowMessage('Caixa Aberto com Sucesso!!');

        DMPrincipal.FDQsenha.Close;
        DMPrincipal.FDQsenha.Open();
        DMPrincipal.FDQsenha.Edit;
        DMPrincipal.FDQsenhasenha.AsInteger:=0;
        DMPrincipal.FDQsenha.Post;

        FRMabertura.Close;
        FRMmenu.Close;
       // FRMTelaInicial.statusCaixaLabel;
      end
      else

      begin

        ShowMessage('Senha Incoreta ou sem Permissão');
      end;

    end;

  end;

  if Key = #27 then

  begin

    IsairClick(self);
  end;

  // DMPrincipal.insertEventoRegistro(1,DateTimeToStr(Now),StrToCurr(EfundoTroco.Text),DMPrincipal.numAbertura + 1,StrToCurr(EfundoTroco.Text),);

end;

procedure TFRMabertura.FormShow(Sender: TObject);
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
  LdataAbertura.Caption := DateTimeToStr(Now);

end;

procedure TFRMabertura.IconfirmaClick(Sender: TObject);

begin

  if Permissoes.abrirCaixa then
  begin
    DMPrincipal.insertEventoRegistro(1, DateTimeToStr(Now),
      Permissoes.nomeUsuario, Permissoes.nomeUsuario,
      StrToCurr(EfundoTroco.Text), DMPrincipal.numAbertura + 1,
      StrToCurr(EfundoTroco.Text), 0, 0, 0, False, '', 0,
      Permissoes.codusuario, '');
    TEvoMessageDlg.Mensagem('Caixa Aberto com Sucesso!!','','I',[mbOk]);
    DMPrincipal.FDQsenha.Close;
    DMPrincipal.FDQsenha.Open();
    DMPrincipal.FDQsenha.Edit;
    DMPrincipal.FDQsenhasenha.AsInteger:=0;
    DMPrincipal.FDQsenha.Post;
    FRMabertura.Close;
  end
  else
  begin

    Label2.Visible := False;
    Panel1.Visible := true;
    Esenha.SetFocus;
    Iconfirma.Visible := False;
    Isair.Visible := False;
  end;

end;

procedure TFRMabertura.IsairClick(Sender: TObject);
begin
  FRMabertura.Close;
end;

end.
