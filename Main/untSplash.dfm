object frmSplash: TfrmSplash
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmSplash'
  ClientHeight = 248
  ClientWidth = 520
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
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 520
    Height = 39
    Align = alTop
    Alignment = taCenter
    Caption = 'Sample 01'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 148
  end
  object Timer1: TTimer
    Interval = 3000
    OnTimer = Timer1Timer
    Left = 440
    Top = 120
  end
end
