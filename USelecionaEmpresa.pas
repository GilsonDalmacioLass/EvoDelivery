unit USelecionaEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.pngimage;

type
  TFRMSelecionaEmpresa = class(TForm)
    DBGrid1: TDBGrid;
    FDQUserEmpresa: TFDQuery;
    DSUserEmpresa: TDataSource;
    FDQUserEmpresaEmpresaCod: TStringField;
    FDQUserEmpresaEmpresaRazaoSocial: TStringField;
    FDQUserEmpresaEmpresaNomeFantasia: TStringField;
    FDQUserEmpresaEmpresaCNPJ: TStringField;
    FDQUserEmpresaEmpresaIdent: TFDAutoIncField;
    PCabecalho: TPanel;
    PCabecalho1: TPanel;
    Label1: TLabel;
    PRodape: TPanel;
    ImgFechar: TImage;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure ImgFecharClick(Sender: TObject);
  private
    function HexToTColor(sColor: string; opacidade: integer): TColor;
  public
    TelaAbertura: string;
  end;

var
  FRMSelecionaEmpresa: TFRMSelecionaEmpresa;

implementation

{$R *.dfm}

uses UDMPrincipal;


procedure TFRMSelecionaEmpresa.DBGrid1DblClick(Sender: TObject);
begin
  DMPrincipal.IdentEmpresaSelecionada := FDQUserEmpresaEmpresaIdent.AsInteger;
  FRMSelecionaEmpresa.Close;
end;

procedure TFRMSelecionaEmpresa.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  DBGrid1.Canvas.Font.Color := clWhite;
  if  (gdSelected in State) or (gdFocused in State)  then
  begin
    Dbgrid1.Canvas.Brush.Color := HexToTColor('8e8e8e',50);
  end else
  begin
    Dbgrid1.Canvas.Brush.Color := HexToTColor('8e8e8e',0);
  end;
  DBGrid1.Canvas.FillRect(Rect);
  Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
end;

procedure TFRMSelecionaEmpresa.FormCreate(Sender: TObject);
begin
  PCabecalho.Color := HexToTColor('3e3e3e',0);
  PCabecalho1.Color := HexToTColor('8e8e8e',0);
  PRodape.Color := HexToTColor('8e8e8e',0);
end;

procedure TFRMSelecionaEmpresa.FormShow(Sender: TObject);
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
end;

function TFRMSelecionaEmpresa.HexToTColor(sColor: string;
  opacidade: integer): TColor;
var
  red, green, blue: integer;
begin
  red := StrToInt('$' + copy(sColor, 1, 2));
  green := StrToInt('$' + copy(sColor, 3, 2));
  blue := StrToInt('$' + copy(sColor, 5, 2));

  red := StrToInt('$' + copy(sColor, 1, 2)) - Trunc((opacidade / 255) * red);
  green := StrToInt('$' + copy(sColor, 3, 2)) -
    Trunc((opacidade / 255) * green);
  blue := StrToInt('$' + copy(sColor, 5, 2)) - Trunc((opacidade / 255) * blue);

  result := RGB(red, green, blue);
end;
procedure TFRMSelecionaEmpresa.ImgFecharClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.
