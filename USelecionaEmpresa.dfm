object FRMSelecionaEmpresa: TFRMSelecionaEmpresa
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Selecione a Empresa para a Gest'#227'o'
  ClientHeight = 624
  ClientWidth = 773
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 59
    Width = 773
    Height = 23
    Alignment = taCenter
    AutoSize = False
    Caption = 'Selecione a Empresa Desejada'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -19
    Font.Name = 'Montserrat'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 19
    Top = 101
    Width = 737
    Height = 476
    DataSource = DSUserEmpresa
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
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
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'EmpresaCod'
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clGray
        Title.Font.Height = -16
        Title.Font.Name = 'Montserrat'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EmpresaRazaoSocial'
        Title.Caption = 'Raz'#227'o Social'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clGray
        Title.Font.Height = -16
        Title.Font.Name = 'Montserrat'
        Title.Font.Style = []
        Width = 350
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EmpresaCNPJ'
        Title.Caption = 'CNPJ'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clGray
        Title.Font.Height = -16
        Title.Font.Name = 'Montserrat'
        Title.Font.Style = []
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EmpresaNomeFantasia'
        Title.Caption = 'Nome Fantasia'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clGray
        Title.Font.Height = -16
        Title.Font.Name = 'Montserrat'
        Title.Font.Style = []
        Visible = True
      end>
  end
  object PCabecalho: TPanel
    Left = 0
    Top = 40
    Width = 773
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
    TabOrder = 1
  end
  object PCabecalho1: TPanel
    Left = 0
    Top = 0
    Width = 773
    Height = 40
    ParentCustomHint = False
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BiDiMode = bdLeftToRight
    Caption = '   Empresas dispon'#237'veis para o usu'#225'rio'
    Ctl3D = True
    DoubleBuffered = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Montserrat'
    Font.Style = []
    ParentBiDiMode = False
    ParentBackground = False
    ParentCtl3D = False
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 2
    object ImgFechar: TImage
      Left = 733
      Top = 0
      Width = 40
      Height = 40
      Align = alRight
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
        00280802000000039C2F3A000001376943435041646F62652052474220283139
        39382900002891958FBF4AC3501487BF1B45C5A15608E2E0702751506CD5C18C
        495B8A2058AB4392AD49439562126EAE7FFA108E6E1D5CDC7D022747C141F109
        7C03C5A98343840C058BDFF49DDF391CCE01A362D79D865186F358AB76D391AE
        E7CBD917669802804E98A576AB7500102771C418DFEF0880D74DBBEE34C6FB7F
        321FA64A032360BB1B6521880AD0BFD2A9063104CCA09F6A100F80A94EDA3510
        4F40A997FB1B500A72FF004ACAF57C105F80D9733D1F8C39C00C725F014C1D5D
        6B805A920ED459EF54CBAA6559D2EE2641248F07998ECE33B91F87894A13D5D1
        5117C8EF0360311F6C371DB956B5ACBDF57FFE3D11D7F3656E9F4708402C3D17
        594178A12E7F55183B93EB62C770190EEF617A5464BB3770B7010BB745B65A85
        F2163C0E7F00C0C64FFDF3533FC8000000097048597300002E2300002E230178
        A53F760000089369545874584D4C3A636F6D2E61646F62652E786D7000000000
        003C3F787061636B657420626567696E3D22EFBBBF222069643D2257354D304D
        7043656869487A7265537A4E54637A6B633964223F3E203C783A786D706D6574
        6120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A786D70
        746B3D2241646F626520584D5020436F726520352E362D633134352037392E31
        36333439392C20323031382F30382F31332D31363A34303A3232202020202020
        2020223E203C7264663A52444620786D6C6E733A7264663D22687474703A2F2F
        7777772E77332E6F72672F313939392F30322F32322D7264662D73796E746178
        2D6E7323223E203C7264663A4465736372697074696F6E207264663A61626F75
        743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F62652E
        636F6D2F7861702F312E302F2220786D6C6E733A64633D22687474703A2F2F70
        75726C2E6F72672F64632F656C656D656E74732F312E312F2220786D6C6E733A
        786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F31
        2E302F6D6D2F2220786D6C6E733A73744576743D22687474703A2F2F6E732E61
        646F62652E636F6D2F7861702F312E302F73547970652F5265736F7572636545
        76656E74232220786D6C6E733A73745265663D22687474703A2F2F6E732E6164
        6F62652E636F6D2F7861702F312E302F73547970652F5265736F757263655265
        66232220786D6C6E733A70686F746F73686F703D22687474703A2F2F6E732E61
        646F62652E636F6D2F70686F746F73686F702F312E302F2220786D703A437265
        61746F72546F6F6C3D2241646F62652050686F746F73686F7020434320323031
        39202857696E646F7773292220786D703A437265617465446174653D22323032
        302D30382D31355431353A33333A33392D30333A30302220786D703A4D657461
        64617461446174653D22323032302D30382D31355431353A33333A34372D3033
        3A30302220786D703A4D6F64696679446174653D22323032302D30382D313554
        31353A33333A34372D30333A3030222064633A666F726D61743D22696D616765
        2F706E672220786D704D4D3A496E7374616E636549443D22786D702E6969643A
        36643965343136612D376561322D353934642D396462312D6434336263323837
        323838332220786D704D4D3A446F63756D656E7449443D2261646F62653A646F
        6369643A70686F746F73686F703A39333832303961392D616564642D32663435
        2D616532332D6463656639663136613631652220786D704D4D3A4F726967696E
        616C446F63756D656E7449443D22786D702E6469643A35626162333261362D38
        3066362D623334342D616632382D306261303265633763363237222070686F74
        6F73686F703A436F6C6F724D6F64653D2233223E203C786D704D4D3A48697374
        6F72793E203C7264663A5365713E203C7264663A6C692073744576743A616374
        696F6E3D2263726561746564222073744576743A696E7374616E636549443D22
        786D702E6969643A35626162333261362D383066362D623334342D616632382D
        306261303265633763363237222073744576743A7768656E3D22323032302D30
        382D31355431353A33333A33392D30333A3030222073744576743A736F667477
        6172654167656E743D2241646F62652050686F746F73686F7020434320323031
        39202857696E646F777329222F3E203C7264663A6C692073744576743A616374
        696F6E3D227361766564222073744576743A696E7374616E636549443D22786D
        702E6969643A31373335353732372D326535632D373434382D383164612D3762
        35666132363736326330222073744576743A7768656E3D22323032302D30382D
        31355431353A33333A34372D30333A3030222073744576743A736F6674776172
        654167656E743D2241646F62652050686F746F73686F70204343203230313920
        2857696E646F777329222073744576743A6368616E6765643D222F222F3E203C
        7264663A6C692073744576743A616374696F6E3D22636F6E7665727465642220
        73744576743A706172616D65746572733D2266726F6D206170706C6963617469
        6F6E2F766E642E61646F62652E70686F746F73686F7020746F20696D6167652F
        706E67222F3E203C7264663A6C692073744576743A616374696F6E3D22646572
        69766564222073744576743A706172616D65746572733D22636F6E7665727465
        642066726F6D206170706C69636174696F6E2F766E642E61646F62652E70686F
        746F73686F7020746F20696D6167652F706E67222F3E203C7264663A6C692073
        744576743A616374696F6E3D227361766564222073744576743A696E7374616E
        636549443D22786D702E6969643A36643965343136612D376561322D35393464
        2D396462312D643433626332383732383833222073744576743A7768656E3D22
        323032302D30382D31355431353A33333A34372D30333A303022207374457674
        3A736F6674776172654167656E743D2241646F62652050686F746F73686F7020
        43432032303139202857696E646F777329222073744576743A6368616E676564
        3D222F222F3E203C2F7264663A5365713E203C2F786D704D4D3A486973746F72
        793E203C786D704D4D3A4465726976656446726F6D2073745265663A696E7374
        616E636549443D22786D702E6969643A31373335353732372D326535632D3734
        34382D383164612D376235666132363736326330222073745265663A646F6375
        6D656E7449443D22786D702E6469643A35626162333261362D383066362D6233
        34342D616632382D306261303265633763363237222073745265663A6F726967
        696E616C446F63756D656E7449443D22786D702E6469643A3562616233326136
        2D383066362D623334342D616632382D306261303265633763363237222F3E20
        3C2F7264663A4465736372697074696F6E3E203C2F7264663A5244463E203C2F
        783A786D706D6574613E203C3F787061636B657420656E643D2272223F3E32F4
        B53F000001BC4944415478DA633CA0ADCD30108071D4E2518B472D1EB578385A
        CCC4A4545020EAEEFE64D1A2A74B97E251281110209F99F9EEF0E13B1D1DFFFF
        FCA1D462A5A222D9A42408FB5E4FCFE3050BB02A930C09516B6880B09FAF5A75
        ABA989528BAD8F1D63E1E38373EF767501BD8EEED7A020F5C64606464608F7EF
        B76F47CCCC28B5583A3A5AA5B2125904CD6E89C040F5E66664050F264F7E3873
        26A51603816C428252490956BBD1FC0A04402B8116133493D8542D1317A75C56
        862C72BBB5F5EFD7AF1AADAD28B64E9BF660DA34620C24213BC9C4C62A9797E3
        5100B4F22171B6926631567F93E157722C0602A9880895F272465656B8C8FF7F
        FF8091FA68F66C92CC21D962715F5FF5A626348BEF7676E22F5B28B518330DC3
        01D6FC4D1D8B31F32B2576136B31A65FEF4F9C082CA1F0972D945A0C2A87EBEB
        B1E657CC748EA73C27CD62609DA3DED2822C82965F31F337B0767ABA6409A516
        5B1D3ECC2A2888E9576480E6EFBF5FBE1CB1B0A0D462D5DA5AA9F070A8ADB8CB
        61998404655879FE6AEBD6EB78CB38A22C66646151A9AA12767078BE7225FE3A
        473A26463631F1E3E9D3371B1AFEFDF841A9C53402A3168F5A3C6AF1A8C543CF
        6200A174EB99995E4FC60000000049454E44AE426082}
      OnClick = ImgFecharClick
      ExplicitLeft = 911
      ExplicitHeight = 41
    end
  end
  object PRodape: TPanel
    Left = 0
    Top = 608
    Width = 773
    Height = 16
    ParentCustomHint = False
    Align = alBottom
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BiDiMode = bdLeftToRight
    Ctl3D = True
    DoubleBuffered = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
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
  end
  object FDQUserEmpresa: TFDQuery
    Connection = DMPrincipal.FDCevomodadm
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
    Left = 104
    Top = 120
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
  object DSUserEmpresa: TDataSource
    DataSet = FDQUserEmpresa
    Left = 192
    Top = 120
  end
end
