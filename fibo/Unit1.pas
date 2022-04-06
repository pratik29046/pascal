unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label2: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  n,n1,n2,z,count:Integer;
begin
try
  n:=8;
  n1:=0;
  n2:=1;
  count:=0;
  if n<=0 then
  begin
    showmessage('Enter a positive number');
  end

  else if n=1 then
  begin
    showmessage('The number is '+IntToStr(n1));
  end
  else
  while count< n Do
  begin
    showmessage('The series is'+IntToStr(n1));
    z:= n1 + n2;       //addition of nuumber
    n1:=n2;
    n2:=z;
    count:=count+1;         // value are increment
  end;

  except
    on E:exception do
    showmessage('The exception is create'+E.className);
    end;     // try end
    end;   //begin end

end.
