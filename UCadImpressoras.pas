unit UCadImpressoras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Imaging.pngimage;

type
  TFRMCadImpressoras = class(TForm)
    FDQImpressoras: TFDQuery;
    DSImpressora: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    FDQImpressorasVinculadas: TFDQuery;
    DSVinculadas: TDataSource;
    FDQImpressorasVinculadasIMP_id_pk: TFDAutoIncField;
    FDQImpressorasVinculadasIMP_descricao: TStringField;
    FDQImpressorasVinculadasIMP_ativa: TBooleanField;
    FDQImpressorasVinculadasIMP_vinculo: TStringField;
    FDQImpressorasVinculadasIMP_grafica: TBooleanField;
    Image1: TImage;
    Image2: TImage;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    DBCheckBox1: TDBCheckBox;
    ImgCancela: TImage;
    ImgVincular: TImage;
    Panel2: TPanel;
    DBGImpressora: TDBGrid;
    FDQImpressorasImpressoraIdent: TFDAutoIncField;
    FDQImpressorasImpressoraDescricao: TStringField;
    FDQImpressorasImpressoraAtiva: TBooleanField;
    FDQImpressorasImpressoraDataAdd: TDateTimeField;
    procedure DBGImpressoraCellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure ImgCancelaClick(Sender: TObject);
    procedure ImgVincularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMCadImpressoras: TFRMCadImpressoras;

implementation

{$R *.dfm}

uses UDMPrincipal, Vcl.Printers, UMessageDlg;


procedure TFRMCadImpressoras.DBGImpressoraCellClick(Column: TColumn);
begin
  if FDQImpressorasVinculadasIMP_vinculo.AsString <> '' then
  begin
    ComboBox1.Text := FDQImpressorasVinculadasIMP_vinculo.AsString;
  end;
  Panel1.Visible := True;
  Edit1.Text := FDQImpressorasImpressoraDescricao.AsString;
  DBGImpressora.Enabled := False;
end;

procedure TFRMCadImpressoras.FormCreate(Sender: TObject);
var
  i: Integer;
  Printer: TPrinter;
begin
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
end;

procedure TFRMCadImpressoras.FormShow(Sender: TObject);
begin
 FDQImpressoras.Close;
 FDQImpressoras.Open();
  FDQImpressorasVinculadas.Close;
 FDQImpressorasVinculadas.Open();
end;

procedure TFRMCadImpressoras.Image2Click(Sender: TObject);
begin
 FRMCadImpressoras.Close;
end;

procedure TFRMCadImpressoras.ImgCancelaClick(Sender: TObject);
begin
  Panel1.Visible := False;
  FDQImpressorasVinculadas.Close;
  FDQImpressorasVinculadas.Open();
  DBGImpressora.Enabled:= true;
end;

procedure TFRMCadImpressoras.ImgVincularClick(Sender: TObject);
begin
  FDQImpressoras.Edit;
  FDQImpressorasVinculadasIMP_vinculo.AsString := ComboBox1.Text;
  FDQImpressoras.Post;
  FDQImpressorasVinculadas.Close;
  FDQImpressorasVinculadas.Open();
  Panel1.Visible := false;
  DBGImpressora.Enabled:= True;
  TEvoMessageDlg.Mensagem('Impressora Adicionado com Sucesso!', 'Houve êxito ao cadastrar a impressora!', 'I', [mbOk]);
end;


end.
