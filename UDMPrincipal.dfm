object DMPrincipal: TDMPrincipal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 663
  Width = 1075
  object FDQProdutos: TFDQuery
    Connection = FDCevomodadm
    SQL.Strings = (
      'select * from vwtbprodutoempresa'
      
        'left join vwtbproduto on ProdutoIdentFkProdutoEmpresa = ProdutoI' +
        'dent')
    Left = 256
    Top = 120
    object FDQProdutosProdutoEmpresaIdent: TFDAutoIncField
      FieldName = 'ProdutoEmpresaIdent'
      Origin = 'ProdutoEmpresaIdent'
      ReadOnly = True
    end
    object FDQProdutosEmpresaIdentFkProdutoEmpresa: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'EmpresaIdentFkProdutoEmpresa'
      Origin = 'EmpresaIdentFkProdutoEmpresa'
    end
    object FDQProdutosEmpresaCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EmpresaCod'
      Origin = 'EmpresaCod'
      Size = 11
    end
    object FDQProdutosEmpresaRazaoSocial: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EmpresaRazaoSocial'
      Origin = 'EmpresaRazaoSocial'
      Size = 200
    end
    object FDQProdutosProdutoIdentFkProdutoEmpresa: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoIdentFkProdutoEmpresa'
      Origin = 'ProdutoIdentFkProdutoEmpresa'
    end
    object FDQProdutosProdutoCod: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoCod'
      Origin = 'ProdutoCod'
    end
    object FDQProdutosProdutoDescr: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoDescr'
      Origin = 'ProdutoDescr'
      Size = 200
    end
    object FDQProdutosProdutoEmpresaFlagEstoque: TWordField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoEmpresaFlagEstoque'
      Origin = 'ProdutoEmpresaFlagEstoque'
    end
    object FDQProdutosProdutoEmpresaFlagComposicao: TWordField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoEmpresaFlagComposicao'
      Origin = 'ProdutoEmpresaFlagComposicao'
    end
    object FDQProdutosProdutoEmpresaFlagVenda: TWordField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoEmpresaFlagVenda'
      Origin = 'ProdutoEmpresaFlagVenda'
    end
    object FDQProdutosProdutoEmpresaFlagTbPreco: TWordField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoEmpresaFlagTbPreco'
      Origin = 'ProdutoEmpresaFlagTbPreco'
    end
    object FDQProdutosProdutoEmpresaFlagSerial: TWordField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoEmpresaFlagSerial'
      Origin = 'ProdutoEmpresaFlagSerial'
    end
    object FDQProdutosProdutoEmpresaFlagSerialEstoque: TWordField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoEmpresaFlagSerialEstoque'
      Origin = 'ProdutoEmpresaFlagSerialEstoque'
    end
    object FDQProdutosProdutoEmpresaFlagLote: TWordField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoEmpresaFlagLote'
      Origin = 'ProdutoEmpresaFlagLote'
    end
    object FDQProdutosProdutoEmpresaFlagGrade: TWordField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoEmpresaFlagGrade'
      Origin = 'ProdutoEmpresaFlagGrade'
    end
    object FDQProdutosProdutoEmpresaFlagAdic: TWordField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoEmpresaFlagAdic'
      Origin = 'ProdutoEmpresaFlagAdic'
    end
    object FDQProdutosProdutoEmpresaFlagProducao: TWordField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoEmpresaFlagProducao'
      Origin = 'ProdutoEmpresaFlagProducao'
    end
    object FDQProdutosProdutoEmpresaFlagBalanca: TWordField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoEmpresaFlagBalanca'
      Origin = 'ProdutoEmpresaFlagBalanca'
    end
    object FDQProdutosProdutoEmpresaFlagImprimeValid: TWordField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoEmpresaFlagImprimeValid'
      Origin = 'ProdutoEmpresaFlagImprimeValid'
    end
    object FDQProdutosProdutoEmpresaFlagImprimeEmbal: TWordField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoEmpresaFlagImprimeEmbal'
      Origin = 'ProdutoEmpresaFlagImprimeEmbal'
    end
    object FDQProdutosProdutoEmpresaFlagQtde: TWordField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoEmpresaFlagQtde'
      Origin = 'ProdutoEmpresaFlagQtde'
    end
    object FDQProdutosProdutoEmpresaPrecoCusto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoEmpresaPrecoCusto'
      Origin = 'ProdutoEmpresaPrecoCusto'
      Precision = 12
    end
    object FDQProdutosProdutoEmpresaPrecoOutros: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoEmpresaPrecoOutros'
      Origin = 'ProdutoEmpresaPrecoOutros'
      Precision = 12
    end
    object FDQProdutosProdutoEmpresaCustoMedio: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoEmpresaCustoMedio'
      Origin = 'ProdutoEmpresaCustoMedio'
      Precision = 12
    end
    object FDQProdutosProdutoEmpresaCustoReal: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoEmpresaCustoReal'
      Origin = 'ProdutoEmpresaCustoReal'
      Precision = 12
    end
    object FDQProdutosProdutoEmpresaCustoFinal: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoEmpresaCustoFinal'
      Origin = 'ProdutoEmpresaCustoFinal'
      Precision = 12
    end
    object FDQProdutosProdutoEmpresaObs: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoEmpresaObs'
      Origin = 'ProdutoEmpresaObs'
      Size = 100
    end
    object FDQProdutosProdutoEmpresaCSOSN: TWordField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoEmpresaCSOSN'
      Origin = 'ProdutoEmpresaCSOSN'
    end
    object FDQProdutosCFOPIdentFkProdutoEmpresa: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'CFOPIdentFkProdutoEmpresa'
      Origin = 'CFOPIdentFkProdutoEmpresa'
    end
    object FDQProdutosCFOPCod: TWordField
      AutoGenerateValue = arDefault
      FieldName = 'CFOPCod'
      Origin = 'CFOPCod'
    end
    object FDQProdutosCFOPDescr: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOPDescr'
      Origin = 'CFOPDescr'
      Size = 300
    end
    object FDQProdutosNCMIdentFkProdutoEmpresa: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'NCMIdentFkProdutoEmpresa'
      Origin = 'NCMIdentFkProdutoEmpresa'
    end
    object FDQProdutosNCMCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCMCod'
      Origin = 'NCMCod'
    end
    object FDQProdutosNCMDescr: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCMDescr'
      Origin = 'NCMDescr'
      Size = 200
    end
    object FDQProdutosUnidMedidaIdentifFkProdutoEmpresa: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'UnidMedidaIdentifFkProdutoEmpresa'
      Origin = 'UnidMedidaIdentifFkProdutoEmpresa'
    end
    object FDQProdutosUnidMedidaNome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UnidMedidaNome'
      Origin = 'UnidMedidaNome'
      Size = 100
    end
    object FDQProdutosUnidMedidaAbrev: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UnidMedidaAbrev'
      Origin = 'UnidMedidaAbrev'
      Size = 10
    end
    object FDQProdutosProdutoEmpresaValidadeDias: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoEmpresaValidadeDias'
      Origin = 'ProdutoEmpresaValidadeDias'
    end
    object FDQProdutosCESTIdentFkProdutoEmpresa: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'CESTIdentFkProdutoEmpresa'
      Origin = 'CESTIdentFkProdutoEmpresa'
    end
    object FDQProdutosCESTCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CESTCod'
      Origin = 'CESTCod'
    end
    object FDQProdutosCESTDescr: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CESTDescr'
      Origin = 'CESTDescr'
      Size = 1000
    end
    object FDQProdutosProdutoEmpresaGTIN13: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoEmpresaGTIN13'
      Origin = 'ProdutoEmpresaGTIN13'
    end
    object FDQProdutosProdutoIdent: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoIdent'
      Origin = 'ProdutoIdent'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQProdutosProdutoCod_1: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoCod_1'
      Origin = 'ProdutoCod'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQProdutosProdutoCodInterno: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoCodInterno'
      Origin = 'ProdutoCodInterno'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQProdutosProdutoStatus: TWordField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoStatus'
      Origin = 'ProdutoStatus'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQProdutosProdutoFlagServico: TWordField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoFlagServico'
      Origin = 'ProdutoFlagServico'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQProdutosProdutoDescr_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoDescr_1'
      Origin = 'ProdutoDescr'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 272
    Top = 464
  end
  object FDQUnidade: TFDQuery
    SQL.Strings = (
      'select * from unidades')
    Left = 24
    Top = 16
    object FDQUnidadeUNI_id_pk: TFDAutoIncField
      FieldName = 'UNI_id_pk'
      Origin = 'UNI_id_pk'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQUnidadeUNI_nome: TStringField
      FieldName = 'UNI_nome'
      Origin = 'UNI_nome'
      Required = True
      Size = 45
    end
    object FDQUnidadeUNI_abreviado: TStringField
      FieldName = 'UNI_abreviado'
      Origin = 'UNI_abreviado'
      Required = True
      Size = 10
    end
    object FDQUnidadeUNI_pesavel: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'UNI_pesavel'
      Origin = 'UNI_pesavel'
    end
  end
  object FDQPessoas: TFDQuery
    Connection = FDCevomodadm
    SQL.Strings = (
      'select * from vwtbpessoa')
    Left = 24
    Top = 192
    object FDQPessoasPessoaIdent: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaIdent'
      Origin = 'PessoaIdent'
    end
    object FDQPessoasPessoaCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaCod'
      Origin = 'PessoaCod'
    end
    object FDQPessoasPessoaTipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaTipo'
      Origin = 'PessoaTipo'
      FixedChar = True
      Size = 1
    end
    object FDQPessoasPessoaNomeRazaoSocial: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaNomeRazaoSocial'
      Origin = 'PessoaNomeRazaoSocial'
      Size = 200
    end
    object FDQPessoasPessoaNomeFantasia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaNomeFantasia'
      Origin = 'PessoaNomeFantasia'
      Size = 200
    end
    object FDQPessoasPessoaNome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaNome'
      Origin = 'PessoaNome'
      Size = 200
    end
    object FDQPessoasPessoaSexo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaSexo'
      Origin = 'PessoaSexo'
      FixedChar = True
      Size = 1
    end
    object FDQPessoasPessoaDtNascimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaDtNascimento'
      Origin = 'PessoaDtNascimento'
    end
    object FDQPessoasPessoaDtFundacao: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaDtFundacao'
      Origin = 'PessoaDtFundacao'
    end
    object FDQPessoasPaisIdentNacFkPessoa: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'PaisIdentNacFkPessoa'
      Origin = 'PaisIdentNacFkPessoa'
    end
    object FDQPessoasPaisNome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PaisNome'
      Origin = 'PaisNome'
      Size = 100
    end
    object FDQPessoasCidadeIdentNaturalFkPessoa: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'CidadeIdentNaturalFkPessoa'
      Origin = 'CidadeIdentNaturalFkPessoa'
    end
    object FDQPessoasCidadeCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CidadeCod'
      Origin = 'CidadeCod'
      Size = 10
    end
    object FDQPessoasCidadeNome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CidadeNome'
      Origin = 'CidadeNome'
      Size = 100
    end
    object FDQPessoasEstadoSiglaFkCidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EstadoSiglaFkCidade'
      Origin = 'EstadoSiglaFkCidade'
      Size = 3
    end
    object FDQPessoasEstadoCivilIdentFkPessoa: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'EstadoCivilIdentFkPessoa'
      Origin = 'EstadoCivilIdentFkPessoa'
    end
    object FDQPessoasEstadoCivilSigla: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EstadoCivilSigla'
      Origin = 'EstadoCivilSigla'
    end
    object FDQPessoasEstadoCivilDescr: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EstadoCivilDescr'
      Origin = 'EstadoCivilDescr'
      Size = 100
    end
    object FDQPessoasPessoaNomePai: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaNomePai'
      Origin = 'PessoaNomePai'
      Size = 200
    end
    object FDQPessoasPessoaNomeMae: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaNomeMae'
      Origin = 'PessoaNomeMae'
      Size = 200
    end
    object FDQPessoasPessoaNomeConjuge: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaNomeConjuge'
      Origin = 'PessoaNomeConjuge'
      Size = 200
    end
    object FDQPessoasPessoaNomeContato: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaNomeContato'
      Origin = 'PessoaNomeContato'
      Size = 200
    end
    object FDQPessoasPessoaCNPJCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaCNPJCPF'
      Origin = 'PessoaCNPJCPF'
      Size = 45
    end
    object FDQPessoasPessoaCNPJCPFConjuge: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaCNPJCPFConjuge'
      Origin = 'PessoaCNPJCPFConjuge'
      Size = 45
    end
    object FDQPessoasPessoaInscrEstad: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaInscrEstad'
      Origin = 'PessoaInscrEstad'
    end
    object FDQPessoasIndicInscEstadIdentFkPessoa: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'IndicInscEstadIdentFkPessoa'
      Origin = 'IndicInscEstadIdentFkPessoa'
    end
    object FDQPessoasIndicInscEstadCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IndicInscEstadCod'
      Origin = 'IndicInscEstadCod'
      Size = 3
    end
    object FDQPessoasIndicInscEstadDescr: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IndicInscEstadDescr'
      Origin = 'IndicInscEstadDescr'
      Size = 100
    end
    object FDQPessoasPessoaInscrMunic: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaInscrMunic'
      Origin = 'PessoaInscrMunic'
    end
    object FDQPessoasPessoaInscrSuframa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaInscrSuframa'
      Origin = 'PessoaInscrSuframa'
      Size = 10
    end
    object FDQPessoasPessoaIdentidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaIdentidade'
      Origin = 'PessoaIdentidade'
    end
    object FDQPessoasPessoaIdentidadeDtEmis: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaIdentidadeDtEmis'
      Origin = 'PessoaIdentidadeDtEmis'
    end
    object FDQPessoasPessoaIdentidadeOrgaoEmis: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaIdentidadeOrgaoEmis'
      Origin = 'PessoaIdentidadeOrgaoEmis'
      Size = 50
    end
    object FDQPessoasEstadoIdentIdentidadeEmisFkPessoa: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'EstadoIdentIdentidadeEmisFkPessoa'
      Origin = 'EstadoIdentIdentidadeEmisFkPessoa'
    end
    object FDQPessoasEstadoNome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EstadoNome'
      Origin = 'EstadoNome'
      Size = 100
    end
    object FDQPessoasEstadoSigla: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EstadoSigla'
      Origin = 'EstadoSigla'
      Size = 3
    end
    object FDQPessoasOcupacaoIdentFkPessoa: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'OcupacaoIdentFkPessoa'
      Origin = 'OcupacaoIdentFkPessoa'
    end
    object FDQPessoasOcupacaoCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OcupacaoCod'
      Origin = 'OcupacaoCod'
      Size = 7
    end
    object FDQPessoasOcupacaoTitulo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OcupacaoTitulo'
      Origin = 'OcupacaoTitulo'
      Size = 200
    end
    object FDQPessoasPessoaSenha: TVarBytesField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaSenha'
      Origin = 'PessoaSenha'
      Size = 255
    end
    object FDQPessoasPessoaFoneDDI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaFoneDDI'
      Origin = 'PessoaFoneDDI'
      Size = 10
    end
    object FDQPessoasPessoaFoneDDD: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaFoneDDD'
      Origin = 'PessoaFoneDDD'
      Size = 3
    end
    object FDQPessoasPessoaNrFone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaNrFone'
      Origin = 'PessoaNrFone'
    end
    object FDQPessoasPessoaNrFax: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaNrFax'
      Origin = 'PessoaNrFax'
    end
    object FDQPessoasPessoaEmail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaEmail'
      Origin = 'PessoaEmail'
      Size = 100
    end
    object FDQPessoasPessoaSiteWeb: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaSiteWeb'
      Origin = 'PessoaSiteWeb'
      Size = 100
    end
    object FDQPessoasPessoaFacebook: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaFacebook'
      Origin = 'PessoaFacebook'
      Size = 100
    end
    object FDQPessoasPessoaInstagram: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaInstagram'
      Origin = 'PessoaInstagram'
      Size = 100
    end
    object FDQPessoasPessoaLinkedin: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaLinkedin'
      Origin = 'PessoaLinkedin'
      Size = 100
    end
    object FDQPessoasPessoaWhatSapp: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaWhatSapp'
      Origin = 'PessoaWhatSapp'
      Size = 100
    end
    object FDQPessoasPessoaTwitter: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaTwitter'
      Origin = 'PessoaTwitter'
      Size = 100
    end
    object FDQPessoasPessoaRespons: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaRespons'
      Origin = 'PessoaRespons'
      Size = 100
    end
    object FDQPessoasPessoaEndereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaEndereco'
      Origin = 'PessoaEndereco'
      Size = 300
    end
    object FDQPessoasPessoaEnderecoNr: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaEnderecoNr'
      Origin = 'PessoaEnderecoNr'
      Size = 10
    end
    object FDQPessoasPessoaEnderecoCompl: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaEnderecoCompl'
      Origin = 'PessoaEnderecoCompl'
      Size = 200
    end
    object FDQPessoasCEPIdentFkPessoa: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'CEPIdentFkPessoa'
      Origin = 'CEPIdentFkPessoa'
    end
    object FDQPessoasCEPCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEPCod'
      Origin = 'CEPCod'
      FixedChar = True
      Size = 8
    end
    object FDQPessoasPessoaFoto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaFoto'
      Origin = 'PessoaFoto'
    end
  end
  object FDQTipoRecebimento: TFDQuery
    SQL.Strings = (
      'select * from tiporecebimento')
    Left = 32
    Top = 328
    object FDQTipoRecebimentoTREC_id_pk: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TREC_id_pk'
      Origin = 'TREC_id_pk'
    end
    object FDQTipoRecebimentoTREC_codigo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TREC_codigo'
      Origin = 'TREC_codigo'
    end
    object FDQTipoRecebimentoTREC_descricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TREC_descricao'
      Origin = 'TREC_descricao'
      Size = 100
    end
    object FDQTipoRecebimentoTREC_ativo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TREC_ativo'
      Origin = 'TREC_ativo'
      Size = 100
    end
    object FDQTipoRecebimentoTREC_categoriarecb_fk: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TREC_categoriarecb_fk'
      Origin = 'TREC_categoriarecb_fk'
    end
    object FDQTipoRecebimentoTREC_pessoa_fk: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TREC_pessoa_fk'
      Origin = 'TREC_pessoa_fk'
    end
  end
  object FDQExecSQL: TFDQuery
    Left = 40
    Top = 472
  end
  object FDQSecao: TFDQuery
    SQL.Strings = (
      'select * from secao')
    Left = 24
    Top = 240
    object FDQSecaoSEC_id_pk: TFDAutoIncField
      FieldName = 'SEC_id_pk'
      Origin = 'SEC_id_pk'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQSecaoSEC_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SEC_nome'
      Origin = 'SEC_nome'
      Size = 45
    end
    object FDQSecaoSEC_descricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SEC_descricao'
      Origin = 'SEC_descricao'
      Size = 50
    end
    object FDQSecaoSEC_timestamp: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'SEC_timestamp'
      Origin = 'SEC_timestamp'
    end
    object FDQSecaoSEC_foto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'SEC_foto'
      Origin = 'SEC_foto'
    end
  end
  object FDQImpressoras: TFDQuery
    Connection = FDCevomodadm
    SQL.Strings = (
      'Select * from evomodaux.impressoras')
    Left = 688
    Top = 320
    object FDQImpressorasIMP_id_pk: TFDAutoIncField
      FieldName = 'IMP_id_pk'
      Origin = 'IMP_id_pk'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQImpressorasIMP_descricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMP_descricao'
      Origin = 'IMP_descricao'
      Size = 60
    end
    object FDQImpressorasIMP_ativa: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'IMP_ativa'
      Origin = 'IMP_ativa'
    end
    object FDQImpressorasIMP_vinculo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMP_vinculo'
      Origin = 'IMP_vinculo'
      Size = 200
    end
    object FDQImpressorasIMP_grafica: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'IMP_grafica'
      Origin = 'IMP_grafica'
    end
  end
  object FDQPrinted: TFDQuery
    SQL.Strings = (
      'SELECT * FROM mesa_produto'
      
        'INNER JOIN produtos ON mesa_produto.mprod_prod_fk = produtos.PRO' +
        'D_id_pk'
      'ORDER BY `mesa_produto`.`mprod_order_id` ASC limit 0')
    Left = 104
    Top = 16
    object FDQPrintedmprod_id_pk: TFDAutoIncField
      FieldName = 'mprod_id_pk'
      Origin = 'mprod_id_pk'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQPrintedmprod_prod_fk: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'mprod_prod_fk'
      Origin = 'mprod_prod_fk'
    end
    object FDQPrintedmprod_mesa_fk: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'mprod_mesa_fk'
      Origin = 'mprod_mesa_fk'
    end
    object FDQPrintedmprod_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'mprod_id'
      Origin = 'mprod_id'
    end
    object FDQPrintedmprod_qtd: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'mprod_qtd'
      Origin = 'mprod_qtd'
      Precision = 10
    end
    object FDQPrintedmprod_preco: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'mprod_preco'
      Origin = 'mprod_preco'
      Precision = 10
    end
    object FDQPrintedmprod_total: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'mprod_total'
      Origin = 'mprod_total'
      Precision = 10
    end
    object FDQPrintedmprod_printed: TShortintField
      AutoGenerateValue = arDefault
      FieldName = 'mprod_printed'
      Origin = 'mprod_printed'
    end
    object FDQPrintedmprod_observacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mprod_observacao'
      Origin = 'mprod_observacao'
      Size = 200
    end
    object FDQPrintedmprod_prod_cod: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'mprod_prod_cod'
      Origin = 'mprod_prod_cod'
    end
    object FDQPrintedmprod_order_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'mprod_order_id'
      Origin = 'mprod_order_id'
    end
    object FDQPrintedmprod_garcon_usuario_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'mprod_garcon_usuario_id'
      Origin = 'mprod_garcon_usuario_id'
    end
    object FDQPrintedmprod_garcon_usuario_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mprod_garcon_usuario_nome'
      Origin = 'mprod_garcon_usuario_nome'
      Size = 45
    end
    object FDQPrintedmprod_garcon_taxa: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'mprod_garcon_taxa'
      Origin = 'mprod_garcon_taxa'
      Precision = 10
    end
    object FDQPrintedmprod_data: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'mprod_data'
      Origin = 'mprod_data'
    end
    object FDQPrintedmprod_desconto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'mprod_desconto'
      Origin = 'mprod_desconto'
      Precision = 10
    end
    object FDQPrintedPROD_id_pk: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_id_pk'
      Origin = 'PROD_id_pk'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQPrintedPROD_cod: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_cod'
      Origin = 'PROD_cod'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQPrintedPROD_cod_interno: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_cod_interno'
      Origin = 'PROD_cod_interno'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQPrintedPROD_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_status'
      Origin = 'PROD_status'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object FDQPrintedPROD_tipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_tipo'
      Origin = 'PROD_tipo'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object FDQPrintedPROD_descricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_descricao'
      Origin = 'PROD_descricao'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQPrintedPROD_secao_fk: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_secao_fk'
      Origin = 'PROD_secao_fk'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQPrintedPROD_fornecedor_fk: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_fornecedor_fk'
      Origin = 'PROD_fornecedor_fk'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQPrintedPROD_custo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_custo'
      Origin = 'PROD_custo'
      ProviderFlags = []
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object FDQPrintedPROD_outrosvalores: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_outrosvalores'
      Origin = 'PROD_outrosvalores'
      ProviderFlags = []
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object FDQPrintedPROD_custo_final: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_custo_final'
      Origin = 'PROD_custo_final'
      ProviderFlags = []
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object FDQPrintedPROD_qtd_estoque: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_qtd_estoque'
      Origin = 'PROD_qtd_estoque'
      ProviderFlags = []
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object FDQPrintedPROD_observacoes: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_observacoes'
      Origin = 'PROD_observacoes'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object FDQPrintedPROD_preco1: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_preco1'
      Origin = 'PROD_preco1'
      ProviderFlags = []
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object FDQPrintedPROD_preco2: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_preco2'
      Origin = 'PROD_preco2'
      ProviderFlags = []
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object FDQPrintedPROD_preco3: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_preco3'
      Origin = 'PROD_preco3'
      ProviderFlags = []
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object FDQPrintedPROD_preco4: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_preco4'
      Origin = 'PROD_preco4'
      ProviderFlags = []
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object FDQPrintedPROD_margem1: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_margem1'
      Origin = 'PROD_margem1'
      ProviderFlags = []
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object FDQPrintedPROD_margem2: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_margem2'
      Origin = 'PROD_margem2'
      ProviderFlags = []
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object FDQPrintedPROD_margem3: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_margem3'
      Origin = 'PROD_margem3'
      ProviderFlags = []
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object FDQPrintedPROD_margem4: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_margem4'
      Origin = 'PROD_margem4'
      ProviderFlags = []
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object FDQPrintedPROD_grade: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_grade'
      Origin = 'PROD_grade'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQPrintedPROD_master: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_master'
      Origin = 'PROD_master'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQPrintedPROD_foto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_foto'
      Origin = 'PROD_foto'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQPrintedPROD_foto_icon: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_foto_icon'
      Origin = 'PROD_foto_icon'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQPrintedPROD_csosn: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_csosn'
      Origin = 'PROD_csosn'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQPrintedPROD_cfop: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_cfop'
      Origin = 'PROD_cfop'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQPrintedPROD_ncm_fk: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_ncm_fk'
      Origin = 'PROD_ncm_fk'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQPrintedPROD_adicional: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_adicional'
      Origin = 'PROD_adicional'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQPrintedPROD_unidade_fk: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_unidade_fk'
      Origin = 'PROD_unidade_fk'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQPrintedPROD_composto: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_composto'
      Origin = 'PROD_composto'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQPrintedPROD_producao: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_producao'
      Origin = 'PROD_producao'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQPrintedPROD_validade: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_validade'
      Origin = 'PROD_validade'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQPrintedPROD_balanca: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_balanca'
      Origin = 'PROD_balanca'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQPrintedPROD_impvalidade: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_impvalidade'
      Origin = 'PROD_impvalidade'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQPrintedPROD_impembalagem: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_impembalagem'
      Origin = 'PROD_impembalagem'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQPrintedPROD_cest: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_cest'
      Origin = 'PROD_cest'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object FDQPrintedPROD_aliq_pis: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_aliq_pis'
      Origin = 'PROD_aliq_pis'
      ProviderFlags = []
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object FDQPrintedPROD_aliq_cof: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_aliq_cof'
      Origin = 'PROD_aliq_cof'
      ProviderFlags = []
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object FDQPrintedPROD_pis_cst_ent: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_pis_cst_ent'
      Origin = 'PROD_pis_cst_ent'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object FDQPrintedPROD_pis_cst_saida: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_pis_cst_saida'
      Origin = 'PROD_pis_cst_saida'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object FDQPrintedPROD_cof_cst_ent: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_cof_cst_ent'
      Origin = 'PROD_cof_cst_ent'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object FDQPrintedPROD_cof_cst_saida: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_cof_cst_saida'
      Origin = 'PROD_cof_cst_saida'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object FDQPrintedPROD_tipo_piscofins: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_tipo_piscofins'
      Origin = 'PROD_tipo_piscofins'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object FDQPrintedPROD_outras_despesas: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_outras_despesas'
      Origin = 'PROD_outras_despesas'
      ProviderFlags = []
      ReadOnly = True
      Precision = 10
    end
    object FDQPrintedPROD_pedir_qtd: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_pedir_qtd'
      Origin = 'PROD_pedir_qtd'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQPrintedPROD_combustivel: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_combustivel'
      Origin = 'PROD_combustivel'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQPrintedPROD_codigoanp: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_codigoanp'
      Origin = 'PROD_codigoanp'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQPrintedPROD_impressora1_fk: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_impressora1_fk'
      Origin = 'PROD_impressora1_fk'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQPrintedPROD_impressora2_fk: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_impressora2_fk'
      Origin = 'PROD_impressora2_fk'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQPrintedPROD_hasgtin: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_hasgtin'
      Origin = 'PROD_hasgtin'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQPrintedPROD_lastchange: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_lastchange'
      Origin = 'PROD_lastchange'
    end
    object FDQPrintedPROD_tickets: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_tickets'
      Origin = 'PROD_tickets'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQPrintedPROD_principal: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_principal'
      Origin = 'PROD_principal'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQPrintedPROD_obs_microterminal: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_obs_microterminal'
      Origin = 'PROD_obs_microterminal'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQVerificaImpressoras: TFDQuery
    SQL.Strings = (
      
        'select *,CAD_impressoras.IMP_terminal_1 as IMP_impressora1,CAD_i' +
        'mpressoras.IMP_id_pk as IMP_id1,CAD_impressoras.IMP_apelido as I' +
        'MP_apelido1,'
      'CAD_impressora2.IMP_terminal_1 as IMP_impressora2,'
      'CAD_impressora2.IMP_apelido as IMP_apelido2,'
      'CAD_impressora2.IMP_id_pk as IMP_id2 from mesa_produto '
      
        '                   INNER JOIN produtos ON mesa_produto.mprod_pro' +
        'd_fk = produtos.PROD_id_pk'
      
        '                    left  join CAD_impressoras  ON IMP_id_pk=pro' +
        'dutos.PROD_impressora1_fk'
      
        #9#9'    left  join CAD_impressoras as CAD_impressora2 ON CAD_impre' +
        'ssora2.IMP_id_pk = produtos.PROD_impressora2_fk'
      '                    where mprod_mesa_fk = 37 AND'
      '                    mprod_printed = 1 AND'
      '                    (produtos.Prod_producao  = 1 or '
      '                    produtos.Prod_adicional = 1)'
      '                    ORDER BY `mesa_produto`.`mprod_order_id` ASC')
    Left = 256
    Top = 72
    object FDQVerificaImpressorasmprod_id_pk: TFDAutoIncField
      FieldName = 'mprod_id_pk'
      Origin = 'mprod_id_pk'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQVerificaImpressorasmprod_prod_fk: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'mprod_prod_fk'
      Origin = 'mprod_prod_fk'
    end
    object FDQVerificaImpressorasmprod_mesa_fk: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'mprod_mesa_fk'
      Origin = 'mprod_mesa_fk'
    end
    object FDQVerificaImpressorasmprod_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'mprod_id'
      Origin = 'mprod_id'
    end
    object FDQVerificaImpressorasmprod_qtd: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'mprod_qtd'
      Origin = 'mprod_qtd'
      Precision = 10
    end
    object FDQVerificaImpressorasmprod_preco: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'mprod_preco'
      Origin = 'mprod_preco'
      Precision = 10
    end
    object FDQVerificaImpressorasmprod_total: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'mprod_total'
      Origin = 'mprod_total'
      Precision = 10
    end
    object FDQVerificaImpressorasmprod_printed: TShortintField
      AutoGenerateValue = arDefault
      FieldName = 'mprod_printed'
      Origin = 'mprod_printed'
    end
    object FDQVerificaImpressorasmprod_observacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mprod_observacao'
      Origin = 'mprod_observacao'
      Size = 200
    end
    object FDQVerificaImpressorasmprod_prod_cod: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'mprod_prod_cod'
      Origin = 'mprod_prod_cod'
    end
    object FDQVerificaImpressorasmprod_order_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'mprod_order_id'
      Origin = 'mprod_order_id'
    end
    object FDQVerificaImpressorasmprod_garcon_usuario_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'mprod_garcon_usuario_id'
      Origin = 'mprod_garcon_usuario_id'
    end
    object FDQVerificaImpressorasmprod_garcon_usuario_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mprod_garcon_usuario_nome'
      Origin = 'mprod_garcon_usuario_nome'
      Size = 45
    end
    object FDQVerificaImpressorasmprod_garcon_taxa: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'mprod_garcon_taxa'
      Origin = 'mprod_garcon_taxa'
      Precision = 10
    end
    object FDQVerificaImpressorasmprod_data: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'mprod_data'
      Origin = 'mprod_data'
    end
    object FDQVerificaImpressorasmprod_desconto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'mprod_desconto'
      Origin = 'mprod_desconto'
      Precision = 10
    end
    object FDQVerificaImpressorasPROD_id_pk: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_id_pk'
      Origin = 'PROD_id_pk'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVerificaImpressorasPROD_cod: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_cod'
      Origin = 'PROD_cod'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVerificaImpressorasPROD_cod_interno: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_cod_interno'
      Origin = 'PROD_cod_interno'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVerificaImpressorasPROD_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_status'
      Origin = 'PROD_status'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object FDQVerificaImpressorasPROD_tipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_tipo'
      Origin = 'PROD_tipo'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object FDQVerificaImpressorasPROD_descricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_descricao'
      Origin = 'PROD_descricao'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQVerificaImpressorasPROD_secao_fk: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_secao_fk'
      Origin = 'PROD_secao_fk'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVerificaImpressorasPROD_fornecedor_fk: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_fornecedor_fk'
      Origin = 'PROD_fornecedor_fk'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVerificaImpressorasPROD_custo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_custo'
      Origin = 'PROD_custo'
      ProviderFlags = []
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object FDQVerificaImpressorasPROD_outrosvalores: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_outrosvalores'
      Origin = 'PROD_outrosvalores'
      ProviderFlags = []
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object FDQVerificaImpressorasPROD_custo_final: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_custo_final'
      Origin = 'PROD_custo_final'
      ProviderFlags = []
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object FDQVerificaImpressorasPROD_qtd_estoque: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_qtd_estoque'
      Origin = 'PROD_qtd_estoque'
      ProviderFlags = []
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object FDQVerificaImpressorasPROD_observacoes: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_observacoes'
      Origin = 'PROD_observacoes'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object FDQVerificaImpressorasPROD_preco1: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_preco1'
      Origin = 'PROD_preco1'
      ProviderFlags = []
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object FDQVerificaImpressorasPROD_preco2: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_preco2'
      Origin = 'PROD_preco2'
      ProviderFlags = []
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object FDQVerificaImpressorasPROD_preco3: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_preco3'
      Origin = 'PROD_preco3'
      ProviderFlags = []
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object FDQVerificaImpressorasPROD_preco4: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_preco4'
      Origin = 'PROD_preco4'
      ProviderFlags = []
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object FDQVerificaImpressorasPROD_margem1: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_margem1'
      Origin = 'PROD_margem1'
      ProviderFlags = []
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object FDQVerificaImpressorasPROD_margem2: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_margem2'
      Origin = 'PROD_margem2'
      ProviderFlags = []
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object FDQVerificaImpressorasPROD_margem3: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_margem3'
      Origin = 'PROD_margem3'
      ProviderFlags = []
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object FDQVerificaImpressorasPROD_margem4: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_margem4'
      Origin = 'PROD_margem4'
      ProviderFlags = []
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object FDQVerificaImpressorasPROD_grade: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_grade'
      Origin = 'PROD_grade'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVerificaImpressorasPROD_master: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_master'
      Origin = 'PROD_master'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVerificaImpressorasPROD_foto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_foto'
      Origin = 'PROD_foto'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVerificaImpressorasPROD_foto_icon: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_foto_icon'
      Origin = 'PROD_foto_icon'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVerificaImpressorasPROD_csosn: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_csosn'
      Origin = 'PROD_csosn'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVerificaImpressorasPROD_cfop: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_cfop'
      Origin = 'PROD_cfop'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVerificaImpressorasPROD_ncm_fk: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_ncm_fk'
      Origin = 'PROD_ncm_fk'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVerificaImpressorasPROD_adicional: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_adicional'
      Origin = 'PROD_adicional'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVerificaImpressorasPROD_unidade_fk: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_unidade_fk'
      Origin = 'PROD_unidade_fk'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVerificaImpressorasPROD_composto: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_composto'
      Origin = 'PROD_composto'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVerificaImpressorasPROD_producao: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_producao'
      Origin = 'PROD_producao'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVerificaImpressorasPROD_validade: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_validade'
      Origin = 'PROD_validade'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVerificaImpressorasPROD_balanca: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_balanca'
      Origin = 'PROD_balanca'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVerificaImpressorasPROD_impvalidade: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_impvalidade'
      Origin = 'PROD_impvalidade'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVerificaImpressorasPROD_impembalagem: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_impembalagem'
      Origin = 'PROD_impembalagem'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVerificaImpressorasPROD_cest: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_cest'
      Origin = 'PROD_cest'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object FDQVerificaImpressorasPROD_aliq_pis: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_aliq_pis'
      Origin = 'PROD_aliq_pis'
      ProviderFlags = []
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object FDQVerificaImpressorasPROD_aliq_cof: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_aliq_cof'
      Origin = 'PROD_aliq_cof'
      ProviderFlags = []
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object FDQVerificaImpressorasPROD_pis_cst_ent: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_pis_cst_ent'
      Origin = 'PROD_pis_cst_ent'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object FDQVerificaImpressorasPROD_pis_cst_saida: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_pis_cst_saida'
      Origin = 'PROD_pis_cst_saida'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object FDQVerificaImpressorasPROD_cof_cst_ent: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_cof_cst_ent'
      Origin = 'PROD_cof_cst_ent'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object FDQVerificaImpressorasPROD_cof_cst_saida: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_cof_cst_saida'
      Origin = 'PROD_cof_cst_saida'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object FDQVerificaImpressorasPROD_tipo_piscofins: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_tipo_piscofins'
      Origin = 'PROD_tipo_piscofins'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object FDQVerificaImpressorasPROD_outras_despesas: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_outras_despesas'
      Origin = 'PROD_outras_despesas'
      ProviderFlags = []
      ReadOnly = True
      Precision = 10
    end
    object FDQVerificaImpressorasPROD_pedir_qtd: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_pedir_qtd'
      Origin = 'PROD_pedir_qtd'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVerificaImpressorasPROD_combustivel: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_combustivel'
      Origin = 'PROD_combustivel'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVerificaImpressorasPROD_codigoanp: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_codigoanp'
      Origin = 'PROD_codigoanp'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVerificaImpressorasPROD_impressora1_fk: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_impressora1_fk'
      Origin = 'PROD_impressora1_fk'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVerificaImpressorasPROD_impressora2_fk: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_impressora2_fk'
      Origin = 'PROD_impressora2_fk'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVerificaImpressorasPROD_hasgtin: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_hasgtin'
      Origin = 'PROD_hasgtin'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVerificaImpressorasPROD_lastchange: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_lastchange'
      Origin = 'PROD_lastchange'
    end
    object FDQVerificaImpressorasPROD_tickets: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_tickets'
      Origin = 'PROD_tickets'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVerificaImpressorasPROD_principal: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_principal'
      Origin = 'PROD_principal'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVerificaImpressorasPROD_obs_microterminal: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_obs_microterminal'
      Origin = 'PROD_obs_microterminal'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVerificaImpressorasIMP_id_pk: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IMP_id_pk'
      Origin = 'IMP_id_pk'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVerificaImpressorasIMP_apelido: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMP_apelido'
      Origin = 'IMP_apelido'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object FDQVerificaImpressorasIMP_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMP_nome'
      Origin = 'IMP_nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object FDQVerificaImpressorasIMP_terminal_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMP_terminal_1'
      Origin = 'IMP_terminal_1'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object FDQVerificaImpressorasIMP_terminal_3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMP_terminal_3'
      Origin = 'IMP_terminal_3'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object FDQVerificaImpressorasIMP_terminal_: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMP_terminal_'
      Origin = 'IMP_terminal_'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object FDQVerificaImpressorasIMP_id_pk_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IMP_id_pk_1'
      Origin = 'IMP_id_pk'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVerificaImpressorasIMP_apelido_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMP_apelido_1'
      Origin = 'IMP_apelido'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object FDQVerificaImpressorasIMP_nome_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMP_nome_1'
      Origin = 'IMP_nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object FDQVerificaImpressorasIMP_terminal_1_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMP_terminal_1_1'
      Origin = 'IMP_terminal_1'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object FDQVerificaImpressorasIMP_terminal_3_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMP_terminal_3_1'
      Origin = 'IMP_terminal_3'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object FDQVerificaImpressorasIMP_terminal__1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMP_terminal__1'
      Origin = 'IMP_terminal_'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object FDQVerificaImpressorasIMP_impressora1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMP_impressora1'
      Origin = 'IMP_terminal_1'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object FDQVerificaImpressorasIMP_id1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IMP_id1'
      Origin = 'IMP_id_pk'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQVerificaImpressorasIMP_apelido1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMP_apelido1'
      Origin = 'IMP_apelido'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object FDQVerificaImpressorasIMP_impressora2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMP_impressora2'
      Origin = 'IMP_terminal_1'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object FDQVerificaImpressorasIMP_apelido2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMP_apelido2'
      Origin = 'IMP_apelido'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object FDQVerificaImpressorasIMP_id2: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IMP_id2'
      Origin = 'IMP_id_pk'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQPedidos: TFDQuery
    SQL.Strings = (
      'select * from pedido_impressao')
    Left = 264
    Top = 416
    object FDQPedidosId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQPedidoscod_mesa: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_mesa'
      Origin = 'cod_mesa'
    end
    object FDQPedidostexto_impressao: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'texto_impressao'
      Origin = 'texto_impressao'
      BlobType = ftMemo
    end
    object FDQPedidosimpresso: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'impresso'
      Origin = 'impresso'
    end
    object FDQPedidosimpressora: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'impressora'
      Origin = 'impressora'
      Size = 255
    end
  end
  object FDQpermissoes: TFDQuery
    SQL.Strings = (
      'select * from permissoes')
    Left = 29
    Top = 285
    object FDQpermissoesId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQpermissoesusuarioLogin: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'usuarioLogin'
      Origin = 'usuarioLogin'
      Size = 50
    end
    object FDQpermissoesusuarioSenha: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'usuarioSenha'
      Origin = 'usuarioSenha'
      Size = 10
    end
    object FDQpermissoesabrirCaixa: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'abrirCaixa'
      Origin = 'abrirCaixa'
    end
    object FDQpermissoesfazSangria: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'fazSangria'
      Origin = 'fazSangria'
    end
    object FDQpermissoesfazSuprimento: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'fazSuprimento'
      Origin = 'fazSuprimento'
    end
    object FDQpermissoesfechaCaixa: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'fechaCaixa'
      Origin = 'fechaCaixa'
    end
    object FDQpermissoesfechaPDV: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'fechaPDV'
      Origin = 'fechaPDV'
    end
    object FDQpermissoesmudaValorUni: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'mudaValorUni'
      Origin = 'mudaValorUni'
    end
    object FDQpermissoesmudaQtd: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'mudaQtd'
      Origin = 'mudaQtd'
    end
    object FDQpermissoesabrirPDV: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'abrirPDV'
      Origin = 'abrirPDV'
    end
    object FDQpermissoesid_EvoEmissor: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_EvoEmissor'
      Origin = 'id_EvoEmissor'
    end
    object FDQpermissoesfazDevolucao: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'fazDevolucao'
      Origin = 'fazDevolucao'
    end
  end
  object FDQProducaoProdutos: TFDQuery
    Connection = FDCevomodadm
    SQL.Strings = (
      'select'
      '  ProdutoEmpresaIdent,'
      '  ProdutoDeliveryIdent,'
      '  ProdutoEmpresaIdentFkProduto,'
      '  PessoaNome,'
      '  ProdutoCodInterno,'
      '  ProdutoDescr,'
      '  ProdutoDeliveryQtde,'
      '  ProdutoDeliveryObservacao'
      'from tbprodutodelivery a'
      
        'inner join tbprodutoempresa b on a.ProdutoEmpresaIdentFkProduto ' +
        '= b.ProdutoEmpresaIdent'
      
        'inner join evomodaux.produtos_impressoras c on c.PIMP_prod_id = ' +
        'b.ProdutoEmpresaIdent '
      
        'inner join tbpessoaempresa d on d.PessoaEmpresaIdent = ProdutoEm' +
        'presaPessoafkPessoaEmpresaIdent'
      
        'inner join tbpessoa e on e.PessoaIdent = d.PessoaIdentFkPessoaEm' +
        'presa'
      
        'inner join tbproduto f on f.ProdutoIdent = b.ProdutoIdentFkProdu' +
        'toEmpresa')
    Left = 688
    Top = 368
    object FDQProducaoProdutosProdutoEmpresaIdent: TFDAutoIncField
      FieldName = 'ProdutoEmpresaIdent'
      Origin = 'ProdutoEmpresaIdent'
      ReadOnly = True
    end
    object FDQProducaoProdutosProdutoDeliveryIdent: TFDAutoIncField
      FieldName = 'ProdutoDeliveryIdent'
      Origin = 'ProdutoDeliveryIdent'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQProducaoProdutosProdutoEmpresaIdentFkProduto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoEmpresaIdentFkProduto'
      Origin = 'ProdutoEmpresaIdentFkProduto'
    end
    object FDQProducaoProdutosPessoaNome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaNome'
      Origin = 'PessoaNome'
      Size = 200
    end
    object FDQProducaoProdutosProdutoCodInterno: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoCodInterno'
      Origin = 'ProdutoCodInterno'
    end
    object FDQProducaoProdutosProdutoDescr: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoDescr'
      Origin = 'ProdutoDescr'
      Size = 200
    end
    object FDQProducaoProdutosProdutoDeliveryQtde: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoDeliveryQtde'
      Origin = 'ProdutoDeliveryQtde'
      Precision = 12
    end
    object FDQProducaoProdutosProdutoDeliveryObservacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoDeliveryObservacao'
      Origin = 'ProdutoDeliveryObservacao'
      Size = 255
    end
  end
  object FDQRegistroEventos: TFDQuery
    SQL.Strings = (
      'select * from registroeventos')
    Left = 112
    Top = 312
    object FDQRegistroEventosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQRegistroEventoscod_evento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_evento'
      Origin = 'cod_evento'
    end
    object FDQRegistroEventoscod_venda: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_venda'
      Origin = 'cod_venda'
    end
    object FDQRegistroEventosdata_evento: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data_evento'
      Origin = 'data_evento'
    end
    object FDQRegistroEventosfundo_troco: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'fundo_troco'
      Origin = 'fundo_troco'
      Precision = 14
    end
    object FDQRegistroEventosnum_abetura: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'num_abetura'
      Origin = 'num_abetura'
    end
    object FDQRegistroEventoscontroleCaixa: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'controleCaixa'
      Origin = 'controleCaixa'
      Precision = 14
    end
    object FDQRegistroEventosdesconto_total: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'desconto_total'
      Origin = 'desconto_total'
    end
    object FDQRegistroEventostroco_venda: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'troco_venda'
      Origin = 'troco_venda'
      Precision = 14
    end
    object FDQRegistroEventoscod_usuario: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_usuario'
      Origin = 'cod_usuario'
    end
    object FDQRegistroEventosreposnsavel_evento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'reposnsavel_evento'
      Origin = 'reposnsavel_evento'
      Size = 255
    end
    object FDQRegistroEventosoperador_evento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'operador_evento'
      Origin = 'operador_evento'
      Size = 255
    end
    object FDQRegistroEventoscod_cliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_cliente'
      Origin = 'cod_cliente'
    end
    object FDQRegistroEventoscpf_nfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf_nfce'
      Origin = 'cpf_nfce'
      Size = 255
    end
    object FDQRegistroEventosufDestinario_nfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ufDestinario_nfce'
      Origin = 'ufDestinario_nfce'
      Size = 255
    end
    object FDQRegistroEventospreVendaEmissor: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'preVendaEmissor'
      Origin = 'preVendaEmissor'
    end
    object FDQRegistroEventosnumero_Nfce: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'numero_Nfce'
      Origin = 'numero_Nfce'
    end
    object FDQRegistroEventoschave_acessoNfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'chave_acessoNfce'
      Origin = 'chave_acessoNfce'
      Size = 255
    end
    object FDQRegistroEventosnumero_autorizacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'numero_autorizacao'
      Origin = 'numero_autorizacao'
      Size = 255
    end
    object FDQRegistroEventosstatus_nfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'status_nfce'
      Origin = 'status_nfce'
      Size = 255
    end
    object FDQRegistroEventosxml_nfce: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'xml_nfce'
      Origin = 'xml_nfce'
    end
    object FDQRegistroEventosdata_nfce: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data_nfce'
      Origin = 'data_nfce'
    end
    object FDQRegistroEventosmotivo_nfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'motivo_nfce'
      Origin = 'motivo_nfce'
      Size = 255
    end
    object FDQRegistroEventosrecibo_nfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'recibo_nfce'
      Origin = 'recibo_nfce'
      Size = 255
    end
    object FDQRegistroEventosprotocolo_nfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'protocolo_nfce'
      Origin = 'protocolo_nfce'
      Size = 255
    end
    object FDQRegistroEventoscodRetorno_nfce: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codRetorno_nfce'
      Origin = 'codRetorno_nfce'
    end
    object FDQRegistroEventosstatus_venda: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'status_venda'
      Origin = 'status_venda'
    end
    object FDQRegistroEventosstatus_vendaDesc: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'status_vendaDesc'
      Origin = 'status_vendaDesc'
      Size = 255
    end
    object FDQRegistroEventosxml_cancelamento: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'xml_cancelamento'
      Origin = 'xml_cancelamento'
    end
    object FDQRegistroEventosprotocolo_cancelNfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'protocolo_cancelNfce'
      Origin = 'protocolo_cancelNfce'
      Size = 255
    end
    object FDQRegistroEventosdata_cancelNfce: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data_cancelNfce'
      Origin = 'data_cancelNfce'
    end
    object FDQRegistroEventosmotivo_cancelNfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'motivo_cancelNfce'
      Origin = 'motivo_cancelNfce'
      Size = 255
    end
    object FDQRegistroEventoscodRetorno_cancelNfce: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codRetorno_cancelNfce'
      Origin = 'codRetorno_cancelNfce'
    end
    object FDQRegistroEventosExported: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Exported'
      Origin = 'Exported'
    end
    object FDQRegistroEventosLast_Export: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'Last_Export'
      Origin = 'Last_Export'
    end
    object FDQRegistroEventossenha: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'senha'
      Origin = 'senha'
    end
  end
  object FDQcontroleCaixaultimo: TFDQuery
    Connection = FDCevomodadm
    SQL.Strings = (
      
        'select * from registroeventos where cod_evento=1 or cod_evento= ' +
        '2  order by id desc limit 1')
    Left = 33
    Top = 429
    object FDQcontroleCaixaultimoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQcontroleCaixaultimocod_evento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_evento'
      Origin = 'cod_evento'
    end
    object FDQcontroleCaixaultimodata_evento: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data_evento'
      Origin = 'data_evento'
    end
    object FDQcontroleCaixaultimofundo_troco: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'fundo_troco'
      Origin = 'fundo_troco'
      Precision = 14
    end
    object FDQcontroleCaixaultimonum_abetura: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'num_abetura'
      Origin = 'num_abetura'
    end
    object FDQcontroleCaixaultimocontroleCaixa: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'controleCaixa'
      Origin = 'controleCaixa'
      Precision = 14
    end
    object FDQcontroleCaixaultimoreposnsavel_evento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'reposnsavel_evento'
      Origin = 'reposnsavel_evento'
      Size = 255
    end
    object FDQcontroleCaixaultimooperador_evento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'operador_evento'
      Origin = 'operador_evento'
      Size = 255
    end
    object FDQcontroleCaixaultimocod_cliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_cliente'
      Origin = 'cod_cliente'
    end
    object FDQcontroleCaixaultimochave_acessoNfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'chave_acessoNfce'
      Origin = 'chave_acessoNfce'
      Size = 255
    end
    object FDQcontroleCaixaultimostatus_nfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'status_nfce'
      Origin = 'status_nfce'
      Size = 255
    end
    object FDQcontroleCaixaultimoxml_nfce: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'xml_nfce'
      Origin = 'xml_nfce'
    end
    object FDQcontroleCaixaultimodata_nfce: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data_nfce'
      Origin = 'data_nfce'
    end
    object FDQcontroleCaixaultimodesconto_total: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'desconto_total'
      Origin = 'desconto_total'
    end
    object FDQcontroleCaixaultimocod_venda: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_venda'
      Origin = 'cod_venda'
    end
    object FDQcontroleCaixaultimostatus_venda: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'status_venda'
      Origin = 'status_venda'
    end
    object FDQcontroleCaixaultimostatus_vendaDesc: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'status_vendaDesc'
      Origin = 'status_vendaDesc'
      Size = 255
    end
    object FDQcontroleCaixaultimotroco_venda: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'troco_venda'
      Origin = 'troco_venda'
      Precision = 14
    end
    object FDQcontroleCaixaultimoxml_cancelamento: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'xml_cancelamento'
      Origin = 'xml_cancelamento'
    end
    object FDQcontroleCaixaultimopreVendaEmissor: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'preVendaEmissor'
      Origin = 'preVendaEmissor'
    end
    object FDQcontroleCaixaultimonumero_autorizacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'numero_autorizacao'
      Origin = 'numero_autorizacao'
      Size = 255
    end
    object FDQcontroleCaixaultimocod_usuario: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_usuario'
      Origin = 'cod_usuario'
    end
    object FDQcontroleCaixaultimonumero_Nfce: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'numero_Nfce'
      Origin = 'numero_Nfce'
    end
    object FDQcontroleCaixaultimocpf_nfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf_nfce'
      Origin = 'cpf_nfce'
      Size = 255
    end
    object FDQcontroleCaixaultimoufDestinario_nfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ufDestinario_nfce'
      Origin = 'ufDestinario_nfce'
      Size = 255
    end
    object FDQcontroleCaixaultimomotivo_nfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'motivo_nfce'
      Origin = 'motivo_nfce'
      Size = 255
    end
    object FDQcontroleCaixaultimorecibo_nfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'recibo_nfce'
      Origin = 'recibo_nfce'
      Size = 255
    end
    object FDQcontroleCaixaultimoprotocolo_cancelNfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'protocolo_cancelNfce'
      Origin = 'protocolo_cancelNfce'
      Size = 255
    end
    object FDQcontroleCaixaultimodata_cancelNfce: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data_cancelNfce'
      Origin = 'data_cancelNfce'
    end
    object FDQcontroleCaixaultimomotivo_cancelNfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'motivo_cancelNfce'
      Origin = 'motivo_cancelNfce'
      Size = 255
    end
    object FDQcontroleCaixaultimocodRetorno_cancelNfce: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codRetorno_cancelNfce'
      Origin = 'codRetorno_cancelNfce'
    end
    object FDQcontroleCaixaultimocodRetorno_nfce: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codRetorno_nfce'
      Origin = 'codRetorno_nfce'
    end
    object FDQcontroleCaixaultimoprotocolo_nfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'protocolo_nfce'
      Origin = 'protocolo_nfce'
      Size = 255
    end
    object FDQcontroleCaixaultimosenha: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'senha'
      Origin = 'senha'
    end
  end
  object FDQultimaVenda: TFDQuery
    SQL.Strings = (
      'select *  from saida_itens order by id desc limit 1')
    Left = 109
    Top = 68
    object FDQultimaVendaId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQultimaVendacod_venda: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_venda'
      Origin = 'cod_venda'
    end
    object FDQultimaVendadata_venda: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data_venda'
      Origin = 'data_venda'
    end
    object FDQultimaVendacod_produto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cod_produto'
      Origin = 'cod_produto'
      Size = 50
    end
    object FDQultimaVendanome_produto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_produto'
      Origin = 'nome_produto'
      Size = 255
    end
    object FDQultimaVendaqtd_produto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qtd_produto'
      Origin = 'qtd_produto'
    end
    object FDQultimaVendavalor_prod: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor_prod'
      Origin = 'valor_prod'
    end
    object FDQultimaVendavalor_total: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor_total'
      Origin = 'valor_total'
    end
    object FDQultimaVendacodigoCliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codigoCliente'
      Origin = 'codigoCliente'
    end
  end
  object FDQsenha: TFDQuery
    Connection = FDCevomodadm
    SQL.Strings = (
      'select senha from evomodaux.registroeventos'
      'where (cod_evento=5) or (cod_evento=2) '
      'order by id desc limit 1')
    Left = 112
    Top = 424
    object FDQsenhasenha: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'senha'
      Origin = 'senha'
    end
  end
  object frxCaixa: TfrxReport
    Version = '6.3.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42138.642140671300000000
    ReportOptions.LastChange = 43404.427676226850000000
    ReportOptions.VersionRelease = '2'
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 184
    Top = 320
    Datasets = <>
    Variables = <
      item
        Name = ' Proprias'
        Value = Null
      end
      item
        Name = 'Produto'
        Value = Null
      end
      item
        Name = 'Valor'
        Value = Null
      end
      item
        Name = 'Terminal'
        Value = Null
      end
      item
        Name = 'Pdv'
        Value = Null
      end
      item
        Name = 'DataHora'
        Value = Null
      end
      item
        Name = 'Empresa'
        Value = Null
      end
      item
        Name = 'Observacoes'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 79.000000000000000000
      PaperHeight = 70.000000000000000000
      PaperSize = 256
      LeftMargin = 4.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object Memo4: TfrxMemoView
        AllowVectorExport = True
        Top = 68.370130000000000000
        Width = 275.905690000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '-----------------------------------------------------')
        ParentFont = False
      end
      object Memo7: TfrxMemoView
        AllowVectorExport = True
        Top = 242.653680000000000000
        Width = 275.905690000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '-----------------------------------------------------')
        ParentFont = False
      end
      object DataHora: TfrxMemoView
        AllowVectorExport = True
        Top = 51.889920000000000000
        Width = 275.905690000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[DataHora]')
        ParentFont = False
      end
      object Memo9: TfrxMemoView
        AllowVectorExport = True
        Top = 9.779530000000000000
        Width = 275.905690000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Recebe]')
        ParentFont = False
      end
      object Valor: TfrxMemoView
        AllowVectorExport = True
        Top = 131.252010000000000000
        Width = 275.905690000000000000
        Height = 41.574830000000000000
        DisplayFormat.FormatStr = '%2.2f'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          'R$: [Valor]')
        ParentFont = False
      end
      object Produto: TfrxMemoView
        AllowVectorExport = True
        Top = 228.196970000000000000
        Width = 275.905690000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Usuario: [Usuario]          Caixa: [Caixa]')
        ParentFont = False
        Formats = <
          item
          end
          item
          end>
      end
      object Memo5: TfrxMemoView
        AllowVectorExport = True
        Top = 213.078850000000000000
        Width = 275.905690000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '-----------------------------------------------------')
        ParentFont = False
      end
      object Memo1: TfrxMemoView
        AllowVectorExport = True
        Left = 0.472480000000000000
        Top = 31.574830000000000000
        Width = 275.905690000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '-----------------------------------------------------')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        AllowVectorExport = True
        Top = 73.252010000000000000
        Width = 275.905690000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '-----------------------------------------------------')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        AllowVectorExport = True
        Left = 22.677180000000000000
        Top = 94.488250000000000000
        Width = 215.433210000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Memo.UTF8W = (
          '[venda]')
        ParentFont = False
      end
    end
  end
  object FDQRegistros: TFDQuery
    SQL.Strings = (
      'select * from registroeventos')
    Left = 45
    Top = 521
    object FDQRegistrosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQRegistroscod_evento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_evento'
      Origin = 'cod_evento'
    end
    object FDQRegistroscod_venda: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_venda'
      Origin = 'cod_venda'
    end
    object FDQRegistrosdata_evento: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data_evento'
      Origin = 'data_evento'
    end
    object FDQRegistrosfundo_troco: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'fundo_troco'
      Origin = 'fundo_troco'
      Precision = 14
    end
    object FDQRegistrosnum_abetura: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'num_abetura'
      Origin = 'num_abetura'
    end
    object FDQRegistroscontroleCaixa: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'controleCaixa'
      Origin = 'controleCaixa'
      Precision = 14
    end
    object FDQRegistrosdesconto_total: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'desconto_total'
      Origin = 'desconto_total'
    end
    object FDQRegistrostroco_venda: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'troco_venda'
      Origin = 'troco_venda'
      Precision = 14
    end
    object FDQRegistroscod_usuario: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_usuario'
      Origin = 'cod_usuario'
    end
    object FDQRegistrosreposnsavel_evento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'reposnsavel_evento'
      Origin = 'reposnsavel_evento'
      Size = 255
    end
    object FDQRegistrosoperador_evento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'operador_evento'
      Origin = 'operador_evento'
      Size = 255
    end
    object FDQRegistroscod_cliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_cliente'
      Origin = 'cod_cliente'
    end
    object FDQRegistroscpf_nfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf_nfce'
      Origin = 'cpf_nfce'
      Size = 255
    end
    object FDQRegistrosufDestinario_nfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ufDestinario_nfce'
      Origin = 'ufDestinario_nfce'
      Size = 255
    end
    object FDQRegistrospreVendaEmissor: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'preVendaEmissor'
      Origin = 'preVendaEmissor'
    end
    object FDQRegistrosnumero_Nfce: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'numero_Nfce'
      Origin = 'numero_Nfce'
    end
    object FDQRegistroschave_acessoNfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'chave_acessoNfce'
      Origin = 'chave_acessoNfce'
      Size = 255
    end
    object FDQRegistrosnumero_autorizacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'numero_autorizacao'
      Origin = 'numero_autorizacao'
      Size = 255
    end
    object FDQRegistrosstatus_nfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'status_nfce'
      Origin = 'status_nfce'
      Size = 255
    end
    object FDQRegistrosxml_nfce: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'xml_nfce'
      Origin = 'xml_nfce'
    end
    object FDQRegistrosdata_nfce: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data_nfce'
      Origin = 'data_nfce'
    end
    object FDQRegistrosmotivo_nfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'motivo_nfce'
      Origin = 'motivo_nfce'
      Size = 255
    end
    object FDQRegistrosrecibo_nfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'recibo_nfce'
      Origin = 'recibo_nfce'
      Size = 255
    end
    object FDQRegistrosprotocolo_nfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'protocolo_nfce'
      Origin = 'protocolo_nfce'
      Size = 255
    end
    object FDQRegistroscodRetorno_nfce: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codRetorno_nfce'
      Origin = 'codRetorno_nfce'
    end
    object FDQRegistrosstatus_venda: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'status_venda'
      Origin = 'status_venda'
    end
    object FDQRegistrosstatus_vendaDesc: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'status_vendaDesc'
      Origin = 'status_vendaDesc'
      Size = 255
    end
    object FDQRegistrosxml_cancelamento: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'xml_cancelamento'
      Origin = 'xml_cancelamento'
    end
    object FDQRegistrosprotocolo_cancelNfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'protocolo_cancelNfce'
      Origin = 'protocolo_cancelNfce'
      Size = 255
    end
    object FDQRegistrosdata_cancelNfce: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data_cancelNfce'
      Origin = 'data_cancelNfce'
    end
    object FDQRegistrosmotivo_cancelNfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'motivo_cancelNfce'
      Origin = 'motivo_cancelNfce'
      Size = 255
    end
    object FDQRegistroscodRetorno_cancelNfce: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codRetorno_cancelNfce'
      Origin = 'codRetorno_cancelNfce'
    end
    object FDQRegistrosExported: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Exported'
      Origin = 'Exported'
    end
    object FDQRegistrosLast_Export: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'Last_Export'
      Origin = 'Last_Export'
    end
  end
  object FDQConfiguracao: TFDQuery
    SQL.Strings = (
      'select * from configuracao')
    Left = 112
    Top = 208
    object FDQConfiguracaoId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQConfiguracaoservidor_pdv: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'servidor_pdv'
      Origin = 'servidor_pdv'
      Size = 255
    end
    object FDQConfiguracaoservidor_novo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'servidor_novo'
      Origin = 'servidor_novo'
      Size = 255
    end
    object FDQConfiguracaoporta_novo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'porta_novo'
      Origin = 'porta_novo'
      Size = 255
    end
    object FDQConfiguracaologin_novo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'login_novo'
      Origin = 'login_novo'
      Size = 255
    end
    object FDQConfiguracaosenha_novo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'senha_novo'
      Origin = 'senha_novo'
      Size = 255
    end
    object FDQConfiguracaonome_terminal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_terminal'
      Origin = 'nome_terminal'
      Size = 255
    end
    object FDQConfiguracaonumero_nfce: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'numero_nfce'
      Origin = 'numero_nfce'
    end
    object FDQConfiguracaonumero_lote: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'numero_lote'
      Origin = 'numero_lote'
    end
    object FDQConfiguracaonumeroSerie: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'numeroSerie'
      Origin = 'numeroSerie'
    end
    object FDQConfiguracaomodoNfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'modoNfce'
      Origin = 'modoNfce'
      Size = 50
    end
    object FDQConfiguracaoqtd_multiplicacao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'qtd_multiplicacao'
      Origin = 'qtd_multiplicacao'
    end
    object FDQConfiguracaotipoListagem_vendas: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'tipoListagem_vendas'
      Origin = 'tipoListagem_vendas'
    end
    object FDQConfiguracaotipoEmissao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'tipoEmissao'
      Origin = 'tipoEmissao'
    end
    object FDQConfiguracaoHabilitaImportacao: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'HabilitaImportacao'
      Origin = 'HabilitaImportacao'
    end
    object FDQConfiguracaointegracaoOnline: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'integracaoOnline'
      Origin = 'integracaoOnline'
    end
    object FDQConfiguracaointegracao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'integracao'
      Origin = 'integracao'
      Size = 1
    end
    object FDQConfiguracaoimpressaoSenha: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'impressaoSenha'
      Origin = 'impressaoSenha'
    end
    object FDQConfiguracaoprodutocomposto: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'produtocomposto'
      Origin = 'produtocomposto'
    end
  end
  object FDQambienteEmissao: TFDQuery
    SQL.Strings = (
      'select * from ambiente_emissao')
    Left = 112
    Top = 112
    object FDQambienteEmissaoId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQambienteEmissaonome_emissao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_emissao'
      Origin = 'nome_emissao'
      Size = 255
    end
  end
  object FDQInfNota: TFDQuery
    SQL.Strings = (
      'select * from configuracao')
    Left = 112
    Top = 256
    object FDQInfNotaId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQInfNotaservidor_pdv: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'servidor_pdv'
      Origin = 'servidor_pdv'
      Size = 255
    end
    object FDQInfNotaservidor_novo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'servidor_novo'
      Origin = 'servidor_novo'
      Size = 255
    end
    object FDQInfNotaporta_novo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'porta_novo'
      Origin = 'porta_novo'
      Size = 255
    end
    object FDQInfNotalogin_novo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'login_novo'
      Origin = 'login_novo'
      Size = 255
    end
    object FDQInfNotasenha_novo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'senha_novo'
      Origin = 'senha_novo'
      Size = 255
    end
    object FDQInfNotanome_terminal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_terminal'
      Origin = 'nome_terminal'
      Size = 255
    end
    object FDQInfNotanumero_nfce: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'numero_nfce'
      Origin = 'numero_nfce'
    end
    object FDQInfNotanumero_lote: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'numero_lote'
      Origin = 'numero_lote'
    end
    object FDQInfNotanumeroSerie: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'numeroSerie'
      Origin = 'numeroSerie'
    end
    object FDQInfNotamodoNfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'modoNfce'
      Origin = 'modoNfce'
      Size = 50
    end
    object FDQInfNotatipoListagem_vendas: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'tipoListagem_vendas'
      Origin = 'tipoListagem_vendas'
    end
    object FDQInfNotaqtd_multiplicacao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'qtd_multiplicacao'
      Origin = 'qtd_multiplicacao'
    end
  end
  object FDQFechamento: TFDQuery
    Connection = FDCevomodadm
    SQL.Strings = (
      
        'select *, SUM(valor_recebido)as Total from saida left join regis' +
        'troeventos on (saida.cod_venda = registroeventos.cod_venda) wher' +
        'e numabertura=2 and (tipo_recebimento='#39'Cartao de Credito'#39')')
    Left = 256
    Top = 368
    object FDQFechamentoId: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQFechamentocod_venda: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_venda'
      Origin = 'cod_venda'
    end
    object FDQFechamentodata_pagamento: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data_pagamento'
      Origin = 'data_pagamento'
    end
    object FDQFechamentotipo_recebimento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo_recebimento'
      Origin = 'tipo_recebimento'
      Size = 255
    end
    object FDQFechamentovalor_recebido: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor_recebido'
      Origin = 'valor_recebido'
    end
    object FDQFechamentovalor_total: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor_total'
      Origin = 'valor_total'
    end
    object FDQFechamentonumabertura: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'numabertura'
      Origin = 'numabertura'
    end
    object FDQFechamentocod_cliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_cliente'
      Origin = 'cod_cliente'
    end
    object FDQFechamentoTotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total'
      Origin = 'Total'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQFechamentoid_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_1'
      Origin = 'id'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQFechamentocod_evento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_evento'
      Origin = 'cod_evento'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQFechamentocod_venda_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_venda_1'
      Origin = 'cod_venda'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQFechamentodata_evento: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data_evento'
      Origin = 'data_evento'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQFechamentofundo_troco: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'fundo_troco'
      Origin = 'fundo_troco'
      ProviderFlags = []
      ReadOnly = True
      Precision = 14
    end
    object FDQFechamentonum_abetura: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'num_abetura'
      Origin = 'num_abetura'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQFechamentocontroleCaixa: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'controleCaixa'
      Origin = 'controleCaixa'
      ProviderFlags = []
      ReadOnly = True
      Precision = 14
    end
    object FDQFechamentodesconto_total: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'desconto_total'
      Origin = 'desconto_total'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQFechamentotroco_venda: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'troco_venda'
      Origin = 'troco_venda'
      ProviderFlags = []
      ReadOnly = True
      Precision = 14
    end
    object FDQFechamentocod_usuario: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_usuario'
      Origin = 'cod_usuario'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQFechamentoreposnsavel_evento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'reposnsavel_evento'
      Origin = 'reposnsavel_evento'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object FDQFechamentooperador_evento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'operador_evento'
      Origin = 'operador_evento'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object FDQFechamentocod_cliente_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_cliente_1'
      Origin = 'cod_cliente'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQFechamentocpf_nfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf_nfce'
      Origin = 'cpf_nfce'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object FDQFechamentoufDestinario_nfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ufDestinario_nfce'
      Origin = 'ufDestinario_nfce'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object FDQFechamentopreVendaEmissor: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'preVendaEmissor'
      Origin = 'preVendaEmissor'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQFechamentonumero_Nfce: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'numero_Nfce'
      Origin = 'numero_Nfce'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQFechamentochave_acessoNfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'chave_acessoNfce'
      Origin = 'chave_acessoNfce'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object FDQFechamentonumero_autorizacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'numero_autorizacao'
      Origin = 'numero_autorizacao'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object FDQFechamentostatus_nfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'status_nfce'
      Origin = 'status_nfce'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object FDQFechamentoxml_nfce: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'xml_nfce'
      Origin = 'xml_nfce'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQFechamentodata_nfce: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data_nfce'
      Origin = 'data_nfce'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQFechamentomotivo_nfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'motivo_nfce'
      Origin = 'motivo_nfce'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object FDQFechamentorecibo_nfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'recibo_nfce'
      Origin = 'recibo_nfce'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object FDQFechamentoprotocolo_nfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'protocolo_nfce'
      Origin = 'protocolo_nfce'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object FDQFechamentocodRetorno_nfce: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codRetorno_nfce'
      Origin = 'codRetorno_nfce'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQFechamentostatus_venda: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'status_venda'
      Origin = 'status_venda'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQFechamentostatus_vendaDesc: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'status_vendaDesc'
      Origin = 'status_vendaDesc'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object FDQFechamentoxml_cancelamento: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'xml_cancelamento'
      Origin = 'xml_cancelamento'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQFechamentoprotocolo_cancelNfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'protocolo_cancelNfce'
      Origin = 'protocolo_cancelNfce'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object FDQFechamentodata_cancelNfce: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data_cancelNfce'
      Origin = 'data_cancelNfce'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQFechamentomotivo_cancelNfce: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'motivo_cancelNfce'
      Origin = 'motivo_cancelNfce'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object FDQFechamentocodRetorno_cancelNfce: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codRetorno_cancelNfce'
      Origin = 'codRetorno_cancelNfce'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQFechamentoExported: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Exported'
      Origin = 'Exported'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQFechamentoLast_Export: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'Last_Export'
      Origin = 'Last_Export'
    end
  end
  object FDQSangria: TFDQuery
    SQL.Strings = (
      
        'select *,sum(fundo_troco)as total_sangria  from registroeventos ' +
        'where cod_evento=3 ')
    Left = 112
    Top = 160
    object FDQSangriaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQSangriacod_evento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_evento'
      Origin = 'cod_evento'
    end
    object FDQSangriadata_evento: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data_evento'
      Origin = 'data_evento'
    end
    object FDQSangriafundo_troco: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'fundo_troco'
      Origin = 'fundo_troco'
      Precision = 14
    end
    object FDQSangrianum_abetura: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'num_abetura'
      Origin = 'num_abetura'
    end
    object FDQSangriacontroleCaixa: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'controleCaixa'
      Origin = 'controleCaixa'
      Precision = 14
    end
    object FDQSangriareposnsavel_evento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'reposnsavel_evento'
      Origin = 'reposnsavel_evento'
      Size = 255
    end
    object FDQSangriaoperador_evento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'operador_evento'
      Origin = 'operador_evento'
      Size = 255
    end
    object FDQSangriatotal_sangria: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'total_sangria'
      Origin = 'total_sangria'
      ProviderFlags = []
      ReadOnly = True
      Precision = 36
      Size = 4
    end
  end
  object FDQSuprimento: TFDQuery
    SQL.Strings = (
      
        'select *,sum(fundo_troco)as total_suprimento  from registroevent' +
        'os where cod_evento=4 and num_abetura=15')
    Left = 104
    Top = 480
    object FDQSuprimentoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQSuprimentocod_evento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_evento'
      Origin = 'cod_evento'
    end
    object FDQSuprimentodata_evento: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data_evento'
      Origin = 'data_evento'
    end
    object FDQSuprimentofundo_troco: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'fundo_troco'
      Origin = 'fundo_troco'
      Precision = 14
    end
    object FDQSuprimentonum_abetura: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'num_abetura'
      Origin = 'num_abetura'
    end
    object FDQSuprimentocontroleCaixa: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'controleCaixa'
      Origin = 'controleCaixa'
      Precision = 14
    end
    object FDQSuprimentoreposnsavel_evento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'reposnsavel_evento'
      Origin = 'reposnsavel_evento'
      Size = 255
    end
    object FDQSuprimentooperador_evento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'operador_evento'
      Origin = 'operador_evento'
      Size = 255
    end
    object FDQSuprimentototal_suprimento: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'total_suprimento'
      Origin = 'total_suprimento'
      ProviderFlags = []
      ReadOnly = True
      Precision = 36
      Size = 4
    end
  end
  object FDQfundo: TFDQuery
    SQL.Strings = (
      'select * from registroeventos')
    Left = 256
    Top = 312
    object FDQfundoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQfundocod_evento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_evento'
      Origin = 'cod_evento'
    end
    object FDQfundodata_evento: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data_evento'
      Origin = 'data_evento'
    end
    object FDQfundofundo_troco: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'fundo_troco'
      Origin = 'fundo_troco'
      Precision = 14
    end
    object FDQfundonum_abetura: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'num_abetura'
      Origin = 'num_abetura'
    end
    object FDQfundocontroleCaixa: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'controleCaixa'
      Origin = 'controleCaixa'
      Precision = 14
    end
    object FDQfundoreposnsavel_evento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'reposnsavel_evento'
      Origin = 'reposnsavel_evento'
      Size = 255
    end
    object FDQfundooperador_evento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'operador_evento'
      Origin = 'operador_evento'
      Size = 255
    end
  end
  object FDQProdutosPrinted: TFDQuery
    Connection = FDCevomodadm
    SQL.Strings = (
      'select * from tbprodutodelivery')
    Left = 688
    Top = 416
    object FDQProdutosPrintedProdutoDeliveryIdent: TFDAutoIncField
      FieldName = 'ProdutoDeliveryIdent'
      Origin = 'ProdutoDeliveryIdent'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQProdutosPrintedDeliveryIdentFkDelivery: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DeliveryIdentFkDelivery'
      Origin = 'DeliveryIdentFkDelivery'
    end
    object FDQProdutosPrintedProdutoEmpresaIdentFkProduto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoEmpresaIdentFkProduto'
      Origin = 'ProdutoEmpresaIdentFkProduto'
    end
    object FDQProdutosPrintedProdutoDeliveryQtde: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoDeliveryQtde'
      Origin = 'ProdutoDeliveryQtde'
      Precision = 12
    end
    object FDQProdutosPrintedProdutoDeliveryValorUnitario: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoDeliveryValorUnitario'
      Origin = 'ProdutoDeliveryValorUnitario'
      Precision = 12
    end
    object FDQProdutosPrintedProdutoDeliveryValorAcrescimo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoDeliveryValorAcrescimo'
      Origin = 'ProdutoDeliveryValorAcrescimo'
      Precision = 12
    end
    object FDQProdutosPrintedProdutoDeliveryValorDesconto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoDeliveryValorDesconto'
      Origin = 'ProdutoDeliveryValorDesconto'
      Precision = 12
    end
    object FDQProdutosPrintedProdutoDeliveryValorTotal: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoDeliveryValorTotal'
      Origin = 'ProdutoDeliveryValorTotal'
      Precision = 12
    end
    object FDQProdutosPrintedProdutoDeliveryPrinted: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoDeliveryPrinted'
      Origin = 'ProdutoDeliveryPrinted'
    end
    object FDQProdutosPrintedProdutoDeliveryObservacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoDeliveryObservacao'
      Origin = 'ProdutoDeliveryObservacao'
      Size = 255
    end
    object FDQProdutosPrintedProdutoEmpresaPessoafkPessoaEmpresaIdent: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ProdutoEmpresaPessoafkPessoaEmpresaIdent'
      Origin = 'ProdutoEmpresaPessoafkPessoaEmpresaIdent'
    end
  end
  object FDConnectionServidor: TFDConnection
    Params.Strings = (
      'Database=evomodadm'
      'User_Name=root'
      'Password=3442'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 832
    Top = 48
  end
  object DSComprovante: TDataSource
    DataSet = FDMTComprovante
    Left = 680
    Top = 131
  end
  object FDMTComprovante: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 680
    Top = 80
    object FDMTComprovantecod_produto: TStringField
      FieldName = 'cod_produto'
    end
    object FDMTComprovantenome_produto: TStringField
      FieldName = 'nome_produto'
    end
    object FDMTComprovantevalor_prod: TCurrencyField
      FieldName = 'valor_prod'
    end
    object FDMTComprovantevalor_total: TCurrencyField
      FieldName = 'valor_total'
    end
    object FDMTComprovanteqtd_produto: TCurrencyField
      FieldName = 'qtd_produto'
      currency = False
    end
    object FDMTComprovantetestete: TStringField
      FieldName = 'testete'
    end
  end
  object frxReportComprovante: TfrxReport
    Version = '6.3.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43658.577870208300000000
    ReportOptions.LastChange = 43659.569522881950000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 686
    Top = 271
    Datasets = <>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 16053492
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 80.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 2833
      LeftMargin = 2.000000000000000000
      RightMargin = 2.000000000000000000
      TopMargin = 2.000000000000000000
      BottomMargin = 2.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 128.504020000000000000
        Top = 18.897650000000000000
        Width = 287.244280000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 98.708720000000000000
          Top = 75.149660000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Data: [data]')
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 15.559060000000000000
          Top = 35.913420000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'MESA')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 8.559060000000000000
          Top = 54.370130000000000000
          Width = 68.031540000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -37
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[mesa]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 112.385900000000000000
          Width = 287.244280000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 98.708720000000000000
          Top = 52.913420000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Gar'#231'on: [garcon]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 122.944960000000000000
          Width = 287.244280000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[titulo]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 170.078850000000000000
        Width = 287.244280000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 12.000000000000000000
          Width = 35.789993250000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 48.128583250000000000
          Width = 68.900150300000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 199.501213560000000000
          Width = 27.122025410000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Qtd')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 130.237338970000000000
          Width = 66.931846210000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Uni.')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 237.200725180000000000
          Width = 35.586698370000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 253.228510000000000000
        Width = 287.244280000000000000
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 4.000000000000000000
          Width = 32.010463250000000000
          Height = 18.897650000000000000
          DataField = 'cod_produto'
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."cod_produto"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 38.128583250000000000
          Width = 114.254510300000000000
          Height = 26.456710000000000000
          DataField = 'nome_produto'
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."nome_produto"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 202.910613560000000000
          Width = 23.342495410000000000
          Height = 18.897650000000000000
          DataField = 'qtd_produto'
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."qtd_produto"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 148.032638970000000000
          Width = 48.034196210000000000
          Height = 18.897650000000000000
          DataField = 'valor_prod'
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."valor_prod"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 227.980255180000000000
          Width = 50.704818370000000000
          Height = 18.897650000000000000
          DataField = 'valor_total'
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."valor_total"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 148.385900000000000000
        Top = 302.362400000000000000
        Width = 287.244280000000000000
        object Memo13: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 287.244280000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 167.976500000000000000
          Top = 5.456710000000000000
          Width = 109.606370000000000000
          Height = 26.456710000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."valor_total">,MasterData1)]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 44.811070000000000000
          Top = 6.897650000000000000
          Width = 120.944960000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Subtotal: ')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 87.031540000000000000
          Width = 287.244280000000000000
          Height = 11.338590000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo21: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 142.574830000000000000
          Width = 287.244280000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 30.574830000000000000
          Width = 120.944960000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descontos:')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 55.811070000000000000
          Width = 120.944960000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Adicionais')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 31.795300000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[desc]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 53.472480000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[adic]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 92.149660000000000000
          Width = 120.944960000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Total:')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 90.708720000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[total]')
          ParentFont = False
        end
      end
    end
  end
  object frxReportProducao: TfrxReport
    Version = '6.3.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43658.577870208300000000
    ReportOptions.LastChange = 44063.548840011570000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 683
    Top = 224
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 16053492
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 80.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 2833
      LeftMargin = 2.000000000000000000
      RightMargin = 2.000000000000000000
      TopMargin = 2.000000000000000000
      BottomMargin = 2.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 139.842610000000000000
        Top = 18.897650000000000000
        Width = 287.244280000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 116.267780000000000000
          Top = 80.063080000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Data: [data]')
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 38.826840000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'PEDIDO')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 17.118120000000000000
          Top = 55.283550000000000000
          Width = 94.488250000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[mesa]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 129.960730000000000000
          Width = 287.244280000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 116.267780000000000000
          Top = 57.826840000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Usu'#225'rio: [garcon]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 134.606370000000000000
          Width = 287.244280000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[titulo]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 103.385900000000000000
          Width = 287.244280000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 12.779530000000000000
          Top = 106.606370000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Pedido: [entrega]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 181.417440000000000000
        Width = 287.244280000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 12.000000000000000000
          Width = 35.789993250000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 48.128583250000000000
          Width = 68.900150300000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 239.501213560000000000
          Width = 27.122025410000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Qtd')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 264.567100000000000000
        Width = 287.244280000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 7.000000000000000000
          Width = 35.789993250000000000
          Height = 22.677180000000000000
          DataField = 'cod_produto'
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."cod_produto"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 47.128583250000000000
          Width = 197.404170300000000000
          Height = 22.677180000000000000
          DataField = 'nome_produto'
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."nome_produto"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 236.926383560000000000
          Width = 30.901555410000000000
          Height = 22.677180000000000000
          DataField = 'qtd_produto'
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."qtd_produto"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 148.032638970000000000
          Width = 48.034196210000000000
          Height = 18.897650000000000000
          Visible = False
          DataField = 'valor_prod'
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."valor_prod"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 270.775555180000000000
          Top = 18.897650000000000000
          Width = 46.925288370000000000
          Height = 18.897650000000000000
          Visible = False
          DataField = 'valor_total'
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."valor_total"]')
          ParentFont = False
        end
        object frxDBDataset1testete: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 24.456710000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          DataField = 'testete'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."testete"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 33.133890000000000000
        Top = 328.819110000000000000
        Width = 287.244280000000000000
        object Memo13: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 287.244280000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Top = 11.354360000000000000
          Width = 287.244280000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
        end
      end
    end
  end
  object FDQDelivery: TFDQuery
    SQL.Strings = (
      'select * from delivery')
    Left = 256
    Top = 216
    object FDQDeliveryDELIV_id_pk: TFDAutoIncField
      FieldName = 'DELIV_id_pk'
      Origin = 'DELIV_id_pk'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQDeliveryDELIV_data_abertura: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELIV_data_abertura'
      Origin = 'DELIV_data_abertura'
    end
    object FDQDeliveryDELIV_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DELIV_status'
      Origin = 'DELIV_status'
      Size = 255
    end
    object FDQDeliveryDELIV_cliente_fk: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELIV_cliente_fk'
      Origin = 'DELIV_cliente_fk'
    end
    object FDQDeliveryDELIV_usuario_fk: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELIV_usuario_fk'
      Origin = 'DELIV_usuario_fk'
    end
    object FDQDeliveryDELIV_entregador_fk: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELIV_entregador_fk'
      Origin = 'DELIV_entregador_fk'
    end
    object FDQDeliveryDELIV_tarifa_entrega_fk: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELIV_tarifa_entrega_fk'
      Origin = 'DELIV_tarifa_entrega_fk'
    end
    object FDQDeliveryDELIV_data_producao: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELIV_data_producao'
      Origin = 'DELIV_data_producao'
    end
    object FDQDeliveryDELIV_data_entrega: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELIV_data_entrega'
      Origin = 'DELIV_data_entrega'
    end
    object FDQDeliveryDELIV_data_pagamento: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELIV_data_pagamento'
      Origin = 'DELIV_data_pagamento'
    end
  end
  object FDCevomodadm: TFDConnection
    Params.Strings = (
      'Database=evomodadm'
      'User_Name=root'
      'Password=3442'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 352
    Top = 8
  end
  object FDQVendedor: TFDQuery
    Connection = FDCevomodadm
    SQL.Strings = (
      'select * from vwtbpessoa'
      
        'left join vwtbpessoaempresa on PessoaIdentFkPessoaEmpresa = Pess' +
        'oaIdent')
    Left = 256
    Top = 168
    object FDQVendedorPessoaIdent: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaIdent'
      Origin = 'PessoaIdent'
    end
    object FDQVendedorPessoaCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaCod'
      Origin = 'PessoaCod'
    end
    object FDQVendedorPessoaTipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaTipo'
      Origin = 'PessoaTipo'
      FixedChar = True
      Size = 1
    end
    object FDQVendedorPessoaNomeRazaoSocial: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaNomeRazaoSocial'
      Origin = 'PessoaNomeRazaoSocial'
      Size = 200
    end
    object FDQVendedorPessoaNomeFantasia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaNomeFantasia'
      Origin = 'PessoaNomeFantasia'
      Size = 200
    end
    object FDQVendedorPessoaNome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaNome'
      Origin = 'PessoaNome'
      Size = 200
    end
    object FDQVendedorPessoaSexo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaSexo'
      Origin = 'PessoaSexo'
      FixedChar = True
      Size = 1
    end
    object FDQVendedorPessoaDtNascimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaDtNascimento'
      Origin = 'PessoaDtNascimento'
    end
    object FDQVendedorPessoaDtFundacao: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaDtFundacao'
      Origin = 'PessoaDtFundacao'
    end
    object FDQVendedorPaisIdentNacFkPessoa: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'PaisIdentNacFkPessoa'
      Origin = 'PaisIdentNacFkPessoa'
    end
    object FDQVendedorPaisNome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PaisNome'
      Origin = 'PaisNome'
      Size = 100
    end
    object FDQVendedorCidadeIdentNaturalFkPessoa: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'CidadeIdentNaturalFkPessoa'
      Origin = 'CidadeIdentNaturalFkPessoa'
    end
    object FDQVendedorCidadeCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CidadeCod'
      Origin = 'CidadeCod'
      Size = 10
    end
    object FDQVendedorCidadeNome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CidadeNome'
      Origin = 'CidadeNome'
      Size = 100
    end
    object FDQVendedorEstadoSiglaFkCidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EstadoSiglaFkCidade'
      Origin = 'EstadoSiglaFkCidade'
      Size = 3
    end
    object FDQVendedorEstadoCivilIdentFkPessoa: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'EstadoCivilIdentFkPessoa'
      Origin = 'EstadoCivilIdentFkPessoa'
    end
    object FDQVendedorEstadoCivilSigla: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EstadoCivilSigla'
      Origin = 'EstadoCivilSigla'
    end
    object FDQVendedorEstadoCivilDescr: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EstadoCivilDescr'
      Origin = 'EstadoCivilDescr'
      Size = 100
    end
    object FDQVendedorPessoaNomePai: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaNomePai'
      Origin = 'PessoaNomePai'
      Size = 200
    end
    object FDQVendedorPessoaNomeMae: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaNomeMae'
      Origin = 'PessoaNomeMae'
      Size = 200
    end
    object FDQVendedorPessoaNomeConjuge: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaNomeConjuge'
      Origin = 'PessoaNomeConjuge'
      Size = 200
    end
    object FDQVendedorPessoaNomeContato: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaNomeContato'
      Origin = 'PessoaNomeContato'
      Size = 200
    end
    object FDQVendedorPessoaCNPJCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaCNPJCPF'
      Origin = 'PessoaCNPJCPF'
      Size = 45
    end
    object FDQVendedorPessoaCNPJCPFConjuge: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaCNPJCPFConjuge'
      Origin = 'PessoaCNPJCPFConjuge'
      Size = 45
    end
    object FDQVendedorPessoaInscrEstad: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaInscrEstad'
      Origin = 'PessoaInscrEstad'
    end
    object FDQVendedorPessoaInscrMunic: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaInscrMunic'
      Origin = 'PessoaInscrMunic'
    end
    object FDQVendedorPessoaInscrSuframa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaInscrSuframa'
      Origin = 'PessoaInscrSuframa'
      Size = 10
    end
    object FDQVendedorPessoaIdentidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaIdentidade'
      Origin = 'PessoaIdentidade'
    end
    object FDQVendedorPessoaIdentidadeDtEmis: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaIdentidadeDtEmis'
      Origin = 'PessoaIdentidadeDtEmis'
    end
    object FDQVendedorPessoaIdentidadeOrgaoEmis: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaIdentidadeOrgaoEmis'
      Origin = 'PessoaIdentidadeOrgaoEmis'
      Size = 50
    end
    object FDQVendedorEstadoIdentIdentidadeEmisFkPessoa: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'EstadoIdentIdentidadeEmisFkPessoa'
      Origin = 'EstadoIdentIdentidadeEmisFkPessoa'
    end
    object FDQVendedorEstadoNome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EstadoNome'
      Origin = 'EstadoNome'
      Size = 100
    end
    object FDQVendedorEstadoSigla: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EstadoSigla'
      Origin = 'EstadoSigla'
      Size = 3
    end
    object FDQVendedorOcupacaoIdentFkPessoa: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'OcupacaoIdentFkPessoa'
      Origin = 'OcupacaoIdentFkPessoa'
    end
    object FDQVendedorOcupacaoCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OcupacaoCod'
      Origin = 'OcupacaoCod'
      Size = 7
    end
    object FDQVendedorOcupacaoTitulo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OcupacaoTitulo'
      Origin = 'OcupacaoTitulo'
      Size = 200
    end
    object FDQVendedorPessoaSenha: TVarBytesField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaSenha'
      Origin = 'PessoaSenha'
      Size = 255
    end
    object FDQVendedorPessoaFoneDDI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaFoneDDI'
      Origin = 'PessoaFoneDDI'
      Size = 10
    end
    object FDQVendedorPessoaFoneDDD: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaFoneDDD'
      Origin = 'PessoaFoneDDD'
      Size = 3
    end
    object FDQVendedorPessoaNrFone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaNrFone'
      Origin = 'PessoaNrFone'
    end
    object FDQVendedorPessoaNrFax: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaNrFax'
      Origin = 'PessoaNrFax'
    end
    object FDQVendedorPessoaEmail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaEmail'
      Origin = 'PessoaEmail'
      Size = 100
    end
    object FDQVendedorPessoaSiteWeb: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaSiteWeb'
      Origin = 'PessoaSiteWeb'
      Size = 100
    end
    object FDQVendedorPessoaFacebook: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaFacebook'
      Origin = 'PessoaFacebook'
      Size = 100
    end
    object FDQVendedorPessoaInstagram: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaInstagram'
      Origin = 'PessoaInstagram'
      Size = 100
    end
    object FDQVendedorPessoaLinkedin: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaLinkedin'
      Origin = 'PessoaLinkedin'
      Size = 100
    end
    object FDQVendedorPessoaWhatSapp: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaWhatSapp'
      Origin = 'PessoaWhatSapp'
      Size = 100
    end
    object FDQVendedorPessoaTwitter: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaTwitter'
      Origin = 'PessoaTwitter'
      Size = 100
    end
    object FDQVendedorPessoaRespons: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaRespons'
      Origin = 'PessoaRespons'
      Size = 100
    end
    object FDQVendedorPessoaEndereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaEndereco'
      Origin = 'PessoaEndereco'
      Size = 300
    end
    object FDQVendedorPessoaEnderecoNr: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaEnderecoNr'
      Origin = 'PessoaEnderecoNr'
      Size = 10
    end
    object FDQVendedorPessoaEnderecoCompl: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaEnderecoCompl'
      Origin = 'PessoaEnderecoCompl'
      Size = 200
    end
    object FDQVendedorCEPIdentFkPessoa: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'CEPIdentFkPessoa'
      Origin = 'CEPIdentFkPessoa'
    end
    object FDQVendedorCEPCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEPCod'
      Origin = 'CEPCod'
      FixedChar = True
      Size = 8
    end
    object FDQVendedorPessoaFoto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaFoto'
      Origin = 'PessoaFoto'
    end
    object FDQVendedorPessoaEmpresaIdent: TFDAutoIncField
      FieldName = 'PessoaEmpresaIdent'
      Origin = 'PessoaEmpresaIdent'
      ReadOnly = True
    end
    object FDQVendedorPessoaIdentFkPessoaEmpresa: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaIdentFkPessoaEmpresa'
      Origin = 'PessoaIdentFkPessoaEmpresa'
    end
    object FDQVendedorPessoaCod_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaCod_1'
      Origin = 'PessoaCod'
    end
    object FDQVendedorPessoaDescr: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaDescr'
      Origin = 'PessoaDescr'
      Size = 200
    end
    object FDQVendedorEmpresaIdentFkPessoaEmpresa: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'EmpresaIdentFkPessoaEmpresa'
      Origin = 'EmpresaIdentFkPessoaEmpresa'
    end
    object FDQVendedorEmpresaCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EmpresaCod'
      Origin = 'EmpresaCod'
      Size = 11
    end
    object FDQVendedorEmpresaRazaoSocial: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EmpresaRazaoSocial'
      Origin = 'EmpresaRazaoSocial'
      Size = 200
    end
    object FDQVendedorPessoaEmpresaFlagAtivo: TWordField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaEmpresaFlagAtivo'
      Origin = 'PessoaEmpresaFlagAtivo'
    end
    object FDQVendedorPessoaEmpresaFlagCliente: TWordField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaEmpresaFlagCliente'
      Origin = 'PessoaEmpresaFlagCliente'
    end
    object FDQVendedorPessoaEmpresaFlagFornec: TWordField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaEmpresaFlagFornec'
      Origin = 'PessoaEmpresaFlagFornec'
    end
    object FDQVendedorPessoaEmpresaFlagFunc: TWordField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaEmpresaFlagFunc'
      Origin = 'PessoaEmpresaFlagFunc'
    end
    object FDQVendedorPessoaEmpresaFlagTransp: TWordField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaEmpresaFlagTransp'
      Origin = 'PessoaEmpresaFlagTransp'
    end
    object FDQVendedorPessoaEmpresaFlagUsu: TWordField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaEmpresaFlagUsu'
      Origin = 'PessoaEmpresaFlagUsu'
    end
    object FDQVendedorPerfilAcesSistIdentFkPessoaEmpresa: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'PerfilAcesSistIdentFkPessoaEmpresa'
      Origin = 'PerfilAcesSistIdentFkPessoaEmpresa'
    end
  end
  object FDQUserEmpresa: TFDQuery
    Connection = FDCevomodadm
    SQL.Strings = (
      'select'
      'EmpresaIdent, '
      'EmpresaCod,'
      'EmpresaRazaoSocial,'
      'EmpresaNomeFantasia,'
      'EmpresaCNPJ '
      'from tbpessoaempresa'
      
        'left join tbempresa on EmpresaIdentFkPessoaEmpresa = EmpresaIden' +
        't')
    Left = 256
    Top = 264
    object FDQUserEmpresaEmpresaCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EmpresaCod'
      Origin = 'EmpresaCod'
      Size = 11
    end
    object FDQUserEmpresaEmpresaRazaoSocial: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EmpresaRazaoSocial'
      Origin = 'EmpresaRazaoSocial'
      Size = 200
    end
    object FDQUserEmpresaEmpresaNomeFantasia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EmpresaNomeFantasia'
      Origin = 'EmpresaNomeFantasia'
      Size = 200
    end
    object FDQUserEmpresaEmpresaCNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EmpresaCNPJ'
      Origin = 'EmpresaCNPJ'
    end
    object FDQUserEmpresaEmpresaIdent: TFDAutoIncField
      FieldName = 'EmpresaIdent'
      Origin = 'EmpresaIdent'
      ReadOnly = True
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'cod_produto=cod_produto'
      'nome_produto=nome_produto'
      'valor_prod=valor_prod'
      'valor_total=valor_total'
      'qtd_produto=qtd_produto'
      'testete=testete')
    DataSource = DSComprovante
    BCDToCurrency = False
    Left = 680
    Top = 176
  end
  object FDMTCompEntrega: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 456
    Top = 72
    object FDMTCompEntregaProdutoIdent: TIntegerField
      FieldName = 'ProdutoIdent'
    end
    object FDMTCompEntregaProdutoCod: TStringField
      FieldName = 'ProdutoCod'
    end
    object FDMTCompEntregaProdutoDescricao: TStringField
      FieldName = 'ProdutoDescricao'
    end
    object FDMTCompEntregaProdutoQtd: TCurrencyField
      FieldName = 'ProdutoQtd'
      currency = False
    end
    object FDMTCompEntregaProdutoValor: TCurrencyField
      FieldName = 'ProdutoValor'
    end
    object FDMTCompEntregaProdutoTotal: TCurrencyField
      FieldName = 'ProdutoTotal'
    end
    object FDMTCompEntregaQrCode: TStringField
      FieldName = 'QrCode'
    end
  end
  object DSCompEntrega: TDataSource
    DataSet = FDMTCompEntrega
    Left = 456
    Top = 128
  end
  object frxDBDatasetCompEntrega: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ProdutoIdent=ProdutoIdent'
      'ProdutoCod=ProdutoCod'
      'ProdutoDescricao=ProdutoDescricao'
      'ProdutoQtd=ProdutoQtd'
      'ProdutoValor=ProdutoValor'
      'ProdutoTotal=ProdutoTotal'
      'QrCode=QrCode')
    DataSource = DSCompEntrega
    BCDToCurrency = False
    Left = 464
    Top = 184
  end
  object frxReportCompEntrega: TfrxReport
    Version = '6.3.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 43658.577870208300000000
    ReportOptions.LastChange = 44063.831699560190000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 462
    Top = 231
    Datasets = <
      item
        DataSet = frxDBDatasetCompEntrega
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDatasetQrCode'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 16053492
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 80.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      LeftMargin = 3.000000000000000000
      RightMargin = 2.000000000000000000
      TopMargin = 2.000000000000000000
      BottomMargin = 2.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 264.685220000000000000
        Top = 483.779840000000000000
        Width = 283.464750000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 171.976500000000000000
          Top = 102.456710000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."ProdutoTotal">,MasterData1)]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 79.811070000000000000
          Top = 101.897650000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Subtotal: ')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 80.354360000000000000
          Top = 122.574830000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descontos:')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 80.354360000000000000
          Top = 141.811070000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Adicionais')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 172.299320000000000000
          Top = 121.795300000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[desc]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 172.299320000000000000
          Top = 141.472480000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[adic]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Top = 10.559060000000000000
          Width = 287.244280000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'Pagamento')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 13.000000000000000000
          Top = 46.574830000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Recebimento Em:')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = -0.440940000000000000
          Top = 75.590600000000000000
          Width = 287.244280000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'Valores')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 283.464750000000000000
          Top = 215.433210000000000000
          Height = 11.338590000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 80.354360000000000000
          Top = 160.756030000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Troco')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 172.299320000000000000
          Top = 161.417440000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[troco]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 130.283550000000000000
          Top = 46.354360000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[recebimento]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Top = 185.315090000000000000
          Width = 283.464750000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -29
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clGray
          HAlign = haRight
          Memo.UTF8W = (
            'Total: [total] l')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Top = 241.889920000000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'Ler Pedido Pelo QrCode ')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 307.953000000000000000
        Top = 18.897650000000000000
        Width = 283.464750000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 100.708720000000000000
          Top = 93.149660000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Data: [data]')
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 14.559060000000000000
          Top = 53.913420000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'PEDIDO')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 6.559060000000000000
          Top = 72.370130000000000000
          Width = 86.929190000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[mesa]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 100.708720000000000000
          Top = 70.913420000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Usu'#225'rio: [garcon]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = -1.220470000000000000
          Top = -2.440940000000000000
          Width = 287.244280000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            'Comprovante de Entrega')
          ParentFont = False
          SuppressRepeated = True
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Top = 194.944960000000000000
          Width = 287.244280000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'Endere'#231'o de Entrega')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 8.354360000000000000
          Top = 221.299320000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Rua: ')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 207.653680000000000000
          Top = 221.299320000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#186':')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 227.889920000000000000
          Top = 221.299320000000000000
          Width = 45.354360000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Numero]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 7.779530000000000000
          Top = 242.094620000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Complemento:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 263.330860000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Bairro: ')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Top = 285.275820000000000000
          Width = 287.244280000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'Produtos')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Top = 124.842610000000000000
          Width = 287.244280000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 9.000000000000000000
          Top = 150.960730000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome:')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 53.913420000000000000
          Top = 155.740260000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[cliente]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 8.559060000000000000
          Top = 171.417440000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone:')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 171.417440000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[telefone]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 43.133890000000000000
          Top = 220.771800000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[rua]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 108.826840000000000000
          Top = 242.008040000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[comp]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 58.252010000000000000
          Top = 262.685220000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[bairro]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 351.496290000000000000
        Width = 283.464750000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = -1.000000000000000000
          Width = 47.128583250000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 45.128583250000000000
          Width = 87.797800300000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clSilver
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 198.501213560000000000
          Width = 42.240145410000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clSilver
          Memo.UTF8W = (
            'Qtd')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 128.237338970000000000
          Width = 70.711376210000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clSilver
          Memo.UTF8W = (
            'Valor Uni.')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 238.200725180000000000
          Width = 73.381998370000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clSilver
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 434.645950000000000000
        Width = 283.464750000000000000
        DataSet = frxDBDatasetCompEntrega
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 4.000000000000000000
          Width = 32.010463250000000000
          Height = 18.897650000000000000
          DataField = 'ProdutoCod'
          DataSet = frxDBDatasetCompEntrega
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."ProdutoCod"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 38.128583250000000000
          Width = 106.695450300000000000
          Height = 26.456710000000000000
          DataField = 'ProdutoDescricao'
          DataSet = frxDBDatasetCompEntrega
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."ProdutoDescricao"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 192.910613560000000000
          Width = 23.342495410000000000
          Height = 18.897650000000000000
          DataField = 'ProdutoQtd'
          DataSet = frxDBDatasetCompEntrega
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."ProdutoQtd"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 140.032638970000000000
          Width = 48.034196210000000000
          Height = 18.897650000000000000
          DataField = 'ProdutoValor'
          DataSet = frxDBDatasetCompEntrega
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."ProdutoValor"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 217.980255180000000000
          Width = 50.704818370000000000
          Height = 18.897650000000000000
          DataField = 'ProdutoTotal'
          DataSet = frxDBDatasetCompEntrega
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."ProdutoTotal"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 128.504020000000000000
        Top = 771.024120000000000000
        Width = 283.464750000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDatasetQrCode'
        RowCount = 0
        object Barcode2D1: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 11.338590000000000000
          Width = 84.000000000000000000
          Height = 84.000000000000000000
          StretchMode = smActualHeight
          BarType = bcCodeQR
          BarProperties.Encoding = qrAuto
          BarProperties.QuietZone = 0
          BarProperties.ErrorLevels = ecL
          BarProperties.PixelSize = 4
          BarProperties.CodePage = 0
          DataField = 'Qrcode'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDatasetQrCode'
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          Text = '12345678'
          Zoom = 1.000000000000000000
          FontScaled = True
          QuietZone = 0
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Top = 108.047310000000000000
          Width = 287.244280000000000000
          Height = 3.779529999999999000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
        end
      end
    end
  end
  object FDQCompEntrega: TFDQuery
    Connection = FDCevomodadm
    SQL.Strings = (
      'select'
      '  DeliveryIdent as Pedido,'
      '  DeliveryTipoRecebimento as TipoRecebimento, '
      '  PessoaNome as Cliente,'
      '  PessoaFoneDDD as DDD,'
      '  PessoaNrFone  as Telefone,'
      '  PessoaEndereco as Rua,'
      '  PessoaEnderecoNr as Numero,'
      '  PessoaEnderecoCompl as Complemento,'
      '  CepBairro as Bairro,'
      '  ProdutoEmpresaIdent as IdentProd,'
      '  ProdutoCodInterno as CodigoProd,'
      '  ProdutoDescr as DescricaoProd,'
      '  ProdutoDeliveryQtde as QtdeProd,'
      '  ProdutoDeliveryValorUnitario as ValorProd,'
      '  ProdutoDeliveryValorAcrescimo as AcrescimoProd,'
      '  ProdutoDeliveryValorDesconto as DescontoProd,'
      '  ProdutoDeliveryValorTotal as TotalProd,'
      '  DeliveryValorProdutos as DeliveryTotal'
      'from tbdelivery'
      
        'left join tbprodutodelivery on DeliveryIdentFkDelivery = Deliver' +
        'yIdent'
      
        'left join tbpessoaempresa on PessoaIdentFkDeliveryCliente = Pess' +
        'oaEmpresaIdent'
      'left join tbpessoa on PessoaIdentFkPessoaEmpresa = PessoaIdent'
      'left join tbcep on CEPIdentFkPessoa = CepIdent'
      
        'left join tbprodutoempresa on ProdutoEmpresaIdentFkProduto = Pro' +
        'dutoEmpresaIdent'
      
        'left join tbproduto on ProdutoIdentFkProdutoEmpresa = ProdutoIde' +
        'nt'
      ''
      ''
      ''
      '')
    Left = 464
    Top = 280
    object FDQCompEntregaPedido: TFDAutoIncField
      FieldName = 'Pedido'
      Origin = 'DeliveryIdent'
      ReadOnly = True
    end
    object FDQCompEntregaTipoRecebimento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TipoRecebimento'
      Origin = 'DeliveryTipoRecebimento'
      Size = 255
    end
    object FDQCompEntregaCliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Origin = 'PessoaNome'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
    object FDQCompEntregaDDD: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DDD'
      Origin = 'PessoaFoneDDD'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object FDQCompEntregaTelefone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefone'
      Origin = 'PessoaNrFone'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQCompEntregaRua: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Rua'
      Origin = 'PessoaEndereco'
      ProviderFlags = []
      ReadOnly = True
      Size = 300
    end
    object FDQCompEntregaNumero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Numero'
      Origin = 'PessoaEnderecoNr'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object FDQCompEntregaComplemento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Complemento'
      Origin = 'PessoaEnderecoCompl'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
    object FDQCompEntregaBairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Bairro'
      Origin = 'CEPBairro'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object FDQCompEntregaCodigoProd: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodigoProd'
      Origin = 'ProdutoCodInterno'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQCompEntregaDescricaoProd: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DescricaoProd'
      Origin = 'ProdutoDescr'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
    object FDQCompEntregaQtdeProd: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QtdeProd'
      Origin = 'ProdutoDeliveryQtde'
      ProviderFlags = []
      ReadOnly = True
      Precision = 12
    end
    object FDQCompEntregaValorProd: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ValorProd'
      Origin = 'ProdutoDeliveryValorUnitario'
      ProviderFlags = []
      ReadOnly = True
      Precision = 12
    end
    object FDQCompEntregaAcrescimoProd: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'AcrescimoProd'
      Origin = 'ProdutoDeliveryValorAcrescimo'
      ProviderFlags = []
      ReadOnly = True
      Precision = 12
    end
    object FDQCompEntregaDescontoProd: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DescontoProd'
      Origin = 'ProdutoDeliveryValorDesconto'
      ProviderFlags = []
      ReadOnly = True
      Precision = 12
    end
    object FDQCompEntregaTotalProd: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TotalProd'
      Origin = 'ProdutoDeliveryValorTotal'
      ProviderFlags = []
      ReadOnly = True
      Precision = 12
    end
    object FDQCompEntregaIdentProd: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'IdentProd'
      Origin = 'ProdutoEmpresaIdent'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQCompEntregaDeliveryTotal: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DeliveryTotal'
      Origin = 'DeliveryValorProdutos'
      Precision = 12
    end
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 432
    Top = 344
  end
  object frxReport1: TfrxReport
    Version = '6.3.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44063.824636909730000000
    ReportOptions.LastChange = 44063.824636909730000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 512
    Top = 344
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 80.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 258
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
    end
  end
  object frxReportQrCodeEntrega: TfrxReport
    Version = '6.3.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 43658.577870208300000000
    ReportOptions.LastChange = 44063.810755625000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 558
    Top = 247
    Datasets = <
      item
        DataSet = frxDBDatasetCompEntrega
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 16053492
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 80.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      LeftMargin = 3.000000000000000000
      RightMargin = 2.000000000000000000
      TopMargin = 2.000000000000000000
      BottomMargin = 2.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 18.897650000000000000
        Width = 283.464750000000000000
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Width = 287.244280000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            'Ler Pedido')
          ParentFont = False
          SuppressRepeated = True
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 102.047310000000000000
        Top = 109.606370000000000000
        Width = 283.464750000000000000
        DataSet = frxDBDatasetCompEntrega
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object Barcode2D1: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 11.338590000000000000
          Width = 84.000000000000000000
          Height = 84.000000000000000000
          StretchMode = smActualHeight
          BarType = bcCodeQR
          BarProperties.Encoding = qrAuto
          BarProperties.QuietZone = 0
          BarProperties.ErrorLevels = ecL
          BarProperties.PixelSize = 4
          BarProperties.CodePage = 0
          DataField = 'QrCode'
          DataSet = frxDBDatasetCompEntrega
          DataSetName = 'frxDBDataset2'
          Frame.Typ = []
          Frame.Width = 150.000000000000000000
          Rotation = 0
          ShowText = False
          Text = '12345678'
          Zoom = 1.000000000000000000
          FontScaled = True
          QuietZone = 0
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 15.118120000000000000
        Top = 234.330860000000000000
        Width = 283.464750000000000000
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Width = 287.244280000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haCenter
          ParentFont = False
          SuppressRepeated = True
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDatasetQrCode'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Qrcode=Qrcode')
    DataSource = DSQrCode
    BCDToCurrency = False
    Left = 544
    Top = 168
  end
  object FDMTQrCode: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 544
    Top = 72
    object FDMTQrCodeQrcode: TStringField
      FieldName = 'Qrcode'
    end
  end
  object DSQrCode: TDataSource
    DataSet = FDMTQrCode
    Left = 544
    Top = 120
  end
end
