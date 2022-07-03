unit UCadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TFRMCadastroCliente = class(TForm)
    PnlPessoaNome: TPanel;
    EdtPessoaNome: TEdit;
    LblPessoaNome: TLabel;
    LblPessoaCpf: TLabel;
    PCEPPesquisa: TPanel;
    ImgCEPPesquisa: TImage;
    PnlPessoaCEP: TPanel;
    EdtPessoaCEP: TEdit;
    LblPessoaCEP: TLabel;
    PnlPessoaEnderecoCompl: TPanel;
    EdtPessoaEnderecoCompl: TEdit;
    LblPessoaEnderecoCompl: TLabel;
    PnlPessoaEndereco: TPanel;
    EdtPessoaEndereco: TEdit;
    LblPessoaEndereco: TLabel;
    PnlPessoaEnderecoNr: TPanel;
    EdtPessoaEnderecoNr: TEdit;
    LblPessoaEnderecoNr: TLabel;
    PnlPessoaBairro: TPanel;
    EdtPessoaBairro: TEdit;
    LblPessoaBairro: TLabel;
    PnlPessoaCidade: TPanel;
    EdtPessoaCidade: TEdit;
    LblPessoaCidade: TLabel;
    PnlPessoaCpf: TPanel;
    EdtPessoaCpf: TEdit;
    Panel4: TPanel;
    ImgFechar: TImage;
    Panel1: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    ImgConfirmar: TImage;
    ImgCancelar: TImage;
    procedure ImgFecharClick(Sender: TObject);
    procedure ImgCancelarClick(Sender: TObject);
    procedure ImgConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMCadastroCliente: TFRMCadastroCliente;

implementation

{$R *.dfm}

procedure TFRMCadastroCliente.ImgCancelarClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFRMCadastroCliente.ImgConfirmarClick(Sender: TObject);
begin
//try
//    DMObjetos.FDCProcs.Connected:= True;
//    ProcPessoas.Prepare;
//    if (Funcionario = True) or (Usuario = True) then
//    begin
//      ProcPessoas.ParamByName('tbPessoaCod').AsString := EdtPessoaCod.Text;
//      ProcPessoas.ParamByName('tbPessoaTipo').AsString := 'F';
//      ProcPessoas.ParamByName('tbPessoaNomeFantasia').AsString := EdtPessoaNome.Text;
//      ProcPessoas.ParamByName('tbPessoaNome').AsString := EdtPessoaNome.Text;
//      ProcPessoas.ParamByName('tbPessoaSexo').AsString := DBLCBSexo.KeyValue;
//      ProcPessoas.ParamByName('tbPessoaDtNascimento').AsDate := StrToDate(EdtPessoaDtNascimento.Text);
//      ProcPessoas.ParamByName('tbPessoaNomePai').AsString := EdtPessoaNomePai.Text;
//      ProcPessoas.ParamByName('tbPessoaNomeMae').AsString := EdtPessoaNomeMae.Text;
//      ProcPessoas.ParamByName('tbPessoaNomeConjuge').AsString := EdtPessoaNomeConjuge.Text;
//      ProcPessoas.ParamByName('tbPessoaNomeContato').AsString := EdtPessoaNome.Text;
//      ProcPessoas.ParamByName('tbPessoaCNPJCPF').AsString := EdtPessoaCpf.Text;
//      ProcPessoas.ParamByName('tbPessoaIdentidade').AsString := EdtPessoaRg.Text;
//      ProcPessoas.ParamByName('tbPessoaIdentidadeDtEmis').AsDate := StrToDate(EdtPessoaDtRg.Text);
//      ProcPessoas.ParamByName('tbPessoaIdentidadeOrgaoEmis').AsString := EdtPessoaOrgaoRg.Text;
//      ProcPessoas.ParamByName('tbPessoaNrFone').AsString := EdtPessoaNrFone.Text;
//      ProcPessoas.ParamByName('tbPessoaNrFax').AsString := EdtPessoaNrFax.Text;
//      ProcPessoas.ParamByName('tbPessoaEmail').AsString := EdtPessoaEmail.Text;
//      ProcPessoas.ParamByName('tbPessoaEndereco').AsString := EdtPessoaEndereco.Text;
//      ProcPessoas.ParamByName('tbPessoaEnderecoNr').AsString := EdtPessoaEnderecoNr.Text;
//      ProcPessoas.ParamByName('tbPessoaEnderecoCompl').AsString := EdtPessoaEnderecoCompl.Text;
//      ProcPessoas.ParamByName('tbPessoaSenha').AsVarByteStr := EdtPessoaSenha.Text;
//      ProcPessoas.ParamByName('tbCEPIdentFkPessoa').AsInteger := CEPIdentFkEmpresa;
//      ProcPessoas.ParamByName('tbPaisIdentNacFkPessoa').AsInteger := DBLCBNacionalidade.KeyValue;
//      ProcPessoas.ParamByName('tbCidadeIdentNaturalFkPessoa').AsInteger := DBLCBNaturalidade.KeyValue;
//      ProcPessoas.ParamByName('tbEstadoCivilIdentFkPessoa').AsInteger := DBLCBEstadoCivil.KeyValue;
//      ProcPessoas.ParamByName('tbEstadoIdentIdentidadeEmisFkPessoa').AsInteger:=DBLCBEstadoIdentidade.KeyValue;
//      ProcPessoas.ParamByName('tbOcupacaoIdentFkPessoa').AsInteger:=1;
//    end;
//    ProcPessoas.Active := True;
//    if ProcPessoasCodRetorno.AsInteger = 0 then
//    begin
//      lretorno := DMPrincipal.Explode(ProcPessoasMsg.AsString,'_');
//      IdentPessoa := StrToInt(lretorno[0]);
//
//      if GravarPessoaContato(IdentPessoa) then
//      begin
//        GravarPessoaEmail(IdentPessoa);
//        GravarPessoaEmpresa(IdentPessoa);
//      end else
//      begin
//        TEvoMessageDlg.Mensagem('Erro ao gravar dados de contato','Verifique os campos do cadastro!',  'E',[mbOk]);
//      end;
//
//    end else
//    begin
//      if ProcPessoasCodRetorno.AsInteger = 1 then
//      begin
//        try
//          lMsg := ProcPessoasMsg.AsString;
//          lNumeroMsgCaracter := Length(lMsg);
//          TEvoMessageDlg.Mensagem('Erro ao registrar Empresa',Copy(lMsg,1,28)+#13+#13+Copy(lMsg, 28, lNumeroMsgCaracter -24), 'E',[mbOk]);
//        except
//          TEvoMessageDlg.Mensagem('Erro ao registrar Empresa','Verifique os campos do cadastro!',  'E',[mbOk]);
//        end;
//      end;
//    end;
//  except
//  on E: Exception do
//    TEvoMessageDlg.Mensagem('Erro ao registrar Pessoa',E.Message, 'E',[mbOk]);
//  end;
end;

procedure TFRMCadastroCliente.ImgFecharClick(Sender: TObject);
begin
  self.Close;
end;

end.
