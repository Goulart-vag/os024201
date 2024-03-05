unit FrmHome;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  THomeFrm = class(TForm)
    menu: TMainMenu;
    Cadastro1: TMenuItem;
    Horrios1: TMenuItem;
    Processos1: TMenuItem;
    Cronometro1: TMenuItem;
    Funcionrios1: TMenuItem;
    procedure Horrios1Click(Sender: TObject);
    procedure Cronometro1Click(Sender: TObject);
    procedure Funcionrios1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HomeFrm: THomeFrm;

implementation

{$R *.dfm}

uses
  cadFuncionariosFrm,temporizadorFrm, cadClientesFrm;


procedure THomeFrm.Horrios1Click(Sender: TObject);
begin
    Application.CreateForm(TFrmCadClientes, frmCadClientes);
    frmCadClientes.show;
end;

procedure THomeFrm.Cronometro1Click(Sender: TObject);
begin
    application.CreateForm(TFrmTemporizador,FrmTemporizador);
    frmTemporizador.Show;
end;

procedure THomeFrm.Funcionrios1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmCadFuncionarios, frmCadFuncionarios);
  FrmCadFuncionarios.show;
end;

end.
