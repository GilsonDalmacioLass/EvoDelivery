unit UDMPrincipal;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Imaging.pngimage,System.MaskUtils,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, System.Generics.Collections, Vcl.dialogs,
  Vcl.StdCtrls, Vcl.controls, frxClass, frxDBSet, System.UITypes, frxBarcode;

type
   TPermissoes = class(TObject)
    codusuario: Integer;
    nomeUsuario: string;
    multiEmpresa: Boolean;
    abrirPDV: Boolean;
    abrirCaixa: Boolean;
    mudaValorUni: Boolean;
    mudaQtd: Boolean;
    fazSangria: Boolean;
    fazSuprimento: Boolean;
    fechaCaixa: Boolean;
    fechaPDV: Boolean;
    fazDevolucao: Boolean;

  end;

  Tadicional = class(TObject)
    id_mesaAdicional: Integer;
    id_adicional_pk: Integer;
    cod_adicional: string;
    nome_adicional: string;
    valor_adicional: Currency;
    valorTotal_adicional: Currency;
    qtd_adicional: Currency;
    id_produto_fk: Integer;
    data_pedido: TDateTime;

  end;

  TAdicionalList = class(TList<Tadicional>)

  end;

  TProduto = class(TObject)
    id_produto_pk: Integer;
    cod_produto: string;
    nome_produto: string;
    valor_produto: Currency;
    unidade_produto: string;
    qtd_produto: Currency;
    valor_Total_produto: Currency;
    id_mesaProduto: Integer;
    data_pedido: TDateTime;


  end;

  TProdutosList = class(TList<TProduto>)

  end;


  TDMPrincipal = class(TDataModule)
    FDQProdutos: TFDQuery;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDQUnidade: TFDQuery;
    FDQUnidadeUNI_id_pk: TFDAutoIncField;
    FDQUnidadeUNI_nome: TStringField;
    FDQUnidadeUNI_abreviado: TStringField;
    FDQUnidadeUNI_pesavel: TBooleanField;
    FDQPessoas: TFDQuery;
    FDQTipoRecebimento: TFDQuery;
    FDQExecSQL: TFDQuery;
    FDQSecao: TFDQuery;
    FDQImpressoras: TFDQuery;
    FDQPrinted: TFDQuery;
    FDQPrintedmprod_id_pk: TFDAutoIncField;
    FDQPrintedmprod_prod_fk: TIntegerField;
    FDQPrintedmprod_mesa_fk: TIntegerField;
    FDQPrintedmprod_id: TIntegerField;
    FDQPrintedmprod_qtd: TBCDField;
    FDQPrintedmprod_preco: TBCDField;
    FDQPrintedmprod_total: TBCDField;
    FDQPrintedmprod_printed: TShortintField;
    FDQPrintedmprod_observacao: TStringField;
    FDQPrintedmprod_prod_cod: TLargeintField;
    FDQPrintedmprod_order_id: TIntegerField;
    FDQPrintedmprod_garcon_usuario_id: TIntegerField;
    FDQPrintedmprod_garcon_usuario_nome: TStringField;
    FDQPrintedmprod_garcon_taxa: TBCDField;
    FDQPrintedmprod_data: TDateTimeField;
    FDQPrintedmprod_desconto: TBCDField;
    FDQPrintedPROD_id_pk: TLongWordField;
    FDQPrintedPROD_cod: TLargeintField;
    FDQPrintedPROD_cod_interno: TStringField;
    FDQPrintedPROD_status: TStringField;
    FDQPrintedPROD_tipo: TStringField;
    FDQPrintedPROD_descricao: TStringField;
    FDQPrintedPROD_secao_fk: TLongWordField;
    FDQPrintedPROD_fornecedor_fk: TLongWordField;
    FDQPrintedPROD_custo: TBCDField;
    FDQPrintedPROD_outrosvalores: TBCDField;
    FDQPrintedPROD_custo_final: TBCDField;
    FDQPrintedPROD_qtd_estoque: TBCDField;
    FDQPrintedPROD_observacoes: TStringField;
    FDQPrintedPROD_preco1: TBCDField;
    FDQPrintedPROD_preco2: TBCDField;
    FDQPrintedPROD_preco3: TBCDField;
    FDQPrintedPROD_preco4: TBCDField;
    FDQPrintedPROD_margem1: TBCDField;
    FDQPrintedPROD_margem2: TBCDField;
    FDQPrintedPROD_margem3: TBCDField;
    FDQPrintedPROD_margem4: TBCDField;
    FDQPrintedPROD_grade: TBooleanField;
    FDQPrintedPROD_master: TBooleanField;
    FDQPrintedPROD_foto: TBlobField;
    FDQPrintedPROD_foto_icon: TBlobField;
    FDQPrintedPROD_csosn: TIntegerField;
    FDQPrintedPROD_cfop: TIntegerField;
    FDQPrintedPROD_ncm_fk: TLongWordField;
    FDQPrintedPROD_adicional: TBooleanField;
    FDQPrintedPROD_unidade_fk: TLongWordField;
    FDQPrintedPROD_composto: TBooleanField;
    FDQPrintedPROD_producao: TBooleanField;
    FDQPrintedPROD_validade: TIntegerField;
    FDQPrintedPROD_balanca: TBooleanField;
    FDQPrintedPROD_impvalidade: TBooleanField;
    FDQPrintedPROD_impembalagem: TBooleanField;
    FDQPrintedPROD_cest: TStringField;
    FDQPrintedPROD_aliq_pis: TBCDField;
    FDQPrintedPROD_aliq_cof: TBCDField;
    FDQPrintedPROD_pis_cst_ent: TStringField;
    FDQPrintedPROD_pis_cst_saida: TStringField;
    FDQPrintedPROD_cof_cst_ent: TStringField;
    FDQPrintedPROD_cof_cst_saida: TStringField;
    FDQPrintedPROD_tipo_piscofins: TStringField;
    FDQPrintedPROD_outras_despesas: TBCDField;
    FDQPrintedPROD_pedir_qtd: TBooleanField;
    FDQPrintedPROD_combustivel: TBooleanField;
    FDQPrintedPROD_codigoanp: TStringField;
    FDQPrintedPROD_impressora1_fk: TIntegerField;
    FDQPrintedPROD_impressora2_fk: TIntegerField;
    FDQPrintedPROD_hasgtin: TBooleanField;
    FDQPrintedPROD_lastchange: TSQLTimeStampField;
    FDQPrintedPROD_tickets: TBooleanField;
    FDQPrintedPROD_principal: TBooleanField;
    FDQPrintedPROD_obs_microterminal: TBooleanField;
    FDQVerificaImpressoras: TFDQuery;
    FDQVerificaImpressorasmprod_id_pk: TFDAutoIncField;
    FDQVerificaImpressorasmprod_prod_fk: TIntegerField;
    FDQVerificaImpressorasmprod_mesa_fk: TIntegerField;
    FDQVerificaImpressorasmprod_id: TIntegerField;
    FDQVerificaImpressorasmprod_qtd: TBCDField;
    FDQVerificaImpressorasmprod_preco: TBCDField;
    FDQVerificaImpressorasmprod_total: TBCDField;
    FDQVerificaImpressorasmprod_printed: TShortintField;
    FDQVerificaImpressorasmprod_observacao: TStringField;
    FDQVerificaImpressorasmprod_prod_cod: TLargeintField;
    FDQVerificaImpressorasmprod_order_id: TIntegerField;
    FDQVerificaImpressorasmprod_garcon_usuario_id: TIntegerField;
    FDQVerificaImpressorasmprod_garcon_usuario_nome: TStringField;
    FDQVerificaImpressorasmprod_garcon_taxa: TBCDField;
    FDQVerificaImpressorasmprod_data: TDateTimeField;
    FDQVerificaImpressorasmprod_desconto: TBCDField;
    FDQVerificaImpressorasPROD_id_pk: TLongWordField;
    FDQVerificaImpressorasPROD_cod: TLargeintField;
    FDQVerificaImpressorasPROD_cod_interno: TStringField;
    FDQVerificaImpressorasPROD_status: TStringField;
    FDQVerificaImpressorasPROD_tipo: TStringField;
    FDQVerificaImpressorasPROD_descricao: TStringField;
    FDQVerificaImpressorasPROD_secao_fk: TLongWordField;
    FDQVerificaImpressorasPROD_fornecedor_fk: TLongWordField;
    FDQVerificaImpressorasPROD_custo: TBCDField;
    FDQVerificaImpressorasPROD_outrosvalores: TBCDField;
    FDQVerificaImpressorasPROD_custo_final: TBCDField;
    FDQVerificaImpressorasPROD_qtd_estoque: TBCDField;
    FDQVerificaImpressorasPROD_observacoes: TStringField;
    FDQVerificaImpressorasPROD_preco1: TBCDField;
    FDQVerificaImpressorasPROD_preco2: TBCDField;
    FDQVerificaImpressorasPROD_preco3: TBCDField;
    FDQVerificaImpressorasPROD_preco4: TBCDField;
    FDQVerificaImpressorasPROD_margem1: TBCDField;
    FDQVerificaImpressorasPROD_margem2: TBCDField;
    FDQVerificaImpressorasPROD_margem3: TBCDField;
    FDQVerificaImpressorasPROD_margem4: TBCDField;
    FDQVerificaImpressorasPROD_grade: TBooleanField;
    FDQVerificaImpressorasPROD_master: TBooleanField;
    FDQVerificaImpressorasPROD_foto: TBlobField;
    FDQVerificaImpressorasPROD_foto_icon: TBlobField;
    FDQVerificaImpressorasPROD_csosn: TIntegerField;
    FDQVerificaImpressorasPROD_cfop: TIntegerField;
    FDQVerificaImpressorasPROD_ncm_fk: TLongWordField;
    FDQVerificaImpressorasPROD_adicional: TBooleanField;
    FDQVerificaImpressorasPROD_unidade_fk: TLongWordField;
    FDQVerificaImpressorasPROD_composto: TBooleanField;
    FDQVerificaImpressorasPROD_producao: TBooleanField;
    FDQVerificaImpressorasPROD_validade: TIntegerField;
    FDQVerificaImpressorasPROD_balanca: TBooleanField;
    FDQVerificaImpressorasPROD_impvalidade: TBooleanField;
    FDQVerificaImpressorasPROD_impembalagem: TBooleanField;
    FDQVerificaImpressorasPROD_cest: TStringField;
    FDQVerificaImpressorasPROD_aliq_pis: TBCDField;
    FDQVerificaImpressorasPROD_aliq_cof: TBCDField;
    FDQVerificaImpressorasPROD_pis_cst_ent: TStringField;
    FDQVerificaImpressorasPROD_pis_cst_saida: TStringField;
    FDQVerificaImpressorasPROD_cof_cst_ent: TStringField;
    FDQVerificaImpressorasPROD_cof_cst_saida: TStringField;
    FDQVerificaImpressorasPROD_tipo_piscofins: TStringField;
    FDQVerificaImpressorasPROD_outras_despesas: TBCDField;
    FDQVerificaImpressorasPROD_pedir_qtd: TBooleanField;
    FDQVerificaImpressorasPROD_combustivel: TBooleanField;
    FDQVerificaImpressorasPROD_codigoanp: TStringField;
    FDQVerificaImpressorasPROD_impressora1_fk: TIntegerField;
    FDQVerificaImpressorasPROD_impressora2_fk: TIntegerField;
    FDQVerificaImpressorasPROD_hasgtin: TBooleanField;
    FDQVerificaImpressorasPROD_lastchange: TSQLTimeStampField;
    FDQVerificaImpressorasPROD_tickets: TBooleanField;
    FDQVerificaImpressorasPROD_principal: TBooleanField;
    FDQVerificaImpressorasPROD_obs_microterminal: TBooleanField;
    FDQVerificaImpressorasIMP_id_pk: TIntegerField;
    FDQVerificaImpressorasIMP_apelido: TStringField;
    FDQVerificaImpressorasIMP_nome: TStringField;
    FDQVerificaImpressorasIMP_terminal_1: TStringField;
    FDQVerificaImpressorasIMP_terminal_3: TStringField;
    FDQVerificaImpressorasIMP_terminal_: TStringField;
    FDQVerificaImpressorasIMP_id_pk_1: TIntegerField;
    FDQVerificaImpressorasIMP_apelido_1: TStringField;
    FDQVerificaImpressorasIMP_nome_1: TStringField;
    FDQVerificaImpressorasIMP_terminal_1_1: TStringField;
    FDQVerificaImpressorasIMP_terminal_3_1: TStringField;
    FDQVerificaImpressorasIMP_terminal__1: TStringField;
    FDQVerificaImpressorasIMP_impressora1: TStringField;
    FDQVerificaImpressorasIMP_id1: TIntegerField;
    FDQVerificaImpressorasIMP_apelido1: TStringField;
    FDQVerificaImpressorasIMP_impressora2: TStringField;
    FDQVerificaImpressorasIMP_apelido2: TStringField;
    FDQVerificaImpressorasIMP_id2: TIntegerField;
    FDQPedidos: TFDQuery;
    FDQPedidosId: TFDAutoIncField;
    FDQPedidoscod_mesa: TIntegerField;
    FDQPedidostexto_impressao: TMemoField;
    FDQPedidosimpresso: TBooleanField;
    FDQPedidosimpressora: TStringField;
    FDQpermissoes: TFDQuery;
    FDQpermissoesId: TFDAutoIncField;
    FDQpermissoesusuarioLogin: TStringField;
    FDQpermissoesusuarioSenha: TStringField;
    FDQpermissoesabrirCaixa: TBooleanField;
    FDQpermissoesfazSangria: TBooleanField;
    FDQpermissoesfazSuprimento: TBooleanField;
    FDQpermissoesfechaCaixa: TBooleanField;
    FDQpermissoesfechaPDV: TBooleanField;
    FDQpermissoesmudaValorUni: TBooleanField;
    FDQpermissoesmudaQtd: TBooleanField;
    FDQpermissoesabrirPDV: TBooleanField;
    FDQpermissoesid_EvoEmissor: TIntegerField;
    FDQpermissoesfazDevolucao: TBooleanField;
    FDQSecaoSEC_id_pk: TFDAutoIncField;
    FDQSecaoSEC_nome: TStringField;
    FDQSecaoSEC_descricao: TStringField;
    FDQSecaoSEC_timestamp: TSQLTimeStampField;
    FDQSecaoSEC_foto: TBlobField;
    FDQProducaoProdutos: TFDQuery;
    FDQRegistroEventos: TFDQuery;
    FDQRegistroEventosid: TFDAutoIncField;
    FDQRegistroEventoscod_evento: TIntegerField;
    FDQRegistroEventoscod_venda: TIntegerField;
    FDQRegistroEventosdata_evento: TDateTimeField;
    FDQRegistroEventosfundo_troco: TBCDField;
    FDQRegistroEventosnum_abetura: TIntegerField;
    FDQRegistroEventoscontroleCaixa: TBCDField;
    FDQRegistroEventosdesconto_total: TFloatField;
    FDQRegistroEventostroco_venda: TBCDField;
    FDQRegistroEventoscod_usuario: TIntegerField;
    FDQRegistroEventosreposnsavel_evento: TStringField;
    FDQRegistroEventosoperador_evento: TStringField;
    FDQRegistroEventoscod_cliente: TIntegerField;
    FDQRegistroEventoscpf_nfce: TStringField;
    FDQRegistroEventosufDestinario_nfce: TStringField;
    FDQRegistroEventospreVendaEmissor: TIntegerField;
    FDQRegistroEventosnumero_Nfce: TIntegerField;
    FDQRegistroEventoschave_acessoNfce: TStringField;
    FDQRegistroEventosnumero_autorizacao: TStringField;
    FDQRegistroEventosstatus_nfce: TStringField;
    FDQRegistroEventosxml_nfce: TBlobField;
    FDQRegistroEventosdata_nfce: TDateTimeField;
    FDQRegistroEventosmotivo_nfce: TStringField;
    FDQRegistroEventosrecibo_nfce: TStringField;
    FDQRegistroEventosprotocolo_nfce: TStringField;
    FDQRegistroEventoscodRetorno_nfce: TIntegerField;
    FDQRegistroEventosstatus_venda: TBooleanField;
    FDQRegistroEventosstatus_vendaDesc: TStringField;
    FDQRegistroEventosxml_cancelamento: TBlobField;
    FDQRegistroEventosprotocolo_cancelNfce: TStringField;
    FDQRegistroEventosdata_cancelNfce: TDateTimeField;
    FDQRegistroEventosmotivo_cancelNfce: TStringField;
    FDQRegistroEventoscodRetorno_cancelNfce: TIntegerField;
    FDQRegistroEventosExported: TBooleanField;
    FDQRegistroEventosLast_Export: TSQLTimeStampField;
    FDQRegistroEventossenha: TIntegerField;
    FDQcontroleCaixaultimo: TFDQuery;
    FDQcontroleCaixaultimoid: TFDAutoIncField;
    FDQcontroleCaixaultimocod_evento: TIntegerField;
    FDQcontroleCaixaultimodata_evento: TDateTimeField;
    FDQcontroleCaixaultimofundo_troco: TBCDField;
    FDQcontroleCaixaultimonum_abetura: TIntegerField;
    FDQcontroleCaixaultimocontroleCaixa: TBCDField;
    FDQcontroleCaixaultimoreposnsavel_evento: TStringField;
    FDQcontroleCaixaultimooperador_evento: TStringField;
    FDQcontroleCaixaultimocod_cliente: TIntegerField;
    FDQcontroleCaixaultimochave_acessoNfce: TStringField;
    FDQcontroleCaixaultimostatus_nfce: TStringField;
    FDQcontroleCaixaultimoxml_nfce: TBlobField;
    FDQcontroleCaixaultimodata_nfce: TDateTimeField;
    FDQcontroleCaixaultimodesconto_total: TFloatField;
    FDQcontroleCaixaultimocod_venda: TIntegerField;
    FDQcontroleCaixaultimostatus_venda: TBooleanField;
    FDQcontroleCaixaultimostatus_vendaDesc: TStringField;
    FDQcontroleCaixaultimotroco_venda: TBCDField;
    FDQcontroleCaixaultimoxml_cancelamento: TBlobField;
    FDQcontroleCaixaultimopreVendaEmissor: TIntegerField;
    FDQcontroleCaixaultimonumero_autorizacao: TStringField;
    FDQcontroleCaixaultimocod_usuario: TIntegerField;
    FDQcontroleCaixaultimonumero_Nfce: TIntegerField;
    FDQcontroleCaixaultimocpf_nfce: TStringField;
    FDQcontroleCaixaultimoufDestinario_nfce: TStringField;
    FDQcontroleCaixaultimomotivo_nfce: TStringField;
    FDQcontroleCaixaultimorecibo_nfce: TStringField;
    FDQcontroleCaixaultimoprotocolo_cancelNfce: TStringField;
    FDQcontroleCaixaultimodata_cancelNfce: TDateTimeField;
    FDQcontroleCaixaultimomotivo_cancelNfce: TStringField;
    FDQcontroleCaixaultimocodRetorno_cancelNfce: TIntegerField;
    FDQcontroleCaixaultimocodRetorno_nfce: TIntegerField;
    FDQcontroleCaixaultimoprotocolo_nfce: TStringField;
    FDQcontroleCaixaultimosenha: TIntegerField;
    FDQultimaVenda: TFDQuery;
    FDQultimaVendaId: TFDAutoIncField;
    FDQultimaVendacod_venda: TIntegerField;
    FDQultimaVendadata_venda: TDateTimeField;
    FDQultimaVendacod_produto: TStringField;
    FDQultimaVendanome_produto: TStringField;
    FDQultimaVendaqtd_produto: TFloatField;
    FDQultimaVendavalor_prod: TFloatField;
    FDQultimaVendavalor_total: TFloatField;
    FDQultimaVendacodigoCliente: TIntegerField;
    FDQTipoRecebimentoTREC_id_pk: TIntegerField;
    FDQTipoRecebimentoTREC_codigo: TIntegerField;
    FDQTipoRecebimentoTREC_descricao: TStringField;
    FDQTipoRecebimentoTREC_ativo: TStringField;
    FDQTipoRecebimentoTREC_categoriarecb_fk: TIntegerField;
    FDQTipoRecebimentoTREC_pessoa_fk: TIntegerField;
    FDQsenha: TFDQuery;
    FDQsenhasenha: TIntegerField;
    frxCaixa: TfrxReport;
    FDQRegistros: TFDQuery;
    FDQRegistrosid: TFDAutoIncField;
    FDQRegistroscod_evento: TIntegerField;
    FDQRegistroscod_venda: TIntegerField;
    FDQRegistrosdata_evento: TDateTimeField;
    FDQRegistrosfundo_troco: TBCDField;
    FDQRegistrosnum_abetura: TIntegerField;
    FDQRegistroscontroleCaixa: TBCDField;
    FDQRegistrosdesconto_total: TFloatField;
    FDQRegistrostroco_venda: TBCDField;
    FDQRegistroscod_usuario: TIntegerField;
    FDQRegistrosreposnsavel_evento: TStringField;
    FDQRegistrosoperador_evento: TStringField;
    FDQRegistroscod_cliente: TIntegerField;
    FDQRegistroscpf_nfce: TStringField;
    FDQRegistrosufDestinario_nfce: TStringField;
    FDQRegistrospreVendaEmissor: TIntegerField;
    FDQRegistrosnumero_Nfce: TIntegerField;
    FDQRegistroschave_acessoNfce: TStringField;
    FDQRegistrosnumero_autorizacao: TStringField;
    FDQRegistrosstatus_nfce: TStringField;
    FDQRegistrosxml_nfce: TBlobField;
    FDQRegistrosdata_nfce: TDateTimeField;
    FDQRegistrosmotivo_nfce: TStringField;
    FDQRegistrosrecibo_nfce: TStringField;
    FDQRegistrosprotocolo_nfce: TStringField;
    FDQRegistroscodRetorno_nfce: TIntegerField;
    FDQRegistrosstatus_venda: TBooleanField;
    FDQRegistrosstatus_vendaDesc: TStringField;
    FDQRegistrosxml_cancelamento: TBlobField;
    FDQRegistrosprotocolo_cancelNfce: TStringField;
    FDQRegistrosdata_cancelNfce: TDateTimeField;
    FDQRegistrosmotivo_cancelNfce: TStringField;
    FDQRegistroscodRetorno_cancelNfce: TIntegerField;
    FDQRegistrosExported: TBooleanField;
    FDQRegistrosLast_Export: TSQLTimeStampField;
    FDQConfiguracao: TFDQuery;
    FDQConfiguracaoId: TFDAutoIncField;
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
    FDQConfiguracaoqtd_multiplicacao: TIntegerField;
    FDQConfiguracaotipoListagem_vendas: TBooleanField;
    FDQConfiguracaotipoEmissao: TIntegerField;
    FDQConfiguracaoHabilitaImportacao: TBooleanField;
    FDQConfiguracaointegracaoOnline: TSQLTimeStampField;
    FDQConfiguracaointegracao: TStringField;
    FDQConfiguracaoimpressaoSenha: TBooleanField;
    FDQConfiguracaoprodutocomposto: TBooleanField;
    FDQambienteEmissao: TFDQuery;
    FDQambienteEmissaoId: TFDAutoIncField;
    FDQambienteEmissaonome_emissao: TStringField;
    FDQInfNota: TFDQuery;
    FDQInfNotaId: TFDAutoIncField;
    FDQInfNotaservidor_pdv: TStringField;
    FDQInfNotaservidor_novo: TStringField;
    FDQInfNotaporta_novo: TStringField;
    FDQInfNotalogin_novo: TStringField;
    FDQInfNotasenha_novo: TStringField;
    FDQInfNotanome_terminal: TStringField;
    FDQInfNotanumero_nfce: TIntegerField;
    FDQInfNotanumero_lote: TIntegerField;
    FDQInfNotanumeroSerie: TIntegerField;
    FDQInfNotamodoNfce: TStringField;
    FDQInfNotatipoListagem_vendas: TBooleanField;
    FDQInfNotaqtd_multiplicacao: TIntegerField;
    FDQFechamento: TFDQuery;
    FDQFechamentoId: TIntegerField;
    FDQFechamentocod_venda: TIntegerField;
    FDQFechamentodata_pagamento: TDateTimeField;
    FDQFechamentotipo_recebimento: TStringField;
    FDQFechamentovalor_recebido: TFloatField;
    FDQFechamentovalor_total: TFloatField;
    FDQFechamentonumabertura: TIntegerField;
    FDQFechamentocod_cliente: TIntegerField;
    FDQFechamentoTotal: TFloatField;
    FDQFechamentoid_1: TIntegerField;
    FDQFechamentocod_evento: TIntegerField;
    FDQFechamentocod_venda_1: TIntegerField;
    FDQFechamentodata_evento: TDateTimeField;
    FDQFechamentofundo_troco: TBCDField;
    FDQFechamentonum_abetura: TIntegerField;
    FDQFechamentocontroleCaixa: TBCDField;
    FDQFechamentodesconto_total: TFloatField;
    FDQFechamentotroco_venda: TBCDField;
    FDQFechamentocod_usuario: TIntegerField;
    FDQFechamentoreposnsavel_evento: TStringField;
    FDQFechamentooperador_evento: TStringField;
    FDQFechamentocod_cliente_1: TIntegerField;
    FDQFechamentocpf_nfce: TStringField;
    FDQFechamentoufDestinario_nfce: TStringField;
    FDQFechamentopreVendaEmissor: TIntegerField;
    FDQFechamentonumero_Nfce: TIntegerField;
    FDQFechamentochave_acessoNfce: TStringField;
    FDQFechamentonumero_autorizacao: TStringField;
    FDQFechamentostatus_nfce: TStringField;
    FDQFechamentoxml_nfce: TBlobField;
    FDQFechamentodata_nfce: TDateTimeField;
    FDQFechamentomotivo_nfce: TStringField;
    FDQFechamentorecibo_nfce: TStringField;
    FDQFechamentoprotocolo_nfce: TStringField;
    FDQFechamentocodRetorno_nfce: TIntegerField;
    FDQFechamentostatus_venda: TBooleanField;
    FDQFechamentostatus_vendaDesc: TStringField;
    FDQFechamentoxml_cancelamento: TBlobField;
    FDQFechamentoprotocolo_cancelNfce: TStringField;
    FDQFechamentodata_cancelNfce: TDateTimeField;
    FDQFechamentomotivo_cancelNfce: TStringField;
    FDQFechamentocodRetorno_cancelNfce: TIntegerField;
    FDQFechamentoExported: TBooleanField;
    FDQFechamentoLast_Export: TSQLTimeStampField;
    FDQSangria: TFDQuery;
    FDQSangriaid: TFDAutoIncField;
    FDQSangriacod_evento: TIntegerField;
    FDQSangriadata_evento: TDateTimeField;
    FDQSangriafundo_troco: TBCDField;
    FDQSangrianum_abetura: TIntegerField;
    FDQSangriacontroleCaixa: TBCDField;
    FDQSangriareposnsavel_evento: TStringField;
    FDQSangriaoperador_evento: TStringField;
    FDQSangriatotal_sangria: TFMTBCDField;
    FDQSuprimento: TFDQuery;
    FDQSuprimentoid: TFDAutoIncField;
    FDQSuprimentocod_evento: TIntegerField;
    FDQSuprimentodata_evento: TDateTimeField;
    FDQSuprimentofundo_troco: TBCDField;
    FDQSuprimentonum_abetura: TIntegerField;
    FDQSuprimentocontroleCaixa: TBCDField;
    FDQSuprimentoreposnsavel_evento: TStringField;
    FDQSuprimentooperador_evento: TStringField;
    FDQSuprimentototal_suprimento: TFMTBCDField;
    FDQfundo: TFDQuery;
    FDQfundoid: TFDAutoIncField;
    FDQfundocod_evento: TIntegerField;
    FDQfundodata_evento: TDateTimeField;
    FDQfundofundo_troco: TBCDField;
    FDQfundonum_abetura: TIntegerField;
    FDQfundocontroleCaixa: TBCDField;
    FDQfundoreposnsavel_evento: TStringField;
    FDQfundooperador_evento: TStringField;
    FDQProdutosPrinted: TFDQuery;
    FDConnectionServidor: TFDConnection;
    DSComprovante: TDataSource;
    FDMTComprovante: TFDMemTable;
    FDMTComprovantecod_produto: TStringField;
    FDMTComprovantenome_produto: TStringField;
    FDMTComprovantevalor_prod: TCurrencyField;
    FDMTComprovantevalor_total: TCurrencyField;
    FDMTComprovanteqtd_produto: TCurrencyField;
    frxReportComprovante: TfrxReport;
    frxReportProducao: TfrxReport;
    FDQDelivery: TFDQuery;
    FDQDeliveryDELIV_id_pk: TFDAutoIncField;
    FDQDeliveryDELIV_data_abertura: TDateTimeField;
    FDQDeliveryDELIV_status: TStringField;
    FDQDeliveryDELIV_cliente_fk: TIntegerField;
    FDQDeliveryDELIV_usuario_fk: TIntegerField;
    FDQDeliveryDELIV_entregador_fk: TIntegerField;
    FDQDeliveryDELIV_tarifa_entrega_fk: TIntegerField;
    FDQDeliveryDELIV_data_producao: TDateTimeField;
    FDQDeliveryDELIV_data_entrega: TDateTimeField;
    FDQDeliveryDELIV_data_pagamento: TDateTimeField;
    FDCevomodadm: TFDConnection;
    FDQVendedor: TFDQuery;
    FDQUserEmpresa: TFDQuery;
    FDQUserEmpresaEmpresaCod: TStringField;
    FDQUserEmpresaEmpresaRazaoSocial: TStringField;
    FDQUserEmpresaEmpresaNomeFantasia: TStringField;
    FDQUserEmpresaEmpresaCNPJ: TStringField;
    FDQUserEmpresaEmpresaIdent: TFDAutoIncField;
    FDQProdutosProdutoEmpresaIdent: TFDAutoIncField;
    FDQProdutosEmpresaIdentFkProdutoEmpresa: TLongWordField;
    FDQProdutosEmpresaCod: TStringField;
    FDQProdutosEmpresaRazaoSocial: TStringField;
    FDQProdutosProdutoIdentFkProdutoEmpresa: TLongWordField;
    FDQProdutosProdutoCod: TLargeintField;
    FDQProdutosProdutoDescr: TStringField;
    FDQProdutosProdutoEmpresaFlagEstoque: TWordField;
    FDQProdutosProdutoEmpresaFlagComposicao: TWordField;
    FDQProdutosProdutoEmpresaFlagVenda: TWordField;
    FDQProdutosProdutoEmpresaFlagTbPreco: TWordField;
    FDQProdutosProdutoEmpresaFlagSerial: TWordField;
    FDQProdutosProdutoEmpresaFlagSerialEstoque: TWordField;
    FDQProdutosProdutoEmpresaFlagLote: TWordField;
    FDQProdutosProdutoEmpresaFlagGrade: TWordField;
    FDQProdutosProdutoEmpresaFlagAdic: TWordField;
    FDQProdutosProdutoEmpresaFlagProducao: TWordField;
    FDQProdutosProdutoEmpresaFlagBalanca: TWordField;
    FDQProdutosProdutoEmpresaFlagImprimeValid: TWordField;
    FDQProdutosProdutoEmpresaFlagImprimeEmbal: TWordField;
    FDQProdutosProdutoEmpresaFlagQtde: TWordField;
    FDQProdutosProdutoEmpresaPrecoCusto: TBCDField;
    FDQProdutosProdutoEmpresaPrecoOutros: TBCDField;
    FDQProdutosProdutoEmpresaCustoMedio: TBCDField;
    FDQProdutosProdutoEmpresaCustoReal: TBCDField;
    FDQProdutosProdutoEmpresaCustoFinal: TBCDField;
    FDQProdutosProdutoEmpresaObs: TStringField;
    FDQProdutosProdutoEmpresaCSOSN: TWordField;
    FDQProdutosCFOPIdentFkProdutoEmpresa: TLongWordField;
    FDQProdutosCFOPCod: TWordField;
    FDQProdutosCFOPDescr: TStringField;
    FDQProdutosNCMIdentFkProdutoEmpresa: TLongWordField;
    FDQProdutosNCMCod: TStringField;
    FDQProdutosNCMDescr: TStringField;
    FDQProdutosUnidMedidaIdentifFkProdutoEmpresa: TLongWordField;
    FDQProdutosUnidMedidaNome: TStringField;
    FDQProdutosUnidMedidaAbrev: TStringField;
    FDQProdutosProdutoEmpresaValidadeDias: TLongWordField;
    FDQProdutosCESTIdentFkProdutoEmpresa: TLongWordField;
    FDQProdutosCESTCod: TStringField;
    FDQProdutosCESTDescr: TStringField;
    FDQProdutosProdutoEmpresaGTIN13: TLargeintField;
    FDQProdutosProdutoIdent: TLongWordField;
    FDQProdutosProdutoCod_1: TLargeintField;
    FDQProdutosProdutoCodInterno: TStringField;
    FDQProdutosProdutoStatus: TWordField;
    FDQProdutosProdutoFlagServico: TWordField;
    FDQProdutosProdutoDescr_1: TStringField;
    FDQPessoasPessoaIdent: TLongWordField;
    FDQPessoasPessoaCod: TStringField;
    FDQPessoasPessoaTipo: TStringField;
    FDQPessoasPessoaNomeRazaoSocial: TStringField;
    FDQPessoasPessoaNomeFantasia: TStringField;
    FDQPessoasPessoaNome: TStringField;
    FDQPessoasPessoaSexo: TStringField;
    FDQPessoasPessoaDtNascimento: TDateField;
    FDQPessoasPessoaDtFundacao: TDateField;
    FDQPessoasPaisIdentNacFkPessoa: TLongWordField;
    FDQPessoasPaisNome: TStringField;
    FDQPessoasCidadeIdentNaturalFkPessoa: TLongWordField;
    FDQPessoasCidadeCod: TStringField;
    FDQPessoasCidadeNome: TStringField;
    FDQPessoasEstadoSiglaFkCidade: TStringField;
    FDQPessoasEstadoCivilIdentFkPessoa: TLongWordField;
    FDQPessoasEstadoCivilSigla: TStringField;
    FDQPessoasEstadoCivilDescr: TStringField;
    FDQPessoasPessoaNomePai: TStringField;
    FDQPessoasPessoaNomeMae: TStringField;
    FDQPessoasPessoaNomeConjuge: TStringField;
    FDQPessoasPessoaNomeContato: TStringField;
    FDQPessoasPessoaCNPJCPF: TStringField;
    FDQPessoasPessoaCNPJCPFConjuge: TStringField;
    FDQPessoasPessoaInscrEstad: TStringField;
    FDQPessoasIndicInscEstadIdentFkPessoa: TLongWordField;
    FDQPessoasIndicInscEstadCod: TStringField;
    FDQPessoasIndicInscEstadDescr: TStringField;
    FDQPessoasPessoaInscrMunic: TStringField;
    FDQPessoasPessoaInscrSuframa: TStringField;
    FDQPessoasPessoaIdentidade: TStringField;
    FDQPessoasPessoaIdentidadeDtEmis: TDateField;
    FDQPessoasPessoaIdentidadeOrgaoEmis: TStringField;
    FDQPessoasEstadoIdentIdentidadeEmisFkPessoa: TLongWordField;
    FDQPessoasEstadoNome: TStringField;
    FDQPessoasEstadoSigla: TStringField;
    FDQPessoasOcupacaoIdentFkPessoa: TLongWordField;
    FDQPessoasOcupacaoCod: TStringField;
    FDQPessoasOcupacaoTitulo: TStringField;
    FDQPessoasPessoaSenha: TVarBytesField;
    FDQPessoasPessoaFoneDDI: TStringField;
    FDQPessoasPessoaFoneDDD: TStringField;
    FDQPessoasPessoaNrFone: TStringField;
    FDQPessoasPessoaNrFax: TStringField;
    FDQPessoasPessoaEmail: TStringField;
    FDQPessoasPessoaSiteWeb: TStringField;
    FDQPessoasPessoaFacebook: TStringField;
    FDQPessoasPessoaInstagram: TStringField;
    FDQPessoasPessoaLinkedin: TStringField;
    FDQPessoasPessoaWhatSapp: TStringField;
    FDQPessoasPessoaTwitter: TStringField;
    FDQPessoasPessoaRespons: TStringField;
    FDQPessoasPessoaEndereco: TStringField;
    FDQPessoasPessoaEnderecoNr: TStringField;
    FDQPessoasPessoaEnderecoCompl: TStringField;
    FDQPessoasCEPIdentFkPessoa: TLongWordField;
    FDQPessoasCEPCod: TStringField;
    FDQPessoasPessoaFoto: TBlobField;
    FDQImpressorasIMP_id_pk: TFDAutoIncField;
    FDQImpressorasIMP_descricao: TStringField;
    FDQImpressorasIMP_ativa: TBooleanField;
    FDQImpressorasIMP_vinculo: TStringField;
    FDQImpressorasIMP_grafica: TBooleanField;
    FDQProdutosPrintedProdutoDeliveryIdent: TFDAutoIncField;
    FDQProdutosPrintedDeliveryIdentFkDelivery: TIntegerField;
    FDQProdutosPrintedProdutoEmpresaIdentFkProduto: TIntegerField;
    FDQProdutosPrintedProdutoDeliveryQtde: TBCDField;
    FDQProdutosPrintedProdutoDeliveryValorUnitario: TBCDField;
    FDQProdutosPrintedProdutoDeliveryValorAcrescimo: TBCDField;
    FDQProdutosPrintedProdutoDeliveryValorDesconto: TBCDField;
    FDQProdutosPrintedProdutoDeliveryValorTotal: TBCDField;
    FDQProdutosPrintedProdutoDeliveryPrinted: TBooleanField;
    FDQProdutosPrintedProdutoDeliveryObservacao: TStringField;
    FDQProdutosPrintedProdutoEmpresaPessoafkPessoaEmpresaIdent: TIntegerField;
    FDQProducaoProdutosProdutoEmpresaIdent: TFDAutoIncField;
    FDQProducaoProdutosProdutoDeliveryIdent: TFDAutoIncField;
    FDQProducaoProdutosProdutoEmpresaIdentFkProduto: TIntegerField;
    FDQProducaoProdutosPessoaNome: TStringField;
    FDQProducaoProdutosProdutoCodInterno: TStringField;
    FDQProducaoProdutosProdutoDescr: TStringField;
    FDQProducaoProdutosProdutoDeliveryQtde: TBCDField;
    FDQProducaoProdutosProdutoDeliveryObservacao: TStringField;
    frxDBDataset1: TfrxDBDataset;
    FDMTComprovantetestete: TStringField;
    FDMTCompEntrega: TFDMemTable;
    DSCompEntrega: TDataSource;
    frxDBDatasetCompEntrega: TfrxDBDataset;
    FDMTCompEntregaProdutoIdent: TIntegerField;
    FDMTCompEntregaProdutoCod: TStringField;
    FDMTCompEntregaProdutoDescricao: TStringField;
    FDMTCompEntregaProdutoQtd: TCurrencyField;
    FDMTCompEntregaProdutoValor: TCurrencyField;
    FDMTCompEntregaProdutoTotal: TCurrencyField;
    frxReportCompEntrega: TfrxReport;
    FDMTCompEntregaQrCode: TStringField;
    FDQCompEntrega: TFDQuery;
    FDQCompEntregaPedido: TFDAutoIncField;
    FDQCompEntregaTipoRecebimento: TStringField;
    FDQCompEntregaCliente: TStringField;
    FDQCompEntregaDDD: TStringField;
    FDQCompEntregaTelefone: TStringField;
    FDQCompEntregaRua: TStringField;
    FDQCompEntregaNumero: TStringField;
    FDQCompEntregaComplemento: TStringField;
    FDQCompEntregaBairro: TStringField;
    FDQCompEntregaCodigoProd: TStringField;
    FDQCompEntregaDescricaoProd: TStringField;
    FDQCompEntregaQtdeProd: TBCDField;
    FDQCompEntregaValorProd: TBCDField;
    FDQCompEntregaAcrescimoProd: TBCDField;
    FDQCompEntregaDescontoProd: TBCDField;
    FDQCompEntregaTotalProd: TBCDField;
    FDQCompEntregaIdentProd: TLongWordField;
    FDQCompEntregaDeliveryTotal: TBCDField;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxReport1: TfrxReport;
    frxReportQrCodeEntrega: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    FDMTQrCode: TFDMemTable;
    FDMTQrCodeQrcode: TStringField;
    DSQrCode: TDataSource;
    FDQVendedorPessoaIdent: TLongWordField;
    FDQVendedorPessoaCod: TStringField;
    FDQVendedorPessoaTipo: TStringField;
    FDQVendedorPessoaNomeRazaoSocial: TStringField;
    FDQVendedorPessoaNomeFantasia: TStringField;
    FDQVendedorPessoaNome: TStringField;
    FDQVendedorPessoaSexo: TStringField;
    FDQVendedorPessoaDtNascimento: TDateField;
    FDQVendedorPessoaDtFundacao: TDateField;
    FDQVendedorPaisIdentNacFkPessoa: TLongWordField;
    FDQVendedorPaisNome: TStringField;
    FDQVendedorCidadeIdentNaturalFkPessoa: TLongWordField;
    FDQVendedorCidadeCod: TStringField;
    FDQVendedorCidadeNome: TStringField;
    FDQVendedorEstadoSiglaFkCidade: TStringField;
    FDQVendedorEstadoCivilIdentFkPessoa: TLongWordField;
    FDQVendedorEstadoCivilSigla: TStringField;
    FDQVendedorEstadoCivilDescr: TStringField;
    FDQVendedorPessoaNomePai: TStringField;
    FDQVendedorPessoaNomeMae: TStringField;
    FDQVendedorPessoaNomeConjuge: TStringField;
    FDQVendedorPessoaNomeContato: TStringField;
    FDQVendedorPessoaCNPJCPF: TStringField;
    FDQVendedorPessoaCNPJCPFConjuge: TStringField;
    FDQVendedorPessoaInscrEstad: TStringField;
    FDQVendedorPessoaInscrMunic: TStringField;
    FDQVendedorPessoaInscrSuframa: TStringField;
    FDQVendedorPessoaIdentidade: TStringField;
    FDQVendedorPessoaIdentidadeDtEmis: TDateField;
    FDQVendedorPessoaIdentidadeOrgaoEmis: TStringField;
    FDQVendedorEstadoIdentIdentidadeEmisFkPessoa: TLongWordField;
    FDQVendedorEstadoNome: TStringField;
    FDQVendedorEstadoSigla: TStringField;
    FDQVendedorOcupacaoIdentFkPessoa: TLongWordField;
    FDQVendedorOcupacaoCod: TStringField;
    FDQVendedorOcupacaoTitulo: TStringField;
    FDQVendedorPessoaSenha: TVarBytesField;
    FDQVendedorPessoaFoneDDI: TStringField;
    FDQVendedorPessoaFoneDDD: TStringField;
    FDQVendedorPessoaNrFone: TStringField;
    FDQVendedorPessoaNrFax: TStringField;
    FDQVendedorPessoaEmail: TStringField;
    FDQVendedorPessoaSiteWeb: TStringField;
    FDQVendedorPessoaFacebook: TStringField;
    FDQVendedorPessoaInstagram: TStringField;
    FDQVendedorPessoaLinkedin: TStringField;
    FDQVendedorPessoaWhatSapp: TStringField;
    FDQVendedorPessoaTwitter: TStringField;
    FDQVendedorPessoaRespons: TStringField;
    FDQVendedorPessoaEndereco: TStringField;
    FDQVendedorPessoaEnderecoNr: TStringField;
    FDQVendedorPessoaEnderecoCompl: TStringField;
    FDQVendedorCEPIdentFkPessoa: TLongWordField;
    FDQVendedorCEPCod: TStringField;
    FDQVendedorPessoaFoto: TBlobField;
    FDQVendedorPessoaEmpresaIdent: TFDAutoIncField;
    FDQVendedorPessoaIdentFkPessoaEmpresa: TLongWordField;
    FDQVendedorPessoaCod_1: TStringField;
    FDQVendedorPessoaDescr: TStringField;
    FDQVendedorEmpresaIdentFkPessoaEmpresa: TLongWordField;
    FDQVendedorEmpresaCod: TStringField;
    FDQVendedorEmpresaRazaoSocial: TStringField;
    FDQVendedorPessoaEmpresaFlagAtivo: TWordField;
    FDQVendedorPessoaEmpresaFlagCliente: TWordField;
    FDQVendedorPessoaEmpresaFlagFornec: TWordField;
    FDQVendedorPessoaEmpresaFlagFunc: TWordField;
    FDQVendedorPessoaEmpresaFlagTransp: TWordField;
    FDQVendedorPessoaEmpresaFlagUsu: TWordField;
    FDQVendedorPerfilAcesSistIdentFkPessoaEmpresa: TLongWordField;
    procedure SmoothResize(apng: tpngobject; NuWidth, NuHeight: Integer);
    procedure DataModuleCreate(Sender: TObject);
    function GetVendedor(codigo: Integer): string;
    function GetProduto(codigo: string): string;
    function Explode(texto, separador: string): TStrings;
    procedure ExecutaSql(add: string);
    procedure clicaBotao(tecla: Byte);
    function preencheu(Campo, Letra, Alinhamento: String;
 Tamanho: Integer):string;
    function buscaPermissoes(senha: string): TPermissoes;
    function numabertura(): Integer;
    procedure insertEventoRegistro(codevento: Integer;
      dataevento, responsavel, operador: string; fundotroco: Currency;
      numabertura: Integer; controlecaixa: Currency; codcliente: Integer;
      descontoTotal: Currency; codvenda: Integer; codstatusvenda: Boolean;
      statusVenda: string; troco: Currency; codusuario: Integer;
      cpfVenda: string);
    function statusCaixa: Boolean;
    procedure imprimiRelatorioCaixa(tiporelatorio: Integer; valor: string);
    procedure CarregaCaixa(tela: string);
    procedure CarregaIni;
    procedure ConectaServidor;
    function FormatarTelefone(Telefone: String): String;
    function SomenteNumero(snum: string): string;
    procedure adicionaVendedor(NomeComponente: string);
    function HexToTColor(sColor: string; opacidade: integer): TColor;
    function TColorToHex(Color: TColor): string;

  private
    procedure ImprimeProducaoGrafica(idDelivery: integer; entrega:string);
    procedure ImprimeProducaoGenerica(idDelivery:integer; entrega:string);
  public
    IdentEmpresaSelecionada : Integer;
    procedure ImprimeProducao(idDelivery: integer; entrega:string);
    procedure ImprimeComprovanteEntrega(idDelivery:Integer);
  end;

