
{
  this appliction show the fibonacci series get user input show the output
  for fibonacci series in range of 0 to 47
  step1:- enter your input in edit text box for range in 0 to 47
  step2:-press the button or enter key
  step3:- check your result n display of memobox
}

unit fib_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFibo = class(TForm)
    MOM_Display: TMemo;
    LBL_Heading: TLabel;
    BB_click: TButton;
    EDE_Input: TEdit;
    LBL_text: TLabel;
    procedure BB_clickClick(Sender: TObject);
    procedure edit(Sender: TObject; var Key: Char);
    procedure EDE_InputChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fibo: TFibo;

implementation

{$R *.dfm}

procedure TFibo.BB_clickClick(Sender: TObject);

var
  n,n1,n2,z,count:Integer;
begin
try
  if  EDE_Input.text='' then  //check the edit text is empty then procedure exits
  exit;

  MOM_Display.Lines.clear();    // clear for the line of memobox
  n:=StrToInt(EDE_Input.Text);  // get user input in this var
  n1:=0;
  n2:=1;
  count:=0;                // used of check condition
  if n<=0 then             // check input is gretar than zero
    begin
      showmessage('Enter a positive number');  //show the result
    end
  else if n=1 then
    begin
    showmessage('The number is '+IntToStr(n1));
    end
  else while count< n Do         // check for condition using count var
    begin
      { showmessage('The series is'+IntToStr(n1)); }
      MOM_Display.Lines.add(IntToStr(n1));   // add a values in memo box
      z:= n1 + n2;       //addition of nuumber
      n1:=n2;
      n2:=z;
      count:=count+1;         // value are increment
       end;
except
on E:exception do
  showmessage('The exception is create'+E.className);   // show the exception
end;     // try end
end;   //begin end

   {
     get the input for user and check the validation of
     the edit box only take the numbers on give range of 0 to 47
   }
procedure TFibo.edit(Sender: TObject; var Key: Char);
var
  a:String;
begin
    a:=key;
  if not(key in[#0,#13,#8,'0'..'9']) then
  begin
    key:=#0;
  end;
  if key=#13 then
  begin
    EDE_Input.setFocus;
    BB_click.Click;   // call the Button1.click
  end;
{
end;
  {
  the used event to change of edit textbox                                         
  and check the edit box is empty and button is disable
  }
end;

procedure TFibo.EDE_InputChange(Sender: TObject);
begin
  try
    if EDE_Input.text='' then    // check the edit box is empty
      BB_click.enabled:=False  // button is disable
    else if StrToInt(EDE_Input.text)>47 then   //check the user input is greter than 47
    begin
      EDE_Input.text:='47';         // set the value last of 47
      BB_click.enabled:=true;     // button is enabled
    end
    else
    BB_click.Enabled:=true;
  except
  on E:exception do
    showmessage('exception is create '+e.classname);   //exception shows
  end;
end;

end.
