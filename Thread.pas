unit Thread;

interface

uses
  SysUtils,Dialogs, Classes;

type
  TThreadTemporizador = class(TThread)
  private
    FActive:Boolean;
    procedure setActive(Value: Boolean);
  public
    property Active: Boolean write setActive;
  protected
    procedure Execute; override;
  end;



implementation


procedure TThreadTemporizador.Execute;
begin
  while FActive = true do
  begin
    showmessage('oláaaa');
  end;
end;

procedure TThreadTemporizador.setActive(value:boolean);
begin
  FActive := value;
end;

end.