var
  DMPrincipal: TDMPrincipal;
  Permissoes: TPermissoes;
  ImpressaoGrafica:Boolean;
  ipServidor:string;
  portServidor:string;
  senhaServidor: string;

function BuscaProduto(topp: Integer; leftp: Integer): TProduto;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses  Winapi.Windows, Vcl.Printers,
  Winapi.ActiveX, Usangria, Usuprimento, Ufechamento, UAddProduto,
  UBuscaVendedor, UBuscaProduto;

{$R *.dfm}
{ TDMPrincipal }

function BuscaProduto(topp: Integer; leftp: Integer): TProduto;
begin
 FreeAndNil(FRMBuscaProdutos);
  FRMBuscaProdutos := TFRMBuscaProdutos.Create(nil);
  if (FRMBuscaProdutos.ShowModal = mrOk) then
  begin
    Result := FRMBuscaProdutos.produtoselecionado;
  end
  else
  begin
    Result := nil;
  end;

end;


procedure TDMPrincipal.adicionaVendedor(NomeComponente: string);
var
  nomeBotão: string;
  listNome: TStrings;
  vendedor: string;
  mychar: char;
begin
  listNome := DMPrincipal.Explode(NomeComponente, '_');
  nomeBotão := listNome[1];
  FDQVendedor.Close;
  FDQVendedor.SQL.Clear;
  FDQVendedor.SQL.Add('select * from vwtbpessoa ');
  FDQVendedor.SQL.Add('left join vwtbpessoaempresa on PessoaIdentFkPessoaEmpresa = PessoaIdent');
  FDQVendedor.SQL.Add('where (PessoaIdent = :Pusuario)');
  FDQVendedor.SQL.Add('and EmpresaIdentFkPessoaEmpresa =:PEmpresaIdent');
  FDQVendedor.ParamByName('PEmpresaIdent').AsInteger := DMPrincipal.IdentEmpresaSelecionada;
  FDQVendedor.ParamByName('Pusuario').AsInteger := StrToInt(nomeBotão);
  FDQVendedor.Open();
  FRMBuscaVendedores.Close;
  FRMAddProduto.EdtVendedor.Text := IntToStr(FDQVendedorPessoaEmpresaIdent.AsInteger);
  mychar := #13;
  FRMAddProduto.EdtVendedorKeyPress(self, mychar);
