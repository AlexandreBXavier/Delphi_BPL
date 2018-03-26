object frmModelo: TfrmModelo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Form Model'
  ClientHeight = 384
  ClientWidth = 705
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 576
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 48
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'It works!'
  end
  object Button2: TButton
    Left = 175
    Top = 54
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 2
    OnClick = Button2Click
  end
end
