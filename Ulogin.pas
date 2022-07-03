unit Ulogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Forms,
  Vcl.Graphics, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage, MidasLib,
  Vcl.ExtCtrls, Vcl.Menus, Vcl.Controls,shellapi, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFRMloginDelivery = class(TForm)
    Esenha: TEdit;
    Image7: TImage;
    ImgConfirmar: TImage;
    ImgCancelar: TImage;
    ImgFundo: TImage;
    LblVersion: TLabel;
    PopupMenu1: TPopupMenu;
    AtualizarSistema1: TMenuItem;
    FDQUserEmpresa: TFDQuery;
    FDQUserEmpresaEmpresaCod: TStringField;
    FDQUserEmpresaEmpresaRazaoSocial: TStringField;
    FDQUserEmpresaEmpresaNomeFantasia: TStringField;
    FDQUserEmpresaEmpresaCNPJ: TStringField;
    FDQUserEmpresaEmpresaIdent: TFDAutoIncField;
    Button1: TButton;
    procedure EsenhaKeyPress(Sender: TObject; var Key: Char);
    procedure Image7Click(Sender: TObject);
    procedure ImgConfirmarClick(Sender: TObject);
    procedure ImgCancelarClick(Sender: TObject);
    function GetBuildInfo(Prog: string): string;
    procedure FormShow(Sender: TObject);
    procedure AtualizarSistema1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);


  private
    ParametrosAbertura: TStrings;
  public
    { Public declarations }
  end;

var
  FRMloginDelivery: TFRMloginDelivery;
  AutoUpdate: Boolean;
  VersaoSistema:string;


implementation

uses
  UDMprincipal, UTelaInicial, UMessageDlg, USelecionaEmpresa;

{$R *.dfm}


procedure TFRMloginDelivery.AtualizarSistema1Click(Sender: TObject);
begin
  //ShellExecute(handle, 'open', PChar(caminhoaplicacao+'atualizacao.exe'), '', PChar('atualizacao.exe'),
             // SW_SHOWNORMAL);
end;

procedure TFRMloginDelivery.Button1Click(Sender: TObject);
begin
  Esenha.Text := '03021998';
  ImgConfirmarClick(Self);
end;

procedure TFRMloginDelivery.Button2Click(Sender: TObject);
begin
  TEvoMessageDlg.Mensagem('testetetetetetet'+#13+'ckjdgbvjcasjcviasjgcuias','testetetetetetet'+#13+'ckjdgbvjcasjcviasjgcuias','E',[mbNao,mbSepara,mbSim]);
end;

procedure TFRMloginDelivery.EsenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    ImgConfirmarClick(Self);
  end;
  if Key = #27 then
  begin
    FRMloginDelivery.Close;
  end;
end;

procedure TFRMloginDelivery.FormShow(Sender: TObject);
var
  vPng, vpng1, vpng2: TpngImage;
  vStream: TMemoryStream;
  widthT, heightT: integer;

begin
  // Redesenha a tela na resolução do monitor.

  ScaleBy(Screen.Width, 1920);
   if ParamStr(1)<>'' then
  begin
    ParametrosAbertura := DMPrincipal.Explode(ParamStr(1),'_');
    Esenha.Text := ParametrosAbertura[0];
    ImgConfirmarClick(self);
  end;


  vPng := TpngImage.Create;
  vPng.Assign(ImgFundo.Picture);
  widthT := Trunc((800 * (100 * Screen.Width) / 1920) / 100);
  heightT := Trunc((700 * (100 * Screen.Width) / 1920) / 100);
  DMPrincipal.SmoothResize(vPng, widthT, heightT);
  ImgFundo.Picture.Assign(vPng);
  vPng.Free;
  LblVersion.caption := 'Versão: ' + GetBuildInfo(ExtractFileName(Application.ExeName));
  {$IFDEF DEBUG}
  Button1.Visible := True;
  {$ENDIF}
end;

function TFRMloginDelivery.GetBuildInfo(Prog: string): string;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
  V1, V2, V3, V4: Word;
begin
  try
    VerInfoSize := GetFileVersionInfoSize(PChar(Prog), Dummy);
    GetMem(VerInfo, VerInfoSize);
    GetFileVersionInfo(PChar(Prog), 0, VerInfoSize, VerInfo);
    VerQueryValue(VerInfo, '', Pointer(VerValue), VerValueSize);
    with (VerValue^) do
    begin
      V1 := dwFileVersionMS shr 16;
      V2 := dwFileVersionMS and $FFFF;
      V3 := dwFileVersionLS shr 16;
      V4 := dwFileVersionLS and $FFFF;
    end;
    FreeMem(VerInfo, VerInfoSize);
    Result := Format('%d.%d.%d.%d', [V1, V2, V3, V4]);
  except
    Result := '1.0.0';
  end;

end;

procedure TFRMloginDelivery.Image7Click(Sender: TObject);
begin
  FRMloginDelivery.Close;
end;

procedure TFRMloginDelivery.ImgConfirmarClick(Sender: TObject);
begin
 if Esenha.Text = '' then
  begin
    ShowMessage('O campo senha esta vazio');
  end
  else
  begin
    Permissoes := DMPrincipal.buscaPermissoes(Esenha.Text);
    if Permissoes = nil then
     begin
      TEvoMessageDlg.Mensagem('Senha incorreta!','Não foi possivel reconhecer a senha informada.'#13'Por favor, tente novamente.','E', [mbOk]);
      Esenha.Text := '';
    end else
    begin
      if Permissoes.multiEmpresa then
      begin
        try
          if Assigned(ParametrosAbertura) then
          begin
            if ParametrosAbertura[1]<>'' then
              DMPrincipal.IdentEmpresaSelecionada := StrToInt(ParametrosAbertura[1]);
          end else
          begin
            FRMSelecionaEmpresa := TFRMSelecionaEmpresa.Create(Self);
            FRMSelecionaEmpresa.ShowModal;
          end;

        finally
          FRMTelaInicial:=TFRMTelaInicial.Create(self);
          FRMTelaInicial.ShowModal;
        end;
      end else
      begin
        FDQUserEmpresa.Close;
        FDQUserEmpresa.SQL.Clear;
        FDQUserEmpresa.SQL.Add(
            ' select                              ' +
            '   EmpresaIdent,                     ' +
            '   EmpresaCod,                       ' +
            '   EmpresaRazaoSocial,               ' +
            '   EmpresaNomeFantasia,              ' +
            '   EmpresaCNPJ                       ' +
            ' from tbpessoaempresa                ' +
            ' left join tbempresa on EmpresaIdentFkPessoaEmpresa = EmpresaIdent '  +
            ' where PessoaIdentFkPessoaEmpresa = :PUserIdent'
          );
        FDQUserEmpresa.ParamByName('PUserIdent').AsInteger := Permissoes.codusuario;
        FDQUserEmpresa.Open();
        DMPrincipal.IdentEmpresaSelecionada := FDQUserEmpresaEmpresaIdent.AsInteger;
        FRMTelaInicial:=TFRMTelaInicial.Create(self);
        FRMTelaInicial.ShowModal;
        FRMloginDelivery.Close;
      end;
    end;
  end;

end;

procedure TFRMloginDelivery.ImgCancelarClick(Sender: TObject);
begin
  FRMloginDelivery.Close;
end;

//
end.