end;

function TDMPrincipal.buscaPermissoes(senha: string): TPermissoes;
var
  Permissoes: TPermissoes;
begin
  FDQVendedor.Close;
   FDQVendedor.SQL.Clear;
  FDQVendedor.SQL.Add('select * from vwtbpessoa');
  FDQVendedor.SQL.Add('left join vwtbpessoaempresa on PessoaIdentFkPessoaEmpresa = PessoaIdent');
  FDQVendedor.SQL.Add('where PessoaSenha = :PSenha');
  FDQVendedor.ParamByName('PSenha').AsVarByteStr := senha;
  FDQVendedor.Open();
  if not FDQVendedor.IsEmpty then
  begin
    Permissoes :=  TPermissoes.Create;
    Permissoes.multiEmpresa := False;
    Permissoes.codusuario := FDQVendedorPessoaIdent.AsInteger;
    Permissoes.nomeUsuario := FDQVendedorPessoaNome.AsString;
    Permissoes.abrirPDV := True;
    Permissoes.abrirCaixa := True;
    Permissoes.mudaValorUni := True;
    Permissoes.mudaQtd := True;
    Permissoes.fazSangria := True;
    Permissoes.fazSuprimento := True;
    Permissoes.fechaCaixa := True;
    Permissoes.fechaPDV := True;
    Permissoes.fazDevolucao := True;

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
    FDQUserEmpresa.ParamByName('PUserIdent').AsInteger := FDQVendedorPessoaIdent.AsInteger;
    FDQUserEmpresa.Open();

    if FDQUserEmpresa.RecordCount > 1 then
      Permissoes.multiEmpresa := True;
    Result := Permissoes;
  end else
  begin
    Result := nil;
  end;
