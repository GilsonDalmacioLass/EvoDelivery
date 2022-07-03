object FrmSelecionaObservacao: TFrmSelecionaObservacao
  Left = 0
  Top = 0
  Caption = 'FrmSelecionaObservacao'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object EdtObsEscrita: TEdit
    Left = 16
    Top = 40
    Width = 337
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 364
    Top = 38
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 1
    OnClick = Button1Click
  end
end
