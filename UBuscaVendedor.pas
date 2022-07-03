unit UBuscaVendedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFRMBuscaVendedores = class(TForm)
    Panel1: TPanel;
    ImgMasculino: TImage;
    ImgFeminino: TImage;
    Label1: TLabel;
    ImgMasculinoON: TImage;
    ImgFundo: TImage;
    ScrollBox1: TScrollBox;
    ImgSair: TImage;
    DSVendedores: TDataSource;
    PanelPesquisa: TPanel;
    DBGrid1: TDBGrid;
    EdtPesquisa: TEdit;
    Image1: TImage;
    Image2: TImage;
    ImgListaVendedores: TImage;
    procedure FormCreate(Sender: TObject);
    procedure ImgSairClick(Sender: TObject);
    procedure CriaVendedores();
    procedure ImgMasculinoMouseEnter(Sender: TObject);
    procedure ImgMasculinoMouseLeave(Sender: TObject);
    procedure ImgMasculinoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure ImgListaVendedoresClick(Sender: TObject);
    procedure EdtPesquisaChange(Sender: TObject);
    procedure EdtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMBuscaVendedores: TFRMBuscaVendedores;

implementation

{$R *.dfm}

uses UDMPrincipal, UAddProduto;

procedure TFRMBuscaVendedores.CriaVendedores;
var
leftp, topp: integer;
vPng   : TpngImage;
vStream : TMemoryStream;
image:TImage;
begin
  leftp:=Trunc((17 * (100*Screen.Width)/1920)/100);;
  topp:=Trunc((30 * (100*Screen.Width)/1920)/100);;
  DMPrincipal.FDQVendedor.Close;
  DMPrincipal.FDQVendedor.SQL.Clear;
  DMPrincipal.FDQVendedor.SQL.Add('select * from vwtbpessoa');
  DMPrincipal.FDQVendedor.SQL.Add('left join vwtbpessoaempresa on PessoaIdentFkPessoaEmpresa = PessoaIdent');
  DMPrincipal.FDQVendedor.SQL.Add('where EmpresaIdentFkPessoaEmpresa =:PEmpresaIdent');
  DMPrincipal.FDQVendedor.ParamByName('PEmpresaIdent').AsInteger := DMPrincipal.IdentEmpresaSelecionada;
  DMPrincipal.FDQVendedor.Open();

  DMPrincipal.FDQVendedor.First;
  while not DMPrincipal.FDQVendedor.Eof do
  begin
    DMPrincipal.FDQPessoas.Close;
    DMPrincipal.FDQPessoas.SQL.Clear;
    DMPrincipal.FDQPessoas.SQL.Add('select * from vwtbpessoa where PessoaIdent = :Pvendedor');
    DMPrincipal.FDQPessoas.ParamByName('Pvendedor').AsLongword := DMPrincipal.FDQVendedorPessoaIdent.AsInteger;
    DMPrincipal.FDQPessoas.Open();

    with TImage.Create(ScrollBox1) do
    begin
      Parent := ScrollBox1;
      Left := leftp;
      Top := topp;
      Height:=Trunc((94 * (100*Screen.Width)/1920)/100);
      Width:=Trunc((133 * (100*Screen.Width)/1920)/100);
      Name := 'cod_' + DMprincipal.FDQVendedorPessoaIdent.AsString + '_teste';
      OnMouseEnter:=ImgMasculinoMouseEnter;
      OnMouseLeave:=ImgMasculinoMouseLeave;
      OnClick := ImgMasculinoClick;
      image:=TImage.Create(self);
      if (DMPrincipal.FDQPessoasPessoaSexo.AsString='M') or
        (DMPrincipal.FDQPessoasPessoaSexo.AsString='')then
      begin
        Picture:=ImgMasculino.Picture;
      end;
      if DMPrincipal.FDQPessoasPessoaSexo.AsString='F' then
      begin
       Picture:=ImgFeminino.Picture;
      end;
      Visible := True;
    end;
    with TLabel.Create(image) do
    begin
      Parent := ScrollBox1;
      AutoSize:=False;
      Font.Color:=clWhite;
      Font.Name:='karu';
      if Length(DMprincipal.FDQVendedorPessoaNome.AsString)>=18 then
      begin
        Font.Size:=6;
        Top := topp+Trunc((70 * (100*Screen.Width)/1920)/100);
      end else
      begin
        Font.Size:=9;
        Top := topp+Trunc((70 * (100*Screen.Width)/1920)/100);
      end;
      font.Style:=[fsbold];
      Left := leftp ;
      Height:=Trunc((94 * (100*Screen.Width)/1920)/100);
      Width:=Trunc((133 * (100*Screen.Width)/1920)/100);
      Alignment:=taCenter;
      Caption:=DMprincipal.FDQVendedorPessoaNome.AsString;
    end;
    DMPrincipal.FDQVendedor.Next;
    leftp := leftp + Trunc((142 * (100*Screen.Width)/1920)/100);

    if leftp > Trunc((445 * (100*Screen.Width)/1920)/100) then
    begin
      leftp := Trunc((17 * (100*Screen.Width)/1920)/100);
      topp := topp + Trunc((115 * (100*Screen.Width)/1920)/100);
    end;
  end;
