
unit UConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Menus, Printers, Vcl.StdCtrls, Vcl.Buttons;

type
  TFRMConfig = class(TForm)
    ImgFundo: TImage;
    DBLookupComboBox1: TDBLookupComboBox;
    ImgSavar: TImage;
    ImgCancelar: TImage;
    ImgFechar: TImage;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    Salvar1: TMenuItem;
    ComboBox1: TComboBox;
    DBCheckBox1: TDBCheckBox;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    DSConfiguracao: TDataSource;
    DSTerminal: TDataSource;
    FDQTerminal: TFDQuery;
    FDQConfiguracao: TFDQuery;
    FDQTerminalTER_id_pk: TFDAutoIncField;
    FDQTerminalTER_nome: TStringField;
    FDQTerminalTER_Ocupado: TBooleanField;
    CheckBoxVendedor: TCheckBox;
    Label2: TLabel;
    LBLSelecioneoVendedor: TLabel;
    ComboBoxVendedor: TDBLookupComboBox;
    DSVendedor: TDataSource;
    Label4: TLabel;
    FDQConfiguracaoConfiguracaoIdent: TFDAutoIncField;
    FDQConfiguracaoservidor_pdv: TStringField;
    FDQConfiguracaoservidor_novo: TStringField;
    FDQConfiguracaoporta_novo: TStringField;
    FDQConfiguracaologin_novo: TStringField;
    FDQConfiguracaosenha_novo: TStringField;
    FDQConfiguracaonome_terminal: TStringField;
    FDQConfiguracaonumero_nfce: TIntegerField;
    FDQConfiguracaonumero_lote: TIntegerField;
    FDQConfiguracaonumeroSerie: TIntegerField;
    FDQConfiguracaomodoNfce: TStringField;
    FDQConfiguracaotipoEmissao: TIntegerField;
    FDQConfiguracaoqtd_multiplicacao: TIntegerField;
    FDQConfiguracaotipoListagem_vendas: TBooleanField;
    FDQConfiguracaoHabilitaImportacao: TBooleanField;
    FDQConfiguracaointegracaoOnline: TSQLTimeStampField;
    FDQConfiguracaointegracao: TStringField;
    FDQConfiguracaoimpressaoSenha: TBooleanField;
    FDQConfiguracaoprodutocomposto: TBooleanField;
    FDQConfiguracaoConfiguracaoImpressoraDefault: TStringField;
    procedure FormShow(Sender: TObject);
    procedure ImgCancelarClick(Sender: TObject);
    procedure ImgFecharClick(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure ImgSavarClick(Sender: TObject);
    procedure Salvar1Click(Sender: TObject);
    procedure CheckBoxVendedorClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMConfig: TFRMConfig;

implementation

{$R *.dfm}

uses  UCadImpressoras, UDMPrincipal;

procedure TFRMConfig.Button1Click(Sender: TObject);
begin
// VendedorSalvado;
end;

procedure TFRMConfig.Cancelar1Click(Sender: TObject);
begin
ImgCancelarClick(self);
end;

procedure TFRMConfig.CheckBoxVendedorClick(Sender: TObject);
begin
  if CheckBoxVendedor.Checked then
  begin
    ComboBoxVendedor.Visible := True;
    LBLSelecioneoVendedor.Visible := True;
  end else
  begin
    ComboBoxVendedor.Visible := False;
    LBLSelecioneoVendedor.Visible := False;
  end;

end;


procedure TFRMConfig.ComboBox1Change(Sender: TObject);
begin
FDQConfiguracao.Close;
FDQConfiguracao.Open();
FDQConfiguracao.Edit;
FDQConfiguracaoConfiguracaoImpressoraDefault.AsString := ComboBox1.Text;
end;

procedure TFRMConfig.FormShow(Sender: TObject);
var
  vPng, vpng1, vpng2: TpngImage;
  vStream: TMemoryStream;
  widthT, heightT: integer;
    i: Integer;
  Printer: TPrinter;
begin
  // Redesenha a tela na resolução do monitor.

  ScaleBy(Screen.Width, 1920);

  vPng := TpngImage.Create;
  vPng.Assign(ImgFundo.Picture);
  widthT := Trunc((1920 * (100 * Screen.Width) / 1920) / 100);
  heightT := Trunc((1080 * (100 * Screen.Width) / 1920) / 100);
  DMPrincipal.SmoothResize(vPng, widthT, heightT);
  ImgFundo.Picture.Assign(vPng);
  vPng.Free;
  FDQConfiguracao.Close;
  FDQConfiguracao.Open();

  FDQTerminal.Close;
  FDQTerminal.SQL.Clear;
  FDQTerminal.SQL.Add('select * from evomodaux.terminal where TER_id_pk=:Pid');
  FDQTerminal.ParamByName('Pid').AsInteger:=FDQConfiguracaonumeroSerie.AsInteger;
  FDQTerminal.Open();
  FDQTerminal.Edit;
  FDQTerminalTER_Ocupado.AsBoolean:=False;
  FDQTerminal.Post;

  FDQTerminal.Close;
  FDQTerminal.SQL.Clear;
  FDQTerminal.SQL.Add('select * from evomodaux.terminal where TER_Ocupado=False');
  FDQTerminal.Open();
  FDQConfiguracao.Close;
  FDQConfiguracao.Open();
  FDQConfiguracao.Edit;
  Printer:=TPrinter.Create;
  try
    ComboBox1.Items.clear;

    for i := 0 to Printer.Printers. Count - 1 do
    begin
      ComboBox1.Items. Add(Printer. Printers. Strings[i] );
      ComboBox1.ItemIndex:=0;
    end;
  finally
    Printer.free;
  end;
  ComboBox1.Text := FDQConfiguracaoConfiguracaoImpressoraDefault.AsString;
end;


procedure TFRMConfig.ImgFecharClick(Sender: TObject);
begin
ImgCancelarClick(Self);
end;

procedure TFRMConfig.ImgSavarClick(Sender: TObject);
begin
  if FDQConfiguracao.Active then
  begin
    FDQConfiguracao.Post;
  end;

  FDQTerminal.Edit;
  FDQTerminalTER_Ocupado.AsBoolean:=True;
  FDQTerminal.Post;
  FRMConfig.Close;
end;

procedure TFRMConfig.Salvar1Click(Sender: TObject);
begin
  ImgSavarClick(Self);
end;



procedure TFRMConfig.Image2Click(Sender: TObject);
begin
  FRMCadImpressoras := TFRMCadImpressoras.Create(Self);
  FRMCadImpressoras.ShowModal;
end;


procedure TFRMConfig.ImgCancelarClick(Sender: TObject);
begin
  FRMConfig.Close;
end;

end.
