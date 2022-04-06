object Form1: TForm1
  Left = 928
  Top = 290
  BorderStyle = bsDialog
  Caption = 'Frm_Domain'
  ClientHeight = 74
  ClientWidth = 390
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
    Left = 136
    Top = 8
    Width = 133
    Height = 24
    Caption = 'Domain Name'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LBL_Text: TLabel
    Left = 8
    Top = 40
    Width = 104
    Height = 20
    Caption = 'Enter Email :->'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object EDE_Input: TEdit
    Left = 120
    Top = 40
    Width = 177
    Height = 21
    TabOrder = 0
    OnChange = EDE_InputChange
    OnKeyPress = EDE_InputKeyPress
  end
  object BOB_click: TButton
    Left = 304
    Top = 32
    Width = 75
    Height = 33
    Caption = 'Result'
    TabOrder = 1
    OnClick = BOB_clickClick
  end
end