end;

procedure TDMPrincipal.CarregaCaixa(tela: string);
var
  valor: Currency;
begin
  if tela = 'sangria' then
  begin
    valor := 0;
    FRMsangria.FDMTCaixa.Close;
    FRMsangria.FDMTCaixa.Open;

    FDQFechamento.Close;
    FDQFechamento.SQL.Clear;
    FDQFechamento.SQL.Add
      ('select *, SUM(valor_recebido)as Total from saida left join registroeventos on (saida.cod_venda = registroeventos.cod_venda) where (num_abetura=:Pabertura) and (tipo_recebimento=:Precebimento)');
    FDQFechamento.ParamByName('Precebimento').AsString := 'Dinheiro';
    FDQFechamento.ParamByName('Pabertura').AsInteger := numabertura;
    FDQFechamento.Open();

    FRMsangria.FDMTCaixa.Append;
    FRMsangria.FDMTCaixaNome.AsString := 'Dinheiro';
    FRMsangria.FDMTCaixavalor.AsCurrency := FDQFechamentoTotal.AsCurrency;
    valor := FDQFechamentoTotal.AsCurrency + valor;
    FRMsangria.FDMTCaixa.Post;

    FDQFechamento.Close;
    FDQFechamento.SQL.Clear;
    FDQFechamento.SQL.Add
      ('select *, SUM(valor_recebido)as Total from saida left join registroeventos on (saida.cod_venda = registroeventos.cod_venda) where (num_abetura=:Pabertura) and (tipo_recebimento=:Precebimento)');
    FDQFechamento.ParamByName('Precebimento').AsString := 'Cartao de Credito';
    FDQFechamento.ParamByName('Pabertura').AsInteger := numabertura;
    FDQFechamento.Open();

    FRMsangria.FDMTCaixa.Append;
    FRMsangria.FDMTCaixaNome.AsString := 'Cartão de Crédito';
    FRMsangria.FDMTCaixavalor.AsCurrency := FDQFechamentoTotal.AsCurrency;
    valor := FDQFechamentoTotal.AsCurrency + valor;
    FRMsangria.FDMTCaixa.Post;

    FDQFechamento.Close;
    FDQFechamento.SQL.Clear;
    FDQFechamento.SQL.Add
      ('select *, SUM(valor_recebido)as Total from saida left join registroeventos on (saida.cod_venda = registroeventos.cod_venda) where (num_abetura=:Pabertura) and (tipo_recebimento=:Precebimento)');
    FDQFechamento.ParamByName('Precebimento').AsString := 'Cartao de Debito';
    FDQFechamento.ParamByName('Pabertura').AsInteger := numabertura;
    FDQFechamento.Open();

    FRMsangria.FDMTCaixa.Append;
    FRMsangria.FDMTCaixaNome.AsString := 'Cartão de Débito';
    FRMsangria.FDMTCaixavalor.AsCurrency := FDQFechamentoTotal.AsCurrency;
    valor := FDQFechamentoTotal.AsCurrency + valor;
    FRMsangria.FDMTCaixa.Post;

    FDQSangria.Close;
    FDQSangria.SQL.Clear;
    FDQSangria.SQL.Add
      ('select *,sum(fundo_troco)as total_sangria  from registroeventos where cod_evento=3 and num_abetura =:Pabertura ');
    FDQSangria.ParamByName('Pabertura').AsInteger := numabertura;
    FDQSangria.Open();

    FRMsangria.FDMTCaixa.Append;
    FRMsangria.FDMTCaixaNome.AsString := 'Sangria';
    FRMsangria.FDMTCaixavalor.AsCurrency := FDQSangriatotal_sangria.AsCurrency;
    valor := valor - FDQSangriatotal_sangria.AsCurrency;
    FRMsangria.FDMTCaixa.Post;

    FDQSuprimento.Close;
    FDQSuprimento.SQL.Clear;
    FDQSuprimento.SQL.Add
      ('select *,sum(fundo_troco)as total_suprimento  from registroeventos where cod_evento=4 and num_abetura=:Pabertura');
    FDQSuprimento.ParamByName('Pabertura').AsInteger := numabertura;
    FDQSuprimento.Open();

    FRMsangria.FDMTCaixa.Append;
    FRMsangria.FDMTCaixaNome.AsString := 'Suprimento';
    FRMsangria.FDMTCaixavalor.AsCurrency :=
      FDQSuprimentototal_suprimento.AsCurrency;
    valor := FDQSuprimentototal_suprimento.AsCurrency + valor;
    FRMsangria.FDMTCaixa.Post;

    FRMsangria.FDMTCaixa.Append;
    FRMsangria.FDMTCaixaNome.AsString := 'Total';
    FRMsangria.FDMTCaixavalor.AsCurrency := valor;
    FRMsangria.FDMTCaixa.Post;
  end;
  if tela = 'suprimento' then
  begin
    valor := 0;
    FRMsuprimento.FDMTCaixa.Close;
    FRMsuprimento.FDMTCaixa.Open;

    FDQFechamento.Close;
    FDQFechamento.SQL.Clear;
    FDQFechamento.SQL.Add
      ('select *, SUM(valor_recebido)as Total from saida left join registroeventos on (saida.cod_venda = registroeventos.cod_venda) where (num_abetura=:Pabertura) and (tipo_recebimento=:Precebimento)');
    FDQFechamento.ParamByName('Precebimento').AsString := 'Dinheiro';
    FDQFechamento.ParamByName('Pabertura').AsInteger := numabertura;
    FDQFechamento.Open();

    FRMsuprimento.FDMTCaixa.Append;
    FRMsuprimento.FDMTCaixaNome.AsString := 'Dinheiro';
    FRMsuprimento.FDMTCaixavalor.AsCurrency := FDQFechamentoTotal.AsCurrency;
    valor := FDQFechamentoTotal.AsCurrency + valor;
    FRMsuprimento.FDMTCaixa.Post;

    FDQFechamento.Close;
    FDQFechamento.SQL.Clear;
    FDQFechamento.SQL.Add
      ('select *, SUM(valor_recebido)as Total from saida left join registroeventos on (saida.cod_venda = registroeventos.cod_venda) where (num_abetura=:Pabertura) and (tipo_recebimento=:Precebimento)');
    FDQFechamento.ParamByName('Precebimento').AsString := 'Cartao de Credito';
    FDQFechamento.ParamByName('Pabertura').AsInteger := numabertura;
    FDQFechamento.Open();

    FRMsuprimento.FDMTCaixa.Append;
    FRMsuprimento.FDMTCaixaNome.AsString := 'Cartão de Crédito';
    FRMsuprimento.FDMTCaixavalor.AsCurrency := FDQFechamentoTotal.AsCurrency;
    valor := FDQFechamentoTotal.AsCurrency + valor;
    FRMsuprimento.FDMTCaixa.Post;

    FDQFechamento.Close;
    FDQFechamento.SQL.Clear;
    FDQFechamento.SQL.Add
      ('select *, SUM(valor_recebido)as Total from saida left join registroeventos on (saida.cod_venda = registroeventos.cod_venda) where (num_abetura=:Pabertura) and (tipo_recebimento=:Precebimento)');
    FDQFechamento.ParamByName('Precebimento').AsString := 'Cartao de Debito';
    FDQFechamento.ParamByName('Pabertura').AsInteger := numabertura;
    FDQFechamento.Open();

    FRMsuprimento.FDMTCaixa.Append;
    FRMsuprimento.FDMTCaixaNome.AsString := 'Cartão de Débito';
    FRMsuprimento.FDMTCaixavalor.AsCurrency := FDQFechamentoTotal.AsCurrency;
    valor := FDQFechamentoTotal.AsCurrency + valor;
    FRMsuprimento.FDMTCaixa.Post;

    FDQSangria.Close;
    FDQSangria.SQL.Clear;
    FDQSangria.SQL.Add
      ('select *,sum(fundo_troco)as total_sangria  from registroeventos where cod_evento=3 and num_abetura =:Pabertura ');
    FDQSangria.ParamByName('Pabertura').AsInteger := numabertura;
    FDQSangria.Open();

    FRMsuprimento.FDMTCaixa.Append;
    FRMsuprimento.FDMTCaixaNome.AsString := 'Sangria';
    FRMsuprimento.FDMTCaixavalor.AsCurrency :=
      FDQSangriatotal_sangria.AsCurrency;
    valor := valor - FDQSangriatotal_sangria.AsCurrency;
    FRMsuprimento.FDMTCaixa.Post;

    FDQSuprimento.Close;
    FDQSuprimento.SQL.Clear;
    FDQSuprimento.SQL.Add
      ('select *,sum(fundo_troco)as total_suprimento  from registroeventos where cod_evento=4 and num_abetura=:Pabertura');
    FDQSuprimento.ParamByName('Pabertura').AsInteger := numabertura;
    FDQSuprimento.Open();

    FRMsuprimento.FDMTCaixa.Append;
    FRMsuprimento.FDMTCaixaNome.AsString := 'Suprimento';
    FRMsuprimento.FDMTCaixavalor.AsCurrency :=
      FDQSuprimentototal_suprimento.AsCurrency;
    valor := FDQSuprimentototal_suprimento.AsCurrency + valor;
    FRMsuprimento.FDMTCaixa.Post;

    FRMsuprimento.FDMTCaixa.Append;
    FRMsuprimento.FDMTCaixaNome.AsString := 'Total';
    FRMsuprimento.FDMTCaixavalor.AsCurrency := valor;
    FRMsuprimento.FDMTCaixa.Post;
  end;
  if tela = 'fechamento' then
  begin
    valor := 0;
    FRMfechamento.FDMTCaixa.Close;
    FRMfechamento.FDMTCaixa.Open;

    FDQFechamento.Close;
    FDQFechamento.SQL.Clear;
    FDQFechamento.SQL.Add
      ('select *, SUM(valor_recebido)as Total from saida left join registroeventos on (saida.cod_venda = registroeventos.cod_venda) where (num_abetura=:Pabertura) and (tipo_recebimento=:Precebimento)');
    FDQFechamento.ParamByName('Precebimento').AsString := 'Dinheiro';
    FDQFechamento.ParamByName('Pabertura').AsInteger := numabertura;
    FDQFechamento.Open();

    FRMfechamento.FDMTCaixa.Append;
    FRMfechamento.FDMTCaixaNome.AsString := 'Dinheiro';
    FRMfechamento.FDMTCaixavalor.AsCurrency := FDQFechamentoTotal.AsCurrency;
    valor := FDQFechamentoTotal.AsCurrency + valor;
    FRMfechamento.FDMTCaixa.Post;

    FDQFechamento.Close;
    FDQFechamento.SQL.Clear;
    FDQFechamento.SQL.Add
      ('select *, SUM(valor_recebido)as Total from saida left join registroeventos on (saida.cod_venda = registroeventos.cod_venda) where (num_abetura=:Pabertura) and (tipo_recebimento=:Precebimento)');
    FDQFechamento.ParamByName('Precebimento').AsString := 'Cartao de Credito';
    FDQFechamento.ParamByName('Pabertura').AsInteger := numabertura;
    FDQFechamento.Open();

    FRMfechamento.FDMTCaixa.Append;
    FRMfechamento.FDMTCaixaNome.AsString := 'Cartão de Crédito';
    FRMfechamento.FDMTCaixavalor.AsCurrency := FDQFechamentoTotal.AsCurrency;
    valor := FDQFechamentoTotal.AsCurrency + valor;
    FRMfechamento.FDMTCaixa.Post;

    FDQFechamento.Close;
    FDQFechamento.SQL.Clear;
    FDQFechamento.SQL.Add
      ('select *, SUM(valor_recebido)as Total from saida left join registroeventos on (saida.cod_venda = registroeventos.cod_venda) where (num_abetura=:Pabertura) and (tipo_recebimento=:Precebimento)');
    FDQFechamento.ParamByName('Precebimento').AsString := 'Cartao de Debito';
    FDQFechamento.ParamByName('Pabertura').AsInteger := numabertura;
    FDQFechamento.Open();

    FRMfechamento.FDMTCaixa.Append;
    FRMfechamento.FDMTCaixaNome.AsString := 'Cartão de Débito';
    FRMfechamento.FDMTCaixavalor.AsCurrency := FDQFechamentoTotal.AsCurrency;
    valor := FDQFechamentoTotal.AsCurrency + valor;
    FRMfechamento.FDMTCaixa.Post;

    FDQSangria.Close;
    FDQSangria.SQL.Clear;
    FDQSangria.SQL.Add
      ('select *,sum(fundo_troco)as total_sangria  from registroeventos where cod_evento=3 and num_abetura =:Pabertura ');
    FDQSangria.ParamByName('Pabertura').AsInteger := numabertura;
    FDQSangria.Open();

    FRMfechamento.FDMTCaixa.Append;
    FRMfechamento.FDMTCaixaNome.AsString := 'Sangria';
    FRMfechamento.FDMTCaixavalor.AsCurrency :=
      FDQSangriatotal_sangria.AsCurrency;
    valor := valor - FDQSangriatotal_sangria.AsCurrency;
    FRMfechamento.FDMTCaixa.Post;

    FDQSuprimento.Close;
    FDQSuprimento.SQL.Clear;
    FDQSuprimento.SQL.Add
      ('select *,sum(fundo_troco)as total_suprimento  from registroeventos where cod_evento=4 and num_abetura=:Pabertura');
    FDQSuprimento.ParamByName('Pabertura').AsInteger := numabertura;
    FDQSuprimento.Open();

    FRMfechamento.FDMTCaixa.Append;
    FRMfechamento.FDMTCaixaNome.AsString := 'Suprimento';
    FRMfechamento.FDMTCaixavalor.AsCurrency :=
      FDQSuprimentototal_suprimento.AsCurrency;
    valor := FDQSuprimentototal_suprimento.AsCurrency + valor;
    FRMfechamento.FDMTCaixa.Post;

    FRMfechamento.FDMTCaixa.Append;
    FRMfechamento.FDMTCaixaNome.AsString := 'Total';
    FRMfechamento.FDMTCaixavalor.AsCurrency := valor;
    FRMfechamento.FDMTCaixa.Post;
  end;
