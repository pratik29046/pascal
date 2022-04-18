object Fibo: TFibo
  Left = 883
  Top = 129
  BorderStyle = bsDialog
  Caption = 'Fibo_frm'
  ClientHeight = 319
  ClientWidth = 473
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LBL_Heading: TLabel
    Left = 128
    Top = 16
    Width = 198
    Height = 29
    Caption = 'Fibonacci Series'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LBL_text: TLabel
    Left = 24
    Top = 64
    Width = 103
    Height = 20
    Caption = 'Enter_Limit :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object MOM_Display: TMemo
    Left = 8
    Top = 104
    Width = 457
    Height = 201
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object BB_click: TButton
    Left = 352
    Top = 56
    Width = 105
    Height = 33
    Caption = 'Show_Result'
    Enabled = False
    TabOrder = 1
    OnClick = BB_clickClick
  end
  object EDE_Input: TEdit
    Left = 144
    Top = 66
    Width = 189
    Height = 21
    TabOrder = 0
    OnChange = EDE_InputChange
    OnKeyPress = edit
  end
end
