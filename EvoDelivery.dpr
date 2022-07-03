
program EvoDelivery;

uses
  Vcl.Forms,
  Ulogin in 'Ulogin.pas' {FRMloginDelivery},
  UTelaInicial in 'UTelaInicial.pas' {FRMTelaInicial},
  Uabertura in 'Uabertura.pas' {FRMabertura},
  Ufechamento in 'Ufechamento.pas' {FRMfechamento},
  UReinprimirFechamento in 'UReinprimirFechamento.pas' {FRMreinprimirFechamento},
  Usangria in 'Usangria.pas' {FRMsangria},
  Usuprimento in 'Usuprimento.pas' {FRMsuprimento},
  Umenu in 'Umenu.pas' {FRMmenu},
  UmenuGeral in 'UmenuGeral.pas' {FRMmenuGeral},
  UDMPrincipal in 'UDMPrincipal.pas' {DMPrincipal: TDataModule},
  UNovoDelivery in 'UNovoDelivery.pas' {FRMNovoDelivery},
  UMessageDlg in '..\..\..\Framework\EVO.MessageDlg\UMessageDlg.pas' {EvoMessageDlg},
  USelecionaEmpresa in 'USelecionaEmpresa.pas' {FRMSelecionaEmpresa},
  UCadastroCliente in 'UCadastroCliente.pas' {FRMCadastroCliente},
  UAddProduto in 'UAddProduto.pas' {FRMAddProduto},
  UBuscaVendedor in 'UBuscaVendedor.pas' {FRMBuscaVendedores},
  UBuscaProduto in 'UBuscaProduto.pas' {FRMBuscaProdutos},
  UConfig in 'UConfig.pas' {FRMConfig},
  UCadImpressoras in 'UCadImpressoras.pas' {FRMCadImpressoras},
  USelecionaTipoEntrega in 'USelecionaTipoEntrega.pas' {FRMSelecionaTipoEntrega},
  USelecionaEntregador in 'USelecionaEntregador.pas' {FRMSelecionaEntregador},
  UDetalhePedido in 'UDetalhePedido.pas' {FRMDetalhePedido},
  UPagamento in 'UPagamento.pas' {FRMPagamento},
  USelecionaObservacao in 'USelecionaObservacao.pas' {FrmSelecionaObservacao},
  Winapi.Windows;

{$R *.res}
var
  lHandle: Thandle;


begin
  lHandle := FindWindow('TFRMLoginDelivery',nil);
  if lHandle<>0 then
  begin
    TEvoMessageDlg.Mensagem('Uma instância do sistema já está'+#13+' em execução!','','C',[mbOk]);
    if not ISWindowVisible(lHandle) then
    begin
      ShowWindow (lHandle, SW_RESTORE);
      SetForegroundWindow(lHandle);
      Application.Terminate;
    end;
  end else
  begin
    Application.Initialize;
    Application.CreateForm(TFRMloginDelivery, FRMloginDelivery);
    Application.CreateForm(TDMPrincipal, DMPrincipal);
    Application.CreateForm(TEvoMessageDlg, EvoMessageDlg);
    Application.CreateForm(TEvoMessageDlg, EvoMessageDlg);
    Application.CreateForm(TFRMTelaInicial, FRMTelaInicial);
    Application.Run;
  end;
end.
