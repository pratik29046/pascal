object FRM_prime: TFRM_prime
  Left = 871
  Top = 304
  BorderStyle = bsDialog
  Caption = 'FRM_prime_series'
  ClientHeight = 215
  ClientWidth = 381
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LBL_Heading: TLabel
    Left = 152
    Top = 0
    Width = 99
    Height = 16
    Caption = 'Prime Number'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LBL_Text: TLabel
    Left = 16
    Top = 24
    Width = 98
    Height = 16
    Caption = 'Enter your range'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object BTN_click: TButton
    Left = 288
    Top = 16
    Width = 75
    Height = 33
    Caption = 'Button'
    TabOrder = 1
    OnClick = BTN_clickClick
  end
  object MOM_Display: TMemo
    Left = 8
    Top = 56
    Width = 361
    Height = 153
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object EDE_Input: TEdit
    Left = 128
    Top = 24
    Width = 145
    Height = 21
    TabOrder = 0
    OnChange = EDE_InputChange
    OnKeyPress = EDE_InputKeyPress
  end
end
