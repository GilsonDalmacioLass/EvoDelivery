unit USelecionaTipoEntrega;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TFRMSelecionaTipoEntrega = class(TForm)
    PEntrega: TPanel;
    PRetirarBalcao: TPanel;
    PCabecalho: TPanel;
    PCabecalho1: TPanel;
    procedure PRetirarBalcaoClick(Sender: TObject);
    procedure PEntregaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMSelecionaTipoEntrega: TFRMSelecionaTipoEntrega;

implementation

{$R *.dfm}

uses UNovoDelivery, USelecionaEntregador, UDMPrincipal;

procedure TFRMSelecionaTipoEntrega.FormCreate(Sender: TObject);
begin
  FRMSelecionaTipoEntrega.Color := DMPrincipal.HexToTColor('c0bebe',0);
  PCabecalho.Color := DMPrincipal.HexToTColor('3e3e3e',0);
  PCabecalho1.Color := DMPrincipal.HexToTColor('8e8e8e',0);
  PEntrega.Color := DMPrincipal.HexToTColor('1993ee',0);
  PRetirarBalcao.Color := DMPrincipal.HexToTColor('d78e00',0);
end;

procedure TFRMSelecionaTipoEntrega.PEntregaClick(Sender: TObject);
begin
  FRMNovoDelivery.Entrega := False;
  FRMSelecionaEntregador := TFRMSelecionaEntregador.Create(Self);
  FRMSelecionaEntregador.ShowModal;
end;

procedure TFRMSelecionaTipoEntrega.PRetirarBalcaoClick(Sender: TObject);
begin
  FRMNovoDelivery.Entrega := False;
  FRMNovoDelivery.HabilitaTipoRecebimento(0,'');
  FRMSelecionaTipoEntrega.Close;
end;

end.
