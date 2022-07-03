unit USelecionaObservacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmSelecionaObservacao = class(TForm)
    EdtObsEscrita: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSelecionaObservacao: TFrmSelecionaObservacao;

implementation

{$R *.dfm}

uses UAddProduto, UMessageDlg;

procedure TFrmSelecionaObservacao.Button1Click(Sender: TObject);
begin
  if EdtObsEscrita.Text <> '' then
  begin
    FRMAddProduto.ObservacaoProdutoSelecionado :=  EdtObsEscrita.Text;
    FrmSelecionaObservacao.Close;
  end else
  begin
    TEvoMessageDlg.Mensagem('O valor do campo observação nao pode ser vazio!','','C',[mbOk]);
  end;
end;

end.
