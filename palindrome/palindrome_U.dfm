object FRM_Palindrome: TFRM_Palindrome
  Left = 728
  Top = 315
  BorderStyle = bsDialog
  Caption = 'FRM_Pelindrome'
  ClientHeight = 78
  ClientWidth = 449
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LBL_heading: TLabel
    Left = 144
    Top = 0
    Width = 135
    Height = 29
    Caption = 'Palindrome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LBL_text: TLabel
    Left = 8
    Top = 40
    Width = 116
    Height = 20
    Caption = 'Enter your string'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object EDE_Input: TEdit
    Left = 136
    Top = 40
    Width = 201
    Height = 25
    AutoSize = False
    TabOrder = 0
    OnChange = EDE_InputChange
    OnKeyPress = EDE_InputKeyPress
  end
  object BOB_click: TButton
    Left = 360
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Result'
    Enabled = False
    TabOrder = 1
    OnClick = BOB_clickClick
  end
end