end;

procedure TDMPrincipal.CarregaIni;
var
  caminhoaplicacao: string;
  EvoServidor : TStringList;
begin
  try
    caminhoaplicacao := ExtractFileDir(GetCurrentDir);
    EvoServidor := TStringList.Create;
    EvoServidor.LoadFromFile(caminhoaplicacao + '\Modulos\Integrador\Servidor.ini');
    ipServidor := EvoServidor[0];
    portServidor := EvoServidor[1];
    senhaServidor := EvoServidor[2];
  except
  end;
end;

procedure TDMPrincipal.clicaBotao(tecla: Byte);
begin
  keybd_event(tecla, MapVirtualKey(tecla, 0), 0, 0);
end;

procedure TDMPrincipal.ConectaServidor;
begin
  try
//    FDConnectionServidor.Connected := false;
//    FDConnectionServidor.Params.Values['Server'] := ipServidor;
//    FDConnectionServidor.Params.Values['Port'] := portServidor;
//    FDConnectionServidor.Params.Values['Password'] := senhaServidor;
//    FDConnectionServidor.Connected := true;
  except

  end;
end;

procedure TDMPrincipal.DataModuleCreate(Sender: TObject);
var
  I: Integer;
  caminhoaplicacao: string;
  EvoServidor : TStringList;
