unit wordcount;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
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
a:array[1..50] of String;
w1,temp:=String;
i,j,wc:=Integer;
f:=Boolean;

begin
wc:=1; //word count
temp:=''; // check of string
w1:='hello dear'; // user string

for i: 0 to length(w1) do
begin
if w1[i] in ['',';',','] then
begin
for j:=0 to length(a)-1 do
begin
if temp = a[j] then
begin
f:=True;
break;
end
else
f:=False;
end;

if not f then
a[wc]:=temp;
wc:=wc+1;
temp:'';
end
else
begin
temp:= temp+w1[i];
end;
showmessage(IntToStr(wc));
end;

end.
