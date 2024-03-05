unit ThreadTemporizador;

interface

uses
  SysUtils,Dialogs, Classes, StdCtrls;

type
  TThreadTemporizador = class(TThread)
  private
    FActive:boolean;
    Flabel:Tlabel;
    procedure setActive(value:boolean);
    procedure updateLabel(value:string);
  public
    segundo:real;
    minuto:real;
    hora:real;
    property Active:boolean read FActive write setActive;
    procedure asignLabel(ALabel:TLabel);
    function limpar():string;
  protected
    procedure Execute; override;
  end;



implementation


procedure TThreadTemporizador.asignLabel(ALabel:Tlabel);
begin
  Flabel := ALabel;
end;

function TThreadTemporizador.limpar():string;
begin
  segundo := 0;
  minuto := 0;
  hora := 0;
  Result:= '00:00:00';
end;

procedure TThreadTemporizador.updateLabel(value:string);
begin
  FLabel.caption := value;
end;

procedure TThreadTemporizador.Execute;
begin
while FActive do
begin
    updateLabel( formatFloat('00',hora) + ':' + formatFloat('00',minuto) + ':' + formatFloat('00',segundo));
    if segundo < 59 then
    segundo:= segundo + 1
    else
    begin
      segundo:= 0;
      if minuto < 59 then
      minuto:= minuto + 1
      else
      begin
        minuto:= 0;
        hora:= hora +1
      end;

    end;
    Sleep(1000);
end;
end;

procedure TThreadTemporizador.setActive(value:boolean);
begin
  FActive := value;
end;

end.