end;

procedure TFRMBuscaVendedores.DBGrid1DblClick(Sender: TObject);
begin
 FRMAddProduto.EdtVendedor.Text := IntToStr(DMPrincipal.FDQVendedorPessoaEmpresaIdent.AsInteger);
 FRMAddProduto.LblVendedor.Caption := DMPrincipal.FDQVendedorPessoaDescr.AsString;
 ModalResult:=mrOk;
end;

procedure TFRMBuscaVendedores.EdtPesquisaChange(Sender: TObject);
var
stringText:string;
begin
 stringText:=EdtPesquisa.Text;
 DMPrincipal.FDQVendedor.Close;
 DMPrincipal.FDQVendedor.SQL.Clear;
 DMPrincipal.FDQVendedor.SQL.Add('select * from vwtbpessoa ');
 DMPrincipal.FDQVendedor.SQL.Add('left join vwtbpessoaempresa on PessoaIdentFkPessoaEmpresa = PessoaIdent');
 DMPrincipal.FDQVendedor.SQL.Add('where (PessoaDescr LIKE'+QuotedStr('%'+stringText+'%')+')');
 DMPrincipal.FDQVendedor.SQL.Add('and EmpresaIdentFkPessoaEmpresa =:PEmpresaIdent');
 DMPrincipal.FDQVendedor.ParamByName('PEmpresaIdent').AsInteger := DMPrincipal.IdentEmpresaSelecionada;
 DMPrincipal.FDQVendedor.Prepare;
 DMPrincipal.FDQVendedor.Open();
 end;


procedure TFRMBuscaVendedores.EdtPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key=#13 then
 begin
  DBGrid1.SetFocus;
 end;
end;

procedure TFRMBuscaVendedores.FormCreate(Sender: TObject);
var
vPng: TpngImage;
widthT,heightT:Integer;
begin
  ScaleBy(Screen.Width, 1920);
  vpng := TPngImage.Create;
  vPng.Assign(ImgFundo.Picture);
  widthT:=Trunc((601 * (100*Screen.Width)/1920)/100);
  heightT:=Trunc((665 * (100*Screen.Width)/1920)/100);
  DMPrincipal.SmoothResize(vPng,widthT,heightT);
  ImgFundo.Picture.Assign(vPng);
  vPng.Free;
  vpng := TPngImage.Create;
  vPng.Assign(ImgMasculino.Picture);
  widthT:=Trunc((133 * (100*Screen.Width)/1920)/100);
  heightT:=Trunc((94 * (100*Screen.Width)/1920)/100);
  DMPrincipal.SmoothResize(vPng,widthT,heightT);
  ImgMasculino.Picture.Assign(vPng);
  vPng.Free;
  vpng := TPngImage.Create;
  vPng.Assign(ImgFeminino.Picture);
  widthT:=Trunc((133 * (100*Screen.Width)/1920)/100);
  heightT:=Trunc((94 * (100*Screen.Width)/1920)/100);
  DMPrincipal.SmoothResize(vPng,widthT,heightT);
  ImgFeminino.Picture.Assign(vPng);
  vPng.Free;
  CriaVendedores;
