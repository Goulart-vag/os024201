unit CadFuncionariosFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadClientesFrm, Menus;

type
  TFrmCadFuncionarios = class(TfrmCadClientes)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadFuncionarios: TFrmCadFuncionarios;

implementation

{$R *.dfm}

procedure TFrmCadFuncionarios.FormCreate(Sender: TObject);
begin
  btnCadastro.caption := 'Cadastrar funcionários';
end;

end.
