unit CadHorariosFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TfrmCadHorarios = class(TForm)
    menu: TMainMenu;
    Cadastro1: TMenuItem;
    Horrios1: TMenuItem;
    Processos1: TMenuItem;
    Cronometro1: TMenuItem;
    EdtNome: TEdit;
    EdtEmail: TEdit;
    edtSenha: TEdit;
    btnNome: TButton;
    lblNome: TLabel;
    lblEmail: TLabel;
    lblSenha: TLabel;
    procedure Cronometro1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadHorarios: TfrmCadHorarios;

implementation

{$R *.dfm}

uses
  temporizadorFrm;

procedure TfrmCadHorarios.Cronometro1Click(Sender: TObject);
begin
  application.CreateForm(TFrmTemporizador,FrmTemporizador);
  frmTemporizador.ShowModal;
end;

end.
