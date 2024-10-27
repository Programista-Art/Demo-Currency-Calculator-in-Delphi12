object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Kalkulator walutowy '
  ClientHeight = 183
  ClientWidth = 294
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object PanelDolny: TPanel
    Left = 0
    Top = 0
    Width = 294
    Height = 183
    Align = alClient
    TabOrder = 0
    ExplicitTop = 27
    ExplicitHeight = 159
    object Label2: TLabel
      Left = 11
      Top = 46
      Width = 55
      Height = 21
      Caption = 'Kwota $'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 11
      Top = 73
      Width = 36
      Height = 21
      Caption = 'Mam'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 292
      Height = 21
      Align = alTop
      Alignment = taCenter
      Caption = 'Kalkulator walutowy'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 141
    end
    object LCena: TLabel
      Left = 1
      Top = 161
      Width = 292
      Height = 21
      Align = alBottom
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 88
      ExplicitTop = 151
      ExplicitWidth = 4
    end
    object EditKurs: TEdit
      Left = 72
      Top = 48
      Width = 156
      Height = 23
      TabOrder = 0
      OnChange = EditKursChange
      OnKeyPress = EditKursKeyPress
    end
    object EditCena: TEdit
      Left = 72
      Top = 77
      Width = 156
      Height = 23
      TabOrder = 1
      OnChange = EditCenaChange
    end
    object ButtonOblicz: TButton
      Left = 72
      Top = 120
      Width = 75
      Height = 25
      Caption = 'Oblicz'
      Enabled = False
      TabOrder = 2
      OnClick = ButtonObliczClick
    end
    object Button2: TButton
      Left = 153
      Top = 120
      Width = 75
      Height = 25
      Caption = 'Usu'#324
      TabOrder = 3
      OnClick = Button2Click
    end
  end
end
