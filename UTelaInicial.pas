unit UTelaInicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.ComCtrls, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  TFRMTelaInicial = class(TForm)
    ImgFundo: TImage;
    ImgFechar: TImage;
    PFundoGrid: TPanel;
    ImgNovo: TImage;
    ImgMenu: TImage;
    FDQDelivery: TFDQuery;
    DataSource1: TDataSource;
    FDQDeliveryCódigo: TFDAutoIncField;
    FDQDeliveryData: TDateTimeField;
    FDQDeliveryCliente: TStringField;
    FDQDeliveryBairro: TStringField;
    FDQDeliveryValor: TBCDField;
    FDQDeliveryIdStatus: TIntegerField;
    FDQDeliveryStatus: TStringField;
    FDQDeliveryEntregador: TStringField;
    DBGrid1: TDBGrid;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    ImgInvisibleCancel: TImage;
    PNotificationEntrega: TPanel;
    TimerEntrega: TTimer;
    FDQTimerEntrega: TFDQuery;
    FDQTimerEntregaDeliveryIdent: TFDAutoIncField;
    PNotificationConcluido: TPanel;
    TimerConcluido: TTimer;
    FDQTimerConcluido: TFDQuery;
    FDAutoIncField1: TFDAutoIncField;
    PMenulateral: TPanel;
    procedure FormShow(Sender: TObject);
    procedure ImgFecharClick(Sender: TObject);
    procedure CriaItens;
    procedure ImgNovoClick(Sender: TObject);
    procedure ImgMenuClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure MakeRounded(Control: TWinControl);
    procedure FormCreate(Sender: TObject);
    procedure TimerEntregaTimer(Sender: TObject);
    procedure AtualizaNotificationEntrega;
    procedure AtualizaNotificationConcluido;
    procedure TimerConcluidoTimer(Sender: TObject);
    procedure Image6Click(Sender: TObject);
  private
    Filtro: Boolean;
    procedure FiltrarPorStatus(status:integer);
    procedure IsExistsRecords;
  public
    { Public declarations }
  end;

var
  FRMTelaInicial: TFRMTelaInicial;

implementation

{$R *.dfm}

uses UDMPrincipal, UNovoDelivery, UmenuGeral, UDetalhePedido, Ulogin;

procedure TFRMTelaInicial.AtualizaNotificationConcluido;
begin
  FDQTimerConcluido.Close;
  FDQTimerConcluido.Open();
  if FDQTimerConcluido.RecordCount > 0 then
  begin
    PNotificationConcluido.Visible := True;
    PNotificationConcluido.Caption := IntToStr(FDQTimerConcluido.RecordCount);
  end else
  begin
    if PNotificationConcluido.Visible then
      PNotificationConcluido.Visible := False;
  end;
end;

procedure TFRMTelaInicial.AtualizaNotificationEntrega;
begin
  FDQTimerEntrega.Close;
  FDQTimerEntrega.Open();
  if FDQTimerEntrega.RecordCount > 0 then
  begin
    PNotificationEntrega.Visible := True;
    PNotificationEntrega.Caption := IntToStr(FDQTimerEntrega.RecordCount);
  end else
  begin
    if PNotificationEntrega.Visible then
      PNotificationEntrega.Visible := False;
  end;
end;

procedure TFRMTelaInicial.CriaItens;
var
lFundo: TPanel;
begin
  //
end;

procedure TFRMTelaInicial.DBGrid1DblClick(Sender: TObject);
begin
  FRMDetalhePedido := TFRMDetalhePedido.Create(Self);
  FRMDetalhePedido.DeliveryIdent := FDQDeliveryCódigo.AsInteger;
  FRMDetalhePedido.ShowModal;
end;