end;
procedure TFRMBuscaVendedores.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#27 then
 begin
  FRMBuscaVendedores.Close;
 end
 else
 if key=#32 then
 begin
 if DBGrid1.Visible then
 begin
  FRMBuscaVendedores.Panel1.Visible := True;
  FRMBuscaVendedores.DBGrid1.Visible := False;
  FRMBuscaVendedores.PanelPesquisa.Visible := False;
 // FRMBuscaVendedores.ImgSelecione.Visible := False;
 end else
 begin
  FRMBuscaVendedores.Panel1.Visible := False;
  FRMBuscaVendedores.DBGrid1.Visible := True;
  FRMBuscaVendedores.PanelPesquisa.Visible := True;
 // FRMBuscaVendedores.ImgSelecione.Visible := True;
 end;

 end;
  if key=#13 then
 begin
   ModalResult:=mrOk;
   FRMAddProduto.EdtVendedor.Text := IntToStr(DMPrincipal.FDQVendedorPessoaEmpresaIdent.AsInteger);
   FRMAddProduto.LblVendedor.Caption := DMPrincipal.FDQVendedorPessoaDescr.AsString;
   ModalResult:=mrOk;
 end;
end;

procedure TFRMBuscaVendedores.FormMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  with ScrollBox1.VertScrollBar do
  begin
    if (Position <= (Range - Increment)) then
      Position := Position + Increment
    else
      Position := Range - Increment;
  end;
end;

procedure TFRMBuscaVendedores.FormMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  with ScrollBox1.VertScrollBar do
  begin
    if (Position >= Increment) then
      Position := Position - Increment
    else
      Position := 0;
  end;
end;

procedure TFRMBuscaVendedores.FormShow(Sender: TObject);
begin
if PanelPesquisa.Visible then
  begin
    EdtPesquisa.SetFocus;
  end;
end;

procedure TFRMBuscaVendedores.ImgListaVendedoresClick(Sender: TObject);
begin
  FRMBuscaVendedores.Panel1.Visible := False;
  FRMBuscaVendedores.DBGrid1.Visible := True;
  FRMBuscaVendedores.PanelPesquisa.Visible := True;
end;

procedure TFRMBuscaVendedores.ImgMasculinoClick(Sender: TObject);
var
imgselecionada:TImage;
nomeComponente:string;
begin
  imgselecionada:= (sender as TImage);
  nomeComponente:=imgselecionada.Name;
  DMPrincipal.adicionaVendedor(nomeComponente);
end;

procedure TFRMBuscaVendedores.ImgMasculinoMouseEnter(Sender: TObject);
var
imgselecionada:TImage;
image:TImage;
labelt:TLabel;
begin
  imgselecionada:= (sender as TImage);
  ImgMasculinoON.Height:=imgselecionada.Height;
  ImgMasculinoON.Width:=imgselecionada.Width;
  ImgMasculinoON.Top:=imgselecionada.Top;
  ImgMasculinoON.Left:=imgselecionada.Left;
  ImgMasculinoON.Visible:=True;
end;

procedure TFRMBuscaVendedores.ImgMasculinoMouseLeave(Sender: TObject);
begin
 ImgMasculinoON.Visible:=false;
end;

procedure TFRMBuscaVendedores.ImgSairClick(Sender: TObject);
begin
 FRMBuscaVendedores.Close;
end;

end.
