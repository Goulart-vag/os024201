object HomeFrm: THomeFrm
  Left = 274
  Top = 230
  Width = 1305
  Height = 675
  Caption = 'HomeFrm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = menu
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object menu: TMainMenu
    Left = 32
    Top = 32
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Horrios1: TMenuItem
        Caption = 'Clientes'
        OnClick = Horrios1Click
      end
      object Funcionrios1: TMenuItem
        Caption = 'Funcion'#225'rios'
        OnClick = Funcionrios1Click
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