procedure TFRMTelaInicial.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  DBGrid1.Canvas.Font.Color := clWhite;
  if  (gdSelected in State) or (gdFocused in State)  then
  begin
    if FDQDeliveryIdStatus.AsInteger = 1 then
    begin
      Dbgrid1.Canvas.Brush.Color := DMPrincipal.HexToTColor('454545',50);
    end else
    begin
      if FDQDeliveryIdStatus.AsInteger = 2 then
      begin
        Dbgrid1.Canvas.Brush.Color := DMPrincipal.HexToTColor('8f00a4',50);
      end else
      begin
        if FDQDeliveryIdStatus.AsInteger = 3 then
        begin
          if not Filtro then
          begin
            Dbgrid1.Canvas.Brush.Color := DMPrincipal.HexToTColor('d78e00',50);
            //DBGrid1.Canvas.Font.Color := DMPrincipal.HexToTColor('c02b2b',0);
          end else
          begin
            Dbgrid1.Canvas.Brush.Color := DMPrincipal.HexToTColor('c02b2b',50);
          end;
        end else
        begin
          if FDQDeliveryIdStatus.AsInteger = 4 then
          begin
            Dbgrid1.Canvas.Brush.Color := DMPrincipal.HexToTColor('d78e00',50);
          end else
          begin
            if FDQDeliveryIdStatus.AsInteger = 5 then
            begin
              if not Filtro then
              begin
                Dbgrid1.Canvas.Brush.Color := DMPrincipal.HexToTColor('42b72a',50);
                //DBGrid1.Canvas.Font.Color := DMPrincipal.HexToTColor('c02b2b',0);
              end else
              begin
                Dbgrid1.Canvas.Brush.Color := DMPrincipal.HexToTColor('c02b2b',50);
              end;
            end else
            begin
              if FDQDeliveryIdStatus.AsInteger = 6 then
              begin
                Dbgrid1.Canvas.Brush.Color := DMPrincipal.HexToTColor('42b72a',50);
              end else
              begin
                if FDQDeliveryIdStatus.AsInteger = 7 then
                begin
                 Dbgrid1.Canvas.Brush.Color := DMPrincipal.HexToTColor('c02b2b',0);;
                end;
              end;
            end;
          end;
        end;
      end;
    end;
  end else
  begin
     if FDQDeliveryIdStatus.AsInteger = 1 then
    begin
      Dbgrid1.Canvas.Brush.Color := DMPrincipal.HexToTColor('454545',0);
    end else
    begin
      if FDQDeliveryIdStatus.AsInteger = 2 then
      begin
        Dbgrid1.Canvas.Brush.Color := DMPrincipal.HexToTColor('8f00a4',0);
      end else
      begin
        if FDQDeliveryIdStatus.AsInteger = 3 then
        begin
          if not Filtro then
          begin
            Dbgrid1.Canvas.Brush.Color := DMPrincipal.HexToTColor('d78e00',0);
          end else
          begin
            Dbgrid1.Canvas.Brush.Color := DMPrincipal.HexToTColor('c02b2b',0);
          end;
        end else
        begin
          if FDQDeliveryIdStatus.AsInteger = 4 then
          begin
            Dbgrid1.Canvas.Brush.Color := DMPrincipal.HexToTColor('d78e00',0);
          end else
          begin
            if FDQDeliveryIdStatus.AsInteger = 5 then
            begin
              if not Filtro then
              begin
                Dbgrid1.Canvas.Brush.Color := DMPrincipal.HexToTColor('42b72a',0);
              end else
              begin
                Dbgrid1.Canvas.Brush.Color := DMPrincipal.HexToTColor('c02b2b',0);
              end;
            end else
            begin
              if FDQDeliveryIdStatus.AsInteger = 6 then
              begin
                Dbgrid1.Canvas.Brush.Color := DMPrincipal.HexToTColor('42b72a',50);
              end else
              begin
                if FDQDeliveryIdStatus.AsInteger = 7 then
                begin
                 Dbgrid1.Canvas.Brush.Color := DMPrincipal.HexToTColor('c02b2b',50);;
                end;
              end;
            end;
          end;
        end;
      end;
    end;
  end;

  DBGrid1.Canvas.FillRect(Rect);
  Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
end;

procedure TFRMTelaInicial.FiltrarPorStatus(status: integer);
begin
  FDQDelivery.Close;
  FDQDelivery.SQL.Clear;
  FDQDelivery.SQL.Add(
    ' SELECT                                                  ' +
    '     DeliveryIdent as Código,                            ' +
    '     DeliveryDataSolicitacao as Data,                    ' +
    '     a.PessoaNome as Cliente,                            ' +
    '     CEPBairro as Bairro,                                ' +
    '     DeliveryValorProdutos as Valor,                     ' +
    '     DeliveryStatusIdentFkDeliveryStatus as IdStatus,    ' +
    '     DeliveryStatusDescricao as Status,                  ' +
    '     c.PessoaNome as Entregador                          ' +
    ' FROM tbdelivery                                         ' +
    '   LEFT JOIN tbdeliveryStatus ON DeliveryStatusIdentFkDeliveryStatus = DeliveryStatusIdent  ' +
    '   LEFT JOIN tbpessoaempresa ON PessoaIdentFkDeliveryCliente = PessoaEmpresaIdent           ' +
    '   LEFT JOIN tbpessoa a ON PessoaIdentFkPessoaEmpresa = a.PessoaIdent                       ' +
    '   LEFT JOIN tbpessoaempresa b ON PessoaIdentFkDeliveryEntregador = b.PessoaEmpresaIdent    ' +
    '   LEFT JOIN tbpessoa c ON b.PessoaIdentFkPessoaEmpresa = c.PessoaIdent                     ' +
    '   LEFT JOIN tbcep ON CEPIdent = a.CEPIdentFkPessoa                                         '
    );

  if status >0 then
  begin
    if (status = 3 ) or (status = 4) then
    begin
     FDQDelivery.SQL.Add(' WHERE (DeliveryStatusIdentFkDeliveryStatus = 3) ');
     FDQDelivery.SQL.Add(' OR (DeliveryStatusIdentFkDeliveryStatus = 4) ');
    end else
    begin
      if (status = 5 ) or (status = 6) then
      begin
       FDQDelivery.SQL.Add(' WHERE (DeliveryStatusIdentFkDeliveryStatus = 5) ');
       FDQDelivery.SQL.Add(' OR (DeliveryStatusIdentFkDeliveryStatus = 6) ');
      end else
      begin
        if (status = 7) then
        begin
           FDQDelivery.SQL.Add(' WHERE (DeliveryStatusIdentFkDeliveryStatus = 7) ');
        end else
        begin
          FDQDelivery.SQL.Add(' WHERE DeliveryStatusIdentFkDeliveryStatus = :PIdentStatus ');
          FDQDelivery.ParamByName('PIdentStatus').AsInteger := Status;
        end;
      end;
    end;
    Filtro := True;
  end else
  begin
    Filtro := False;
  end;
  FDQDelivery.Open();
