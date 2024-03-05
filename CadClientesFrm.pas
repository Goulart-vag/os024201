unit CadClientesFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TfrmCadClientes = class(TForm)
    menu: TMainMenu;
    Cadastro1: TMenuItem;
    Horrios1: TMenuItem;
    Processos1: TMenuItem;
    Cronometro1: TMenuItem;
    EdtNome: TEdit;
    EdtEmail: TEdit;
    edtSenha: TEdit;
    btnCadastro: TButton;
    lblNome: TLabel;
    lblEmail: TLabel;
    lblSenha: TLabel;
    Funconarios1: TMenuItem;
    procedure Cronometro1Click(Sender: TObject);
    procedure Funconarios1Click(Sender: TObject);
    procedure Horrios1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadClientes: TfrmCadClientes;

implementation

{$R *.dfm}

uses
  temporizadorFrm, cadFuncionariosfrm;

procedure TfrmCadClientes.Cronometro1Click(Sender: TObject);
begin
  self.close;
  self.hide;
  application.CreateForm(TFrmTemporizador,FrmTemporizador);
  frmTemporizador.ShowModal;
end;

procedure TfrmCadClientes.Funconarios1Click(Sender: TObject);
begin
  self.close;
  self.hide;
  application.CreateForm(TFrmCadFuncionarios,FrmCadFuncionarios);
  FrmCadFuncionarios.ShowModal;
end;

procedure TfrmCadClientes.Horrios1Click(Sender: TObject);
begin
  self.close;
  self.hide;
  application.CreateForm(TfrmCadClientes,frmCadClientes);
  frmCadClientes.ShowModal;
end;

end.