begin
  CarregaIni;
  ConectaServidor;
end;

procedure TDMPrincipal.ExecutaSql(add: string);
begin
  FDQExecSQL.Close;
  FDQExecSQL.SQL.Clear;
  FDQExecSQL.SQL.add(add);
  FDQExecSQL.ExecSQL;
end;

function TDMPrincipal.Explode(texto, separador: string): TStrings;
var
  strItem: String;
  ListaAuxUTILS: TStrings;
  NumCaracteres, TamanhoSeparador, I: Integer;
begin
  ListaAuxUTILS := TStringList.Create;
  strItem := '';
  NumCaracteres := Length(texto);
  TamanhoSeparador := Length(separador);
  I := 1;
  while I <= NumCaracteres Do
  begin
    if (Copy(texto, I, TamanhoSeparador) = separador) or(I = NumCaracteres) then
    begin
      if (I = NumCaracteres) then
        strItem := strItem + texto[I];
      ListaAuxUTILS.add(trim(strItem));
      strItem := '';
      I := I + (TamanhoSeparador - 1);

    end
    else
      strItem := strItem + texto[I];

    I := I + 1;
  end;
  Result := ListaAuxUTILS;
end;

function TDMPrincipal.FormatarTelefone(Telefone: String): String;
var sTel : String;
    bZero : Boolean;
    iDigitos : Integer;
begin
  //Obs: mascara prevê tratamento apenas para números brasileiros
  //Obs2: Esta função não leva em conta o código do país (Ex: 55, ou +55)

  sTel := SomenteNumero(Telefone); //Remove qualquer formatação que o usuário possa ter colocado.
  if sTel='' then
  Result := ''
  else
  begin
   if sTel[1]='0' then //Verifica se foi adicionado o 0 no início do número
   begin
     bZero:= True;
     sTel := Trim( copy(sTel,2,Length(sTel)) ); //Remove para fazer a formatação depois adiciona
   end
   else
     bZero := False;
   iDigitos := Length(sTel);
   //Formata de acordo com a quantidade de números encontrados.
   case iDigitos of
     8 : Result := FormatMaskText('9999-9999;0;_',sTel); //8 digitos SEM DDD (ex: 34552318)
     9 : Result := FormatMaskText('9 9999-9999;0;_',sTel); //9 digitos SEM DDD (ex: 991916889)
    10 : Result := FormatMaskText('(99) 9999-9999;0;_',sTel); //8 Digitos (convencional, ex: 7734552318)
    11 : Result := FormatMaskText('(99) 9 9999-9999;0;_',sTel); //9 Digitos (novos números, ex: 77991916889)
    12 : Result := FormatMaskText('+99(99)9999-9999;0;_',sTel); //Se foram 12 digitos possívelmente digitou a operadora também
    13 : Result := FormatMaskText('+99(99)9 9999-9999;0;_',sTel); //Se foram 13 digitos possívelmente digitou a operadora também
   else
     Result := Telefone; //Mantém na forma que o usuário digitou
   end;
   if bZero then //Para ficar com a preferência do usuário, se ele digitou o "0" eu mantenho.
     Result := '0'+Result;
  end;
end;

function TDMPrincipal.GetProduto(codigo: string): string;
begin
  FDQProdutos.Close;
  FDQProdutos.SQL.Clear;
  FDQProdutos.SQL.Add('select * from vwtbprodutoempresa');
  FDQProdutos.SQL.Add('left join vwtbproduto on ProdutoIdentFkProdutoEmpresa = ProdutoIdent');
  FDQProdutos.SQL.Add('where (vwtbproduto.ProdutoCod=:Pcodigo)');
  FDQProdutos.SQL.Add('and (EmpresaIdentFkProdutoEmpresa = :PEmpresaIdent)');
  FDQProdutos.ParamByName('PEmpresaIdent').AsInteger := IdentEmpresaSelecionada;
  FDQProdutos.ParamByName('Pcodigo').AsInteger := StrToInt(codigo);
  FDQProdutos.Open();
  if FDQProdutos.IsEmpty then
  begin
    Result := 'Nao encontrado';
  end
  else
  begin
    Result := FDQProdutosProdutoDescr.AsString;
  end;
end;

function TDMPrincipal.GetVendedor(codigo: Integer): string;
begin
  FDQVendedor.Close;
  FDQVendedor.SQL.Clear;
  FDQVendedor.SQL.Add('select * from vwtbpessoa');
  FDQVendedor.SQL.Add('left join vwtbpessoaempresa on PessoaIdentFkPessoaEmpresa = PessoaIdent');
  FDQVendedor.SQL.Add('where PessoaEmpresaIdent =:Pcodigo');
  FDQVendedor.ParamByName('Pcodigo').AsInteger := codigo;
  FDQVendedor.Open();
  if FDQVendedor.IsEmpty then
  begin
    Result := 'Nao encontrado';
  end
  else
  begin
    Result := FDQVendedorPessoaNome.AsString;
  end;
end;

function TDMPrincipal.HexToTColor(sColor: string; opacidade: integer): TColor;
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