//  if status <> 7 then
//    ImgInvisibleCancel.Visible := Filtro;
  IsExistsRecords;
end;

procedure TFRMTelaInicial.FormCreate(Sender: TObject);
begin
  PNotificationEntrega.Color := DMPrincipal.HexToTColor('d31a1a',0);
  MakeRounded(PNotificationEntrega);
  PNotificationConcluido.Color := DMPrincipal.HexToTColor('d31a1a',0);
  MakeRounded(PNotificationConcluido);
  PMenulateral.Color := DMPrincipal.HexToTColor('8e8e8e',0);
end;

procedure TFRMTelaInicial.FormShow(Sender: TObject);
var
  vPng: TpngImage;
  widthT, heightT: Integer;
begin
  ScaleBy(Screen.Width, 1920);
  // (Tamannho atual da tela, Tamanho para qual o sistema foi feito)
  Height:=Screen.Height;
  vPng := TpngImage.Create;
  vPng.Assign(ImgFundo.Picture);
  widthT := Trunc((1920 * (100 * Screen.Width) / 1920) / 100);
  heightT := Trunc((1080 * (100 * Screen.Width) / 1920) / 100);
  DMPrincipal.SmoothResize(vPng, widthT, heightT);
  ImgFundo.Picture.Assign(vPng);
  vPng.Free;
  FiltrarPorStatus(0);
  FRMTelaInicial.AtualizaNotificationEntrega;
  FRMTelaInicial.AtualizaNotificationConcluido;
  PFundoGrid.Height := self.Height -50;
  DBGrid1.Height := self.Height -50;
end;

procedure TFRMTelaInicial.Image1Click(Sender: TObject);
begin
  FiltrarPorStatus(0);
end;

procedure TFRMTelaInicial.Image2Click(Sender: TObject);
begin
 FiltrarPorStatus(1);
end;

procedure TFRMTelaInicial.Image3Click(Sender: TObject);
begin
  FiltrarPorStatus(2);
end;

procedure TFRMTelaInicial.Image4Click(Sender: TObject);
begin
  FiltrarPorStatus(3);
end;

procedure TFRMTelaInicial.Image5Click(Sender: TObject);
begin
  FiltrarPorStatus(5);
end;

procedure TFRMTelaInicial.Image6Click(Sender: TObject);
begin
  FiltrarPorStatus(7);
end;

procedure TFRMTelaInicial.ImgFecharClick(Sender: TObject);
begin
  FRMloginDelivery.Close;
  FRMTelaInicial.Close;
  Application.Terminate;
end;

procedure TFRMTelaInicial.ImgMenuClick(Sender: TObject);
begin
  FRMmenuGeral := TFRMmenuGeral.Create(Self);
  FRMmenuGeral.ShowModal;
end;

procedure TFRMTelaInicial.ImgNovoClick(Sender: TObject);
begin
  FRMNovoDelivery:= TFRMNovoDelivery.Create(self);
  FRMNovoDelivery.ShowModal;
  FRMTelaInicial.SetFocus;
end;

procedure TFRMTelaInicial.IsExistsRecords;
begin
  if FDQDelivery.RecordCount <1 then
  begin
    if Filtro then
    begin
      PFundoGrid.Caption := 'Não existem pedidos para a categoria desejada! ';
    end else
      PFundoGrid.Caption := 'Não existem pedidos!';
    DBGrid1.Visible := False;
  end else
    DBGrid1.Visible := True;
end;

procedure TFRMTelaInicial.MakeRounded(Control: TWinControl);
var
R: TRect;
Rgn: HRGN;
begin
with Control do
begin
 R := ClientRect;
 rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 10, 10);
 Perform(EM_GETRECT, 0, lParam(@r));
 InflateRect(r, - 2, - 2);
 Perform(EM_SETRECTNP, 0, lParam(@r));
 SetWindowRgn(Handle, rgn, True);
 Invalidate;
end;
end;

procedure TFRMTelaInicial.TimerConcluidoTimer(Sender: TObject);
begin
  TimerConcluido.Enabled := False;
  AtualizaNotificationConcluido;
  TimerConcluido.Enabled := True;
end;

procedure TFRMTelaInicial.TimerEntregaTimer(Sender: TObject);
begin
  TimerEntrega.Enabled := False;
  AtualizaNotificationEntrega;
  TimerEntrega.Enabled := True;
end;

end.
