unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
var
  Chisl : string;
  ChislInt : integer;

begin
  Chisl:= InputBox('Проверка числа','Введите число','0');
      ChislInt:= StrToInt(Chisl);

  if ((ChislInt mod 2 = 0 )and (ChislInt mod 3 = 0) and (ChislInt > 0 ))then
    ShowMessage('Число чётное, Число кратно 3, Число положительное. ')
  else
  if
  ((ChislInt mod 2 = 0 )and (ChislInt mod 3 = 0))    then
  ShowMessage('Число чётное, Число кратно 3')
  else if
  ((ChislInt mod 3 = 0) and (ChislInt > 0 ))   then
 ShowMessage('Число кратно 3, Число положительное. ')
 else if
  ((ChislInt mod 2 = 0 ) and (ChislInt > 0 ))    then
  ShowMessage('Число чётное, Число положительное. ');




{if ChislInt mod 3 = 0 then
    ShowMessage('Число кратно 3.');
if ChislInt > 0 then
    ShowMessage('Число положительное.');    }

end;




end.

