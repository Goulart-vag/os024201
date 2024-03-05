program SEOCorp024201;

uses
  Forms,
  TemporizadorFrm in 'TemporizadorFrm.pas' {frmTemporizador},
  ThreadTemporizador in 'ThreadTemporizador.pas',
  CadClientesFrm in 'CadClientesFrm.pas' {frmCadClientes},
  FrmHome in 'FrmHome.pas' {HomeFrm},
  CadFuncionariosFrm in 'CadFuncionariosFrm.pas' {FrmCadFuncionarios};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(THomeFrm, HomeFrm);
  Application.CreateForm(TFrmCadFuncionarios, FrmCadFuncionarios);
  Application.Run;
end.
