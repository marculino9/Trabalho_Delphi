object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 341
  ClientWidth = 360
  Color = clFuchsia
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Um: TSpeedButton
    Left = 16
    Top = 64
    Width = 49
    Height = 49
    Caption = '1'
    OnClick = UmClick
  end
  object Dois: TSpeedButton
    Left = 82
    Top = 64
    Width = 49
    Height = 49
    Caption = '2'
    OnClick = UmClick
  end
  object Quatro: TSpeedButton
    Left = 16
    Top = 136
    Width = 49
    Height = 49
    Caption = '4'
    OnClick = UmClick
  end
  object Seis: TSpeedButton
    Left = 145
    Top = 136
    Width = 49
    Height = 49
    Caption = '6'
    OnClick = UmClick
  end
  object Cinco: TSpeedButton
    Left = 82
    Top = 136
    Width = 49
    Height = 49
    Caption = '5'
    OnClick = UmClick
  end
  object Menos: TSpeedButton
    Left = 296
    Top = 64
    Width = 49
    Height = 49
    Caption = '-'
    OnClick = MenosClick
  end
  object Tres: TSpeedButton
    Left = 145
    Top = 64
    Width = 49
    Height = 49
    Caption = '3'
    OnClick = UmClick
  end
  object Sete: TSpeedButton
    Left = 16
    Top = 205
    Width = 49
    Height = 49
    Caption = '7'
    OnClick = UmClick
  end
  object Nove: TSpeedButton
    Left = 145
    Top = 205
    Width = 49
    Height = 49
    Caption = '9'
    OnClick = UmClick
  end
  object Oito: TSpeedButton
    Left = 82
    Top = 205
    Width = 49
    Height = 49
    Caption = '8'
    OnClick = UmClick
  end
  object Apagar: TSpeedButton
    Left = 224
    Top = 271
    Width = 49
    Height = 57
    Caption = 'C'
    OnClick = ApagarClick
  end
  object Zero: TSpeedButton
    Left = 16
    Top = 271
    Width = 178
    Height = 57
    Caption = '0'
    OnClick = UmClick
  end
  object Mais: TSpeedButton
    Left = 224
    Top = 64
    Width = 49
    Height = 49
    Caption = '+'
    OnClick = MaisClick
  end
  object Vezes: TSpeedButton
    Left = 224
    Top = 136
    Width = 49
    Height = 49
    Caption = 'X'
    OnClick = VezesClick
  end
  object Virgula: TSpeedButton
    Left = 224
    Top = 205
    Width = 49
    Height = 49
    Caption = ','
    OnClick = VirgulaClick
  end
  object Igual: TSpeedButton
    Left = 296
    Top = 207
    Width = 49
    Height = 121
    Caption = '='
    OnClick = IgualClick
  end
  object Divisao: TSpeedButton
    Left = 296
    Top = 136
    Width = 49
    Height = 49
    Caption = #247
    OnClick = DivisaoClick
  end
  object tela: TEdit
    Left = 16
    Top = 8
    Width = 329
    Height = 38
    AutoSize = False
    Color = clWhite
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    NumbersOnly = True
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
  end
end
