object F_Reverse: TF_Reverse
  Left = 871
  Top = 426
  BorderStyle = bsDialog
  Caption = 'FRM_Reverse'
  ClientHeight = 52
  ClientWidth = 415
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LBL_text: TLabel
    Left = 8
    Top = 16
    Width = 123
    Height = 20
    Caption = 'Enter your String '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object BTN_click: TButton
    Left = 328
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Result'
    Enabled = False
    TabOrder = 1
    OnClick = BTN_clickClick
  end
  object EDE_Input: TEdit
    Left = 144
    Top = 16
    Width = 169
    Height = 21
    TabOrder = 0
    OnChange = EDE_InputChange
    OnKeyPress = EDE_InputKeyPress
  end
end