procedure TDMPrincipal.ImprimeComprovanteEntrega(idDelivery: Integer);
begin

  FDQCompEntrega.Close;
  FDQCompEntrega.SQL.Clear;
  FDQCompEntrega.SQL.Add(
        'SELECT							                                  ' +
        '  DeliveryIdent as Pedido,				                    ' +
        '  DeliveryTipoRecebimento as TipoRecebimento,		    ' +
        '  PessoaNome as Cliente,				                      ' +
        '  PessoaFoneDDD as DDD,				                      ' +
        '  PessoaNrFone  as Telefone,				                  ' +
        '  PessoaEndereco as Rua,				                      ' +
        '  PessoaEnderecoNr as Numero,				                ' +
        '  PessoaEnderecoCompl as Complemento,			          ' +
        '  CepBairro as Bairro,					                      ' +
        '  ProdutoEmpresaIdent as IdentProd,			            ' +
        '  ProdutoCodInterno as CodigoProd,			              ' +
        '  ProdutoDescr as DescricaoProd,			                ' +
        '  ProdutoDeliveryQtde as QtdeProd,			              ' +
        '  ProdutoDeliveryValorUnitario as ValorProd,		      ' +
        '  ProdutoDeliveryValorAcrescimo as AcrescimoProd,	  ' +
        '  ProdutoDeliveryValorDesconto as DescontoProd,	    ' +
        '  ProdutoDeliveryValorTotal as TotalProd,		        ' +
        '  DeliveryValorProdutos as DeliveryTotal             ' +
        'FROM tbdelivery					                            ' +
        ' LEFT JOIN tbprodutodelivery on DeliveryIdentFkDelivery = DeliveryIdent		        ' +
        ' LEFT JOIN tbpessoaempresa on PessoaIdentFkDeliveryCliente = PessoaEmpresaIdent	  ' +
        ' LEFT JOIN tbpessoa on PessoaIdentFkPessoaEmpresa = PessoaIdent		              	' +
        ' LEFT JOIN tbcep on CEPIdentFkPessoa = CepIdent				                          	' +
        ' LEFT JOIN tbprodutoempresa on ProdutoEmpresaIdentFkProduto = ProdutoEmpresaIdent	' +
        ' LEFT JOIN tbproduto on ProdutoIdentFkProdutoEmpresa = ProdutoIdent			          '
      );
  FDQCompEntrega.SQL.Add('WHERE (DeliveryIdent ='+IntToStr(idDelivery)+')');
  FDQCompEntrega.Open();

  if not FDQCompEntrega.IsEmpty then
  begin
    FDQCompEntrega.First;
    FDMTCompEntrega.Close;
    FDMTCompEntrega.Open;
    while not FDQCompEntrega.Eof do
    begin
      FDMTCompEntrega.Insert;
      FDMTCompEntregaProdutoIdent.AsInteger := FDQCompEntregaIdentProd.AsInteger;
      FDMTCompEntregaProdutoCod.AsString := FDQCompEntregaCodigoProd.AsString;
      FDMTCompEntregaProdutoDescricao.AsString := FDQCompEntregaDescricaoProd.AsString;
      FDMTCompEntregaProdutoQtd.AsCurrency := FDQCompEntregaQtdeProd.AsCurrency;
      FDMTCompEntregaProdutoValor.AsCurrency := FDQCompEntregaValorProd.AsCurrency;
      FDMTCompEntregaProdutoTotal.AsCurrency := FDQCompEntregaTotalProd.AsCurrency;

      FDMTCompEntrega.Post;
      FDQCompEntrega.Next;
    end;

    FDMTQrCode.Close;
    FDMTQrCode.Open;
    FDMTQrCode.Insert;
    FDMTQrCodeQrcode.AsString := 'motoboy';
    FDMTQrCode.Post;

    frxReportCompEntrega.Variables.Clear;
    frxReportCompEntrega.Variables['troco'] := QuotedStr('R$ 0,00');
    frxReportCompEntrega.Variables['data'] := QuotedStr(DateTimeToStr(now));
    frxReportCompEntrega.Variables['garcon'] := QuotedStr(FDQProducaoProdutosPessoaNome.AsString);
    frxReportCompEntrega.Variables['mesa'] := QuotedStr(FormatFloat('000',idDelivery));
    frxReportCompEntrega.Variables['recebimento'] := QuotedStr(FDQCompEntregaTipoRecebimento.AsString);
    frxReportCompEntrega.Variables['rua'] := QuotedStr(FDQCompEntregaRua.AsString);
    frxReportCompEntrega.Variables['numero'] := QuotedStr(FDQCompEntregaNumero.AsString);
    frxReportCompEntrega.Variables['comp'] := QuotedStr(FDQCompEntregaComplemento.AsString);
    frxReportCompEntrega.Variables['bairro'] := QuotedStr(FDQCompEntregaBairro.AsString);
    frxReportCompEntrega.Variables['adic'] := QuotedStr('R$ 0,00');
    frxReportCompEntrega.Variables['desc'] := QuotedStr('R$ 0,00');
    frxReportCompEntrega.Variables['cliente'] := QuotedStr(FDQCompEntregaCliente.AsString);
    frxReportCompEntrega.Variables['telefone'] := QuotedStr(FDQCompEntregaDDD.AsString+'-'+FDQCompEntregaTelefone.AsString);
     frxReportCompEntrega.Variables['total'] := QuotedStr(FormatFloat('R$ 0.00',FDQCompEntregaDeliveryTotal.AsCurrency));

    frxReportCompEntrega.PrepareReport();
    frxReportCompEntrega.PrintOptions.Printer:='Padrão';
    frxReportCompEntrega.Print;

    //frxReportQrCodeEntrega.PrepareReport();
    //frxReportQrCodeEntrega.Print;
  end;
end;

procedure TDMPrincipal.ImprimeProducao(idDelivery: integer; entrega:string);
begin
try
    FDQImpressoras.Close;
    FDQImpressoras.Open();
    if FDQImpressoras.IsEmpty then
    begin
      abort;
    end;
    FDQImpressoras.First;
    while not FDQImpressoras.Eof do
    begin
      if FDQImpressorasIMP_grafica.AsBoolean then
      begin
        ImprimeProducaoGrafica(idDelivery,entrega);
      end else
      begin
        ImprimeProducaoGenerica(idDelivery,entrega);
      end;
      FDQImpressoras.Next;
    end;

  finally
    FDQProdutosPrinted.Close;
    FDQProdutosPrinted.SQL.Clear;
    FDQProdutosPrinted.SQL.add('select * from tbprodutodelivery ');
    FDQProdutosPrinted.SQL.add('WHERE (DeliveryIdentFkDelivery = '+IntToStr(idDelivery)+') AND (ProdutoDeliveryPrinted = 0)');
    FDQProdutosPrinted.Open();
    FDQProdutosPrinted.First;
    while not FDQProdutosPrinted.Eof do
    begin
      FDQProdutosPrinted.Edit;
      FDQProdutosPrintedProdutoDeliveryPrinted.AsBoolean := True;
      FDQProdutosPrinted.Post;
      FDQProdutosPrinted.Next;
    end;
  end;
end;

procedure TDMPrincipal.ImprimeProducaoGenerica(idDelivery: integer; entrega:string);
var
  memo1: TStringList;
  MemoOutput: TextFile;
  mesastr, obs: string;
  I : integer;
begin
  memo1 := TStringList.Create;
  FDQProducaoProdutos.Close;
  FDQProducaoProdutos.SQL.Clear;
  FDQProducaoProdutos.SQL.add(
      'SELECT                               ' +
      '   ProdutoEmpresaIdent,              ' +
      '   ProdutoDeliveryIdent,             ' +
      '   ProdutoEmpresaIdentFkProduto,     ' +
      '   PessoaNome,                       ' +
      '   ProdutoCodInterno,                ' +
      '   ProdutoDescr,                     ' +
      '   ProdutoDeliveryQtde,              ' +
      '   ProdutoDeliveryObservacao         ' +
      'FROM tbprodutodelivery a             ' +
      ' INNER JOIN tbprodutoempresa b on a.ProdutoEmpresaIdentFkProduto = b.ProdutoEmpresaIdent          ' +
      ' INNER JOIN evomodaux.produtos_impressoras c on c.PIMP_prod_id = b.ProdutoEmpresaIdent            ' +
      ' INNER JOIN tbpessoaempresa d on d.PessoaEmpresaIdent = ProdutoEmpresaPessoafkPessoaEmpresaIdent  ' +
      ' INNER JOIN tbpessoa e on e.PessoaIdent = d.PessoaIdentFkPessoaEmpresa                            ' +
      ' INNER JOIN tbproduto f on f.ProdutoIdent = b.ProdutoIdentFkProdutoEmpresa                        ' +
      'WHERE (DeliveryIdentFkDelivery = '+IntToStr(idDelivery)+') AND (ProdutoDeliveryPrinted = 0)       ' +
      ' AND (c.PIMP_impressora_id = :Pimpressora)'
      );
  FDQProducaoProdutos.ParamByName('Pimpressora').AsInteger := FDQImpressorasIMP_id_pk.AsInteger;
  FDQProducaoProdutos.Open();
  if not(FDQProducaoProdutos.IsEmpty) then
  begin
    FDQProducaoProdutos.First;
    memo1.Clear;
    mesastr := FormatFloat('000',idDelivery);

    memo1.add('-------------IMPRESSÃO DE PRODUÇÃO--------------');
    memo1.add('');
    memo1.add('PEDIDO:' + mesastr);
    memo1.add('USUÁRIO:' + FDQProducaoProdutosPessoaNome.AsString);
    memo1.add('DATA:' + DateTimeToStr(now));
    memo1.add('------------------------------------------------');
    memo1.add('TIPO:' + entrega);
    memo1.add('------------------------------------------------');
    memo1.add('Cod.  Descricao                           Qdt ');
    memo1.add('------------------------------------------------');
    while not FDQProducaoProdutos.Eof do
    begin
      memo1.add(' ' + preencheu(FDQProducaoProdutosProdutoCodInterno.AsString,' ', 'D', 4) + ' | ' +
      preencheu(FDQProducaoProdutosProdutoDescr.AsString, '.', 'D', 35) +
      preencheu(CurrToStr(FDQProducaoProdutosProdutoDeliveryQtde.AsCurrency),' ', 'D', 4));
//      FDQProducaoAdicionais.Close;
//      FDQProducaoAdicionais.SQL.Clear;
//      FDQProducaoAdicionais.SQL.Add('select * from mesa_adicionais '+
//      'where MADIC_mprod_fk = :PmesaProdutoId');
//      FDQProducaoAdicionais.ParamByName('PmesaProdutoId').AsInteger:= FDQProducaoProdutosmprod_id_pk.AsInteger;
//      FDQProducaoAdicionais.Open();
//      if not FDQProducaoAdicionais.IsEmpty then
//      begin
//
//      end;
      obs := FDQProducaoProdutosProdutoDeliveryObservacao.AsString;
      if obs <> '' then
        memo1.add('   Obs.' + obs);

      FDQProducaoProdutos.next;
    end;
    memo1.add('-                                            -');
    memo1.add('-----------------------------------------------');
    memo1.add('----------------Evo-Sistemas------------------');


    //memo1.add('----'+ FDQImpressorasIMP_descricao.AsString);

    FRMAddProduto.Memo1.Text:= memo1.Text;
    Vcl.Printers.Printer.PrinterIndex := Vcl.Printers.Printer.Printers.IndexOf(FDQImpressorasIMP_vinculo.AsString);
    AssignPrn(MemoOutput);                 //assigns a text-file variable to the printer.
    Rewrite(MemoOutput);                   //creates a new file and opens it
    Printer.Canvas.Font := FRMAddProduto.Memo1.Font;
    For I := 0 to Memo1.Count - 1 do
    WriteLn(MemoOutput, FRMAddProduto.Memo1.Lines[I]);   //puts it to the Printer Canvas
    CloseFile(MemoOutput);
  end;

end;

