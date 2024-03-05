object frmCadHorarios: TfrmCadHorarios
  Left = 338
  Top = 113
  Width = 696
  Height = 573
  Caption = 'Cadastro de hor'#225'rios'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -20
  Font.Name = 'Verdana'
  Font.Style = []
  Menu = menu
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 25
  object lblNome: TLabel
    Left = 192
    Top = 104
    Width = 74
    Height = 25
    Caption = 'Nome: '
  end
  object lblEmail: TLabel
    Left = 192
    Top = 160
    Width = 56
    Height = 25
    Caption = 'Email'
  end
  object lblSenha: TLabel
    Left = 192
    Top = 224
    Width = 64
    Height = 25
    Caption = 'Senha'
  end
  object EdtNome: TEdit
    Left = 424
    Top = 104
    Width = 121
    Height = 33
    TabOrder = 0
  end
  object EdtEmail: TEdit
    Left = 424
    Top = 160
    Width = 121
    Height = 33
    TabOrder = 1
  end
  object edtSenha: TEdit
    Left = 424
    Top = 216
    Width = 121
    Height = 33
    TabOrder = 2
  end
  object btnNome: TButton
    Left = 280
    Top = 360
    Width = 137
    Height = 41
    Caption = 'Cadastrar'
    TabOrder = 3
  end
  object menu: TMainMenu
    Left = 32
    Top = 32
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Horrios1: TMenuItem
        Caption = 'Hor'#225'rios'
        Enabled = False
      end
    end
    object Processos1: TMenuItem
      Caption = 'Processos'
      object Cronometro1: TMenuItem
        Caption = 'Cronometro'
        OnClick = Cronometro1Click
      end
    end
  end
end
