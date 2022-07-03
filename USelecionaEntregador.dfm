object FRMSelecionaEntregador: TFRMSelecionaEntregador
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Pesquisa de Entregadores'
  ClientHeight = 265
  ClientWidth = 470
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 29
    Top = 93
    Width = 407
    Height = 156
    DataSource = DSEntregador
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -19
    Font.Name = 'Montserrat'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'PessoaIdent'
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clGray
        Title.Font.Height = -13
        Title.Font.Name = 'Montserrat'
        Title.Font.Style = []
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PessoaCod'
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clGray
        Title.Font.Height = -13
        Title.Font.Name = 'Montserrat'
        Title.Font.Style = []
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'PessoaNome'
        Title.Caption = 'Nome'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clGray
        Title.Font.Height = -13
        Title.Font.Name = 'Montserrat'
        Title.Font.Style = []
        Width = 300
        Visible = True
      end>
  end
  object EdtPesquisa: TEdit
    Left = 29
    Top = 63
    Width = 296
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -13
    Font.Name = 'Montserrat'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnChange = EdtPesquisaChange
  end
  object PnlButtonPesquisar: TPanel
    Left = 338
    Top = 61
    Width = 98
    Height = 26
    BevelOuter = bvNone
    Caption = 'Pesquisar'
    Color = clAppWorkSpace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Montserrat'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    OnClick = PnlButtonPesquisarClick
  end
  object PCabecalho1: TPanel
    Left = 0
    Top = 0
    Width = 470
    Height = 40
    ParentCustomHint = False
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BiDiMode = bdLeftToRight
    Caption = '   Selecione o Entregador'
    Ctl3D = True
    DoubleBuffered = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Montserrat'
    Font.Style = []
    ParentBiDiMode = False
    ParentBackground = False
    ParentCtl3D = False
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 3
    object PVoltar: TPanel
      Left = 397
      Top = 6
      Width = 63
      Height = 28
      BevelOuter = bvNone
      Caption = 'Voltar'
      Color = clAppWorkSpace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Montserrat'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      OnClick = PVoltarClick
    end
  end
  object PCabecalho: TPanel
    Left = 0
    Top = 40
    Width = 470
    Height = 6
    ParentCustomHint = False
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BiDiMode = bdLeftToRight
    Ctl3D = True
    DoubleBuffered = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Montserrat'
    Font.Style = []
    ParentBiDiMode = False
    ParentBackground = False
    ParentCtl3D = False
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 4
    ExplicitTop = 33
  end
  object FDQEntregadores: TFDQuery
    Active = True
    Connection = DMPrincipal.FDCevomodadm
    SQL.Strings = (
      'select * from tbpessoa'
      
        'left join tbpessoaempresa on PessoaIdentFkPessoaEmpresa = Pessoa' +
        'Ident'
      'where PessoaEmpresaFlagMotoboy = 1')
    Left = 272
    Top = 8
    object FDQEntregadoresPessoaIdent: TFDAutoIncField
      FieldName = 'PessoaIdent'
      Origin = 'PessoaIdent'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQEntregadoresPessoaCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaCod'
      Origin = 'PessoaCod'
    end
    object FDQEntregadoresPessoaTipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaTipo'
      Origin = 'PessoaTipo'
      FixedChar = True
      Size = 1
    end
    object FDQEntregadoresPessoaNomeRazaoSocial: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaNomeRazaoSocial'
      Origin = 'PessoaNomeRazaoSocial'
      Size = 200
    end
    object FDQEntregadoresPessoaNomeFantasia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaNomeFantasia'
      Origin = 'PessoaNomeFantasia'
      Size = 200
    end
    object FDQEntregadoresPessoaNome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaNome'
      Origin = 'PessoaNome'
      Size = 200
    end
    object FDQEntregadoresPessoaSexo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaSexo'
      Origin = 'PessoaSexo'
      FixedChar = True
      Size = 1
    end
    object FDQEntregadoresPessoaDtNascimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaDtNascimento'
      Origin = 'PessoaDtNascimento'
    end
    object FDQEntregadoresPessoaDtFundacao: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaDtFundacao'
      Origin = 'PessoaDtFundacao'
    end
    object FDQEntregadoresPaisIdentNacFkPessoa: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'PaisIdentNacFkPessoa'
      Origin = 'PaisIdentNacFkPessoa'
    end
    object FDQEntregadoresCidadeIdentNaturalFkPessoa: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'CidadeIdentNaturalFkPessoa'
      Origin = 'CidadeIdentNaturalFkPessoa'
    end
    object FDQEntregadoresEstadoCivilIdentFkPessoa: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'EstadoCivilIdentFkPessoa'
      Origin = 'EstadoCivilIdentFkPessoa'
    end
    object FDQEntregadoresPessoaNomePai: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaNomePai'
      Origin = 'PessoaNomePai'
      Size = 200
    end
    object FDQEntregadoresPessoaNomeMae: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaNomeMae'
      Origin = 'PessoaNomeMae'
      Size = 200
    end
    object FDQEntregadoresPessoaNomeConjuge: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaNomeConjuge'
      Origin = 'PessoaNomeConjuge'
      Size = 200
    end
    object FDQEntregadoresPessoaNomeContato: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaNomeContato'
      Origin = 'PessoaNomeContato'
      Size = 200
    end
    object FDQEntregadoresPessoaCNPJCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaCNPJCPF'
      Origin = 'PessoaCNPJCPF'
      Size = 45
    end
    object FDQEntregadoresPessoaCNPJCPFConjuge: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaCNPJCPFConjuge'
      Origin = 'PessoaCNPJCPFConjuge'
      Size = 45
    end
    object FDQEntregadoresPessoaInscrEstad: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaInscrEstad'
      Origin = 'PessoaInscrEstad'
    end
    object FDQEntregadoresIndicInscEstadIdentFkPessoa: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'IndicInscEstadIdentFkPessoa'
      Origin = 'IndicInscEstadIdentFkPessoa'
    end
    object FDQEntregadoresPessoaInscrMunic: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaInscrMunic'
      Origin = 'PessoaInscrMunic'
    end
    object FDQEntregadoresPessoaInscrSuframa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaInscrSuframa'
      Origin = 'PessoaInscrSuframa'
      Size = 10
    end
    object FDQEntregadoresPessoaIdentidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaIdentidade'
      Origin = 'PessoaIdentidade'
    end
    object FDQEntregadoresPessoaIdentidadeDtEmis: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaIdentidadeDtEmis'
      Origin = 'PessoaIdentidadeDtEmis'
    end
    object FDQEntregadoresPessoaIdentidadeOrgaoEmis: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaIdentidadeOrgaoEmis'
      Origin = 'PessoaIdentidadeOrgaoEmis'
      Size = 50
    end
    object FDQEntregadoresEstadoIdentIdentidadeEmisFkPessoa: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'EstadoIdentIdentidadeEmisFkPessoa'
      Origin = 'EstadoIdentIdentidadeEmisFkPessoa'
    end
    object FDQEntregadoresOcupacaoIdentFkPessoa: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'OcupacaoIdentFkPessoa'
      Origin = 'OcupacaoIdentFkPessoa'
    end
    object FDQEntregadoresPessoaSenha: TVarBytesField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaSenha'
      Origin = 'PessoaSenha'
      Size = 255
    end
    object FDQEntregadoresPessoaFoneDDI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaFoneDDI'
      Origin = 'PessoaFoneDDI'
      Size = 10
    end
    object FDQEntregadoresPessoaFoneDDD: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaFoneDDD'
      Origin = 'PessoaFoneDDD'
      Size = 3
    end
    object FDQEntregadoresPessoaNrFone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaNrFone'
      Origin = 'PessoaNrFone'
    end
    object FDQEntregadoresPessoaNrFax: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaNrFax'
      Origin = 'PessoaNrFax'
    end
    object FDQEntregadoresPessoaEmail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaEmail'
      Origin = 'PessoaEmail'
      Size = 100
    end
    object FDQEntregadoresPessoaSiteWeb: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaSiteWeb'
      Origin = 'PessoaSiteWeb'
      Size = 100
    end
    object FDQEntregadoresPessoaFacebook: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaFacebook'
      Origin = 'PessoaFacebook'
      Size = 100
    end
    object FDQEntregadoresPessoaInstagram: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaInstagram'
      Origin = 'PessoaInstagram'
      Size = 100
    end
    object FDQEntregadoresPessoaLinkedin: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaLinkedin'
      Origin = 'PessoaLinkedin'
      Size = 100
    end
    object FDQEntregadoresPessoaWhatSapp: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaWhatSapp'
      Origin = 'PessoaWhatSapp'
      Size = 100
    end
    object FDQEntregadoresPessoaTwitter: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaTwitter'
      Origin = 'PessoaTwitter'
      Size = 100
    end
    object FDQEntregadoresPessoaRespons: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaRespons'
      Origin = 'PessoaRespons'
      Size = 100
    end
    object FDQEntregadoresPessoaEndereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaEndereco'
      Origin = 'PessoaEndereco'
      Size = 300
    end
    object FDQEntregadoresPessoaEnderecoNr: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaEnderecoNr'
      Origin = 'PessoaEnderecoNr'
      Size = 10
    end
    object FDQEntregadoresPessoaEnderecoCompl: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaEnderecoCompl'
      Origin = 'PessoaEnderecoCompl'
      Size = 200
    end
    object FDQEntregadoresCEPIdentFkPessoa: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'CEPIdentFkPessoa'
      Origin = 'CEPIdentFkPessoa'
    end
    object FDQEntregadoresPessoaFoto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaFoto'
      Origin = 'PessoaFoto'
    end
    object FDQEntregadoresPessoaExcluido: TWordField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaExcluido'
      Origin = 'PessoaExcluido'
    end
    object FDQEntregadoresPessoaEmpresaIdent: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaEmpresaIdent'
      Origin = 'PessoaEmpresaIdent'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQEntregadoresPessoaIdentFkPessoaEmpresa: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaIdentFkPessoaEmpresa'
      Origin = 'PessoaIdentFkPessoaEmpresa'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQEntregadoresEmpresaIdentFkPessoaEmpresa: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'EmpresaIdentFkPessoaEmpresa'
      Origin = 'EmpresaIdentFkPessoaEmpresa'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQEntregadoresPessoaEmpresaFlagAtivo: TWordField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaEmpresaFlagAtivo'
      Origin = 'PessoaEmpresaFlagAtivo'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQEntregadoresPessoaEmpresaFlagCliente: TWordField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaEmpresaFlagCliente'
      Origin = 'PessoaEmpresaFlagCliente'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQEntregadoresPessoaEmpresaFlagFornec: TWordField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaEmpresaFlagFornec'
      Origin = 'PessoaEmpresaFlagFornec'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQEntregadoresPessoaEmpresaFlagFunc: TWordField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaEmpresaFlagFunc'
      Origin = 'PessoaEmpresaFlagFunc'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQEntregadoresPessoaEmpresaFlagTransp: TWordField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaEmpresaFlagTransp'
      Origin = 'PessoaEmpresaFlagTransp'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQEntregadoresPessoaEmpresaFlagUsu: TWordField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaEmpresaFlagUsu'
      Origin = 'PessoaEmpresaFlagUsu'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQEntregadoresPessoaEmpresaFlagMotoboy: TWordField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaEmpresaFlagMotoboy'
      Origin = 'PessoaEmpresaFlagMotoboy'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQEntregadoresPerfilAcesSistIdentFkPessoaEmpresa: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'PerfilAcesSistIdentFkPessoaEmpresa'
      Origin = 'PerfilAcesSistIdentFkPessoaEmpresa'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQEntregadoresPessoaEmpresaExcluido: TWordField
      AutoGenerateValue = arDefault
      FieldName = 'PessoaEmpresaExcluido'
      Origin = 'PessoaEmpresaExcluido'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DSEntregador: TDataSource
    DataSet = FDQEntregadores
    Left = 184
    Top = 8
  end
end