procedure TDMPrincipal.ImprimeProducaoGrafica(idDelivery: integer; entrega:string);
var
I :integer;
Obs:string;
begin
  FDMTComprovante.Close;
  FDMTComprovante.Open;
  FDQProducaoProdutos.Close;
  FDQProducaoProdutos.SQL.Clear;
  FDQProducaoProdutos.SQL.add(
      'SELECT                               ' +
      '   ProdutoEmpresaIdent,              ' +
      '   ProdutoDeliveryIdent,             ' +
      '   ProdutoEmpresaIdentFkProduto,     ' +
      '   PessoaNome,                       ' +
      '   ProdutoCodInterno,                ' +
      '   ProdutoDescr,                     ' +
      '   ProdutoDeliveryQtde,              ' +
      '   ProdutoDeliveryObservacao         ' +
      'FROM tbprodutodelivery a             ' +
      ' INNER JOIN tbprodutoempresa b on a.ProdutoEmpresaIdentFkProduto = b.ProdutoEmpresaIdent          ' +
      ' INNER JOIN evomodaux.produtos_impressoras c on c.PIMP_prod_id = b.ProdutoEmpresaIdent            ' +
      ' INNER JOIN tbpessoaempresa d on d.PessoaEmpresaIdent = ProdutoEmpresaPessoafkPessoaEmpresaIdent  ' +
      ' INNER JOIN tbpessoa e on e.PessoaIdent = d.PessoaIdentFkPessoaEmpresa                            ' +
      ' INNER JOIN tbproduto f on f.ProdutoIdent = b.ProdutoIdentFkProdutoEmpresa                        ' +
      'WHERE (DeliveryIdentFkDelivery = '+IntToStr(idDelivery)+') AND (ProdutoDeliveryPrinted = 0)       ' +
      ' AND (c.PIMP_impressora_id = :Pimpressora)'
      );
  FDQProducaoProdutos.ParamByName('Pimpressora').AsInteger := FDQImpressorasIMP_id_pk.AsInteger;
  FDQProducaoProdutos.Open();
  if not(FDQProducaoProdutos.IsEmpty) then
  begin
    FDQProducaoProdutos.First;
    while not FDQProducaoProdutos.Eof do
    begin
      FDMTComprovante.Append;
      FDMTComprovantecod_produto.AsString := FDQProducaoProdutosProdutoCodInterno.AsString;
      FDMTComprovantenome_produto.AsString := FDQProducaoProdutosProdutoDescr.AsString;
      FDMTComprovantevalor_prod.AsCurrency := 0;
      FDMTComprovantevalor_total.AsCurrency := 0;
      FDMTComprovanteqtd_produto.AsCurrency := FDQProducaoProdutosProdutoDeliveryQtde.AsCurrency;
      Obs := '';
      if FDQProducaoProdutosProdutoDeliveryObservacao.AsString <> '' then
      begin
        Obs :='Obs.: '+ FDQProducaoProdutosProdutoDeliveryObservacao.AsString;
      end;

      FDMTComprovantetestete.AsString := obs;
      FDMTComprovante.Post;
      FDQProducaoProdutos.Next;
    end;

    if not(FDQProducaoProdutos.IsEmpty) then
    begin
        frxReportProducao.Variables.Clear;
        frxReportProducao.Variables['titulo'] := QuotedStr('IMPRESSÃO DE PRODUÇÃO');
        frxReportProducao.Variables['data'] := QuotedStr(DateTimeToStr(now));
        frxReportProducao.Variables['garcon'] := QuotedStr(FDQProducaoProdutosPessoaNome.AsString);
        frxReportProducao.Variables['mesa'] := QuotedStr(FormatFloat('000',idDelivery));
        frxReportProducao.Variables['entrega'] := QuotedStr(entrega);
        frxReportProducao.PrepareReport();
        frxReportProducao.PrintOptions.ShowDialog := False;
        frxReportProducao.PrintOptions.Printer := FDQImpressorasIMP_vinculo.AsString;
        frxReportProducao.Print;
    end;
  end;
end;

procedure TDMPrincipal.imprimiRelatorioCaixa(tiporelatorio: Integer;
  valor: string);
begin
 if tiporelatorio = 1 then
  begin
    frxCaixa.Variables['Recebe'] := QuotedStr('SANGRIA');
    frxCaixa.Variables['DataHora'] := QuotedStr(DateToStr(now));
    frxCaixa.Variables['Valor'] := QuotedStr(valor);
    frxCaixa.Variables['Usuario'] := QuotedStr(Permissoes.nomeUsuario);
    frxCaixa.Variables['Caixa'] := QuotedStr(IntToStr(numabertura));
    frxCaixa.Variables['venda'] := QuotedStr('');
    frxCaixa.PrepareReport();
    frxCaixa.ShowPreparedReport;
  end;
  if tiporelatorio = 2 then
  begin
    frxCaixa.Variables['Recebe'] := QuotedStr('SUPRIMENTO');
    frxCaixa.Variables['DataHora'] := QuotedStr(DateToStr(now));
    frxCaixa.Variables['Valor'] := QuotedStr(valor);
    frxCaixa.Variables['Usuario'] := QuotedStr(Permissoes.nomeUsuario);
    frxCaixa.Variables['Caixa'] := QuotedStr(IntToStr(numabertura));
    frxCaixa.Variables['venda'] := QuotedStr('');
    frxCaixa.PrepareReport();
    frxCaixa.ShowPreparedReport;
  end;
  if tiporelatorio = 3 then
  begin
    frxCaixa.Variables['Recebe'] := QuotedStr('CANCELAMENTO');
    frxCaixa.Variables['DataHora'] := QuotedStr(DateToStr(now));
    frxCaixa.Variables['Valor'] := QuotedStr(valor);
    frxCaixa.Variables['Usuario'] := QuotedStr(Permissoes.nomeUsuario);
    frxCaixa.Variables['Caixa'] := QuotedStr(IntToStr(numabertura));
    frxCaixa.Variables['venda'] :=
      QuotedStr('Venda Cancelada:' +
      IntToStr(DMPrincipal.FDQRegistroscod_venda.AsInteger));
    frxCaixa.PrepareReport();
    frxCaixa.ShowPreparedReport;
  end;
end;

procedure TDMPrincipal.insertEventoRegistro(codevento: Integer; dataevento,
  responsavel, operador: string; fundotroco: Currency; numabertura: Integer;
  controlecaixa: Currency; codcliente: Integer; descontoTotal: Currency;
  codvenda: Integer; codstatusvenda: Boolean; statusVenda: string;
  troco: Currency; codusuario: Integer; cpfVenda: string);
begin
  FDQsenha.Close;
  FDQsenha.Open();
  DMPrincipal.FDQcontroleCaixaultimo.Close;
  DMPrincipal.FDQcontroleCaixaultimo.SQL.Clear;
  DMPrincipal.FDQcontroleCaixaultimo.SQL.Add('select * from evomodaux.registroeventos');
  DMPrincipal.FDQcontroleCaixaultimo.Open();
  DMPrincipal.FDQcontroleCaixaultimo.Insert;
  DMPrincipal.FDQcontroleCaixaultimocod_evento.AsInteger := codevento;
  DMPrincipal.FDQcontroleCaixaultimodata_evento.AsDateTime :=
    StrToDateTime(dataevento);
  DMPrincipal.FDQcontroleCaixaultimofundo_troco.AsString :=
    CurrToStr(fundotroco);
  DMPrincipal.FDQcontroleCaixaultimonum_abetura.AsInteger := numabertura;
  DMPrincipal.FDQcontroleCaixaultimocontroleCaixa.AsCurrency := controlecaixa;
  DMPrincipal.FDQcontroleCaixaultimoreposnsavel_evento.AsString := responsavel;
  DMPrincipal.FDQcontroleCaixaultimooperador_evento.AsString := operador;
  DMPrincipal.FDQcontroleCaixaultimocod_cliente.AsInteger := codcliente;
  DMPrincipal.FDQcontroleCaixaultimodesconto_total.AsCurrency := descontoTotal;
  DMPrincipal.FDQcontroleCaixaultimocod_venda.AsInteger := codvenda;
  DMPrincipal.FDQcontroleCaixaultimostatus_venda.AsBoolean := codstatusvenda;
  DMPrincipal.FDQcontroleCaixaultimostatus_vendaDesc.AsString := statusVenda;
  DMPrincipal.FDQcontroleCaixaultimotroco_venda.AsCurrency := troco;
  DMPrincipal.FDQcontroleCaixaultimocod_usuario.AsInteger := codusuario;
  DMPrincipal.FDQcontroleCaixaultimocpf_nfce.AsString := cpfVenda;
  DMPrincipal.FDQcontroleCaixaultimosenha.AsInteger :=
    FDQsenhasenha.AsInteger + 1;
  DMPrincipal.FDQcontroleCaixaultimo.Post;
end;

function TDMPrincipal.numabertura: Integer;
begin
// Traz o numero da ultima abertura de Caixa.
  FDQcontroleCaixaultimo.Close;
  FDQcontroleCaixaultimo.SQL.Clear;
  FDQcontroleCaixaultimo.SQL.Add
    ('select * from evomodaux.registroeventos where cod_evento=1  order by id desc limit 1');
  FDQcontroleCaixaultimo.Open();
  Result := FDQcontroleCaixaultimonum_abetura.AsInteger;
end;

function TDMPrincipal.preencheu(Campo, Letra, Alinhamento: String;
  Tamanho: Integer): string;

var i00 : Integer;
begin
   Campo := Trim(Campo);
    Result := '';
    for i00:=1 to Tamanho - Length(Campo) do Result := Result + Letra;
    if Alinhamento = 'E' then
       Result := Result + Campo
   else
        Result := Campo + Result;

end;


procedure TDMPrincipal.SmoothResize(apng: tpngobject;
  NuWidth, NuHeight: Integer);
var
  xscale, yscale: Single;
  sfrom_y, sfrom_x: Single;
  ifrom_y, ifrom_x: Integer;
  to_y, to_x: Integer;
  weight_x, weight_y: array [0 .. 1] of Single;
  weight: Single;
  new_red, new_green: Integer;
  new_blue, new_alpha: Integer;
  new_colortype: Integer;
  total_red, total_green: Single;
  total_blue, total_alpha: Single;
  IsAlpha: Boolean;
  ix, iy: Integer;
  bTmp: tpngobject;
  sli, slo: pRGBLine;
  ali, alo: pbytearray;
begin
  if not(apng.Header.ColorType in [COLOR_RGBALPHA, COLOR_RGB]) then
    raise Exception.Create('Only COLOR_RGBALPHA and COLOR_RGB formats' +
      ' are supported');
  IsAlpha := apng.Header.ColorType in [COLOR_RGBALPHA];
  if IsAlpha then
    new_colortype := COLOR_RGBALPHA
  else
    new_colortype := COLOR_RGB;
  bTmp := tpngobject.CreateBlank(new_colortype, 8, NuWidth, NuHeight);
  xscale := bTmp.Width / (apng.Width - 1);
  yscale := bTmp.Height / (apng.Height - 1);
  for to_y := 0 to bTmp.Height - 1 do
  begin
    sfrom_y := to_y / yscale;
    ifrom_y := Trunc(sfrom_y);
    weight_y[1] := sfrom_y - ifrom_y;
    weight_y[0] := 1 - weight_y[1];
    for to_x := 0 to bTmp.Width - 1 do
    begin
      sfrom_x := to_x / xscale;
      ifrom_x := Trunc(sfrom_x);
      weight_x[1] := sfrom_x - ifrom_x;
      weight_x[0] := 1 - weight_x[1];

      total_red := 0.0;
      total_green := 0.0;
      total_blue := 0.0;
      total_alpha := 0.0;
      for ix := 0 to 1 do
      begin
        for iy := 0 to 1 do
        begin
          sli := apng.Scanline[ifrom_y + iy];
          if IsAlpha then
            ali := apng.AlphaScanline[ifrom_y + iy];
          new_red := sli[ifrom_x + ix].rgbtRed;
          new_green := sli[ifrom_x + ix].rgbtGreen;
          new_blue := sli[ifrom_x + ix].rgbtBlue;
          if IsAlpha then
            new_alpha := ali[ifrom_x + ix];
          weight := weight_x[ix] * weight_y[iy];
          total_red := total_red + new_red * weight;
          total_green := total_green + new_green * weight;
          total_blue := total_blue + new_blue * weight;
          if IsAlpha then
            total_alpha := total_alpha + new_alpha * weight;
        end;
      end;
      slo := bTmp.Scanline[to_y];
      if IsAlpha then
        alo := bTmp.AlphaScanline[to_y];
      slo[to_x].rgbtRed := Round(total_red);
      slo[to_x].rgbtGreen := Round(total_green);
      slo[to_x].rgbtBlue := Round(total_blue);
      if IsAlpha then
        alo[to_x] := Round(total_alpha);
    end;
  end;
  apng.Assign(bTmp);
  bTmp.Free;
end;

function TDMPrincipal.SomenteNumero(snum: string): string;

var
s1, s2: string;
i: Integer;
begin
    s1 := snum;
    s2 := '';
    for i := 1 to Length(s1) do
      if s1[i] in ['0'..'9'] then
        s2 := s2 + s1[i];
    result := s2;
end;

function TDMPrincipal.statusCaixa: Boolean;
begin
  Result := False;
  FDQcontroleCaixaultimo.Close;
  FDQcontroleCaixaultimo.SQL.Clear;
  FDQcontroleCaixaultimo.SQL.Add
    ('select * from evomodaux.registroeventos where cod_evento=1 or cod_evento= 2  order by id desc limit 1');
  FDQcontroleCaixaultimo.Open();
  FDQcontroleCaixaultimo.First;
  if FDQcontroleCaixaultimocod_evento.AsInteger = 1 then
    Result := True;
end;


function TDMPrincipal.TColorToHex(Color: TColor): string;
begin
  result :=
  { red value }
    IntToHex(GetRValue(Color), 2) +
  { green value }
    IntToHex(GetGValue(Color), 2) +
  { blue value }
    IntToHex(GetBValue(Color), 2);
end;

end.
