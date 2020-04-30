object Form1: TForm1
  Left = 318
  Top = 258
  Width = 237
  Height = 101
  Caption = 'Task2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 3
    Height = 13
  end
  object Button1: TButton
    Left = 16
    Top = 32
    Width = 89
    Height = 25
    Caption = 'Open'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 32
    Width = 89
    Height = 25
    Caption = 'Process'
    TabOrder = 1
    Visible = False
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 120
    Top = 32
    Width = 89
    Height = 25
    Caption = 'Close'
    TabOrder = 2
    Visible = False
    OnClick = Button3Click
  end
  object OpenDialog1: TOpenDialog
    Left = 104
    Top = 65528
  end
  object SaveDialog1: TSaveDialog
    Left = 128
    Top = 65528
  end
end
