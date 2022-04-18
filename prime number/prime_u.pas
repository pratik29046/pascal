{
  This application show the prime number series form start with 2
  show the range of the of the prime number.
  step1:- enter your input in edit text box for range in start 2.
  step2:-press the button or enter key.
  step3:- check your result in display of memobox.
}
unit prime_u;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFRM_prime = class(TForm)
    BTN_click: TButton;
    MOM_Display: TMemo;
    LBL_Heading: TLabel;
    EDE_Input: TEdit;
    LBL_Text: TLabel;
    procedure BTN_clickClick(Sender: TObject);
    procedure EDE_InputChange(Sender: TObject);
    procedure EDE_InputKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  FRM_prime: TFRM_prime;
implementation

{$R *.dfm}

{
create the function and function name is primenumber
pass the one parameter in integer.
}
function primenumber(n: integer): boolean;
var
  i: integer;
  max: real;
begin
try
  if n = 2 then   // number start with 2
    primenumber := true
  else if (n <= 1) or (n mod 2 = 0) then //check the condition
   primenumber := false
  else
    begin
    primenumber := true;
    i := 3;
    max := sqrt(n);     // square root of number
    while i <= max do   // condition checks 3 is greter then i
    begin
      if n mod i = 0 then       // check condition input is mod by i
      begin
        primenumber := false;         //condition is true then exit the function
        exit
      end;
      i := i + 1;     //increments of i by one
    end;
  end;
except
on E:exception do
showMessage('exception create'+E.ClassName);  //show the exception
end;
end;

{
  call the prime function and pass the parameter using user input  then
  click result button and check your result.
}

procedure TFRM_prime.BTN_clickClick(Sender: TObject);
var
  s,n: integer;
begin
 if FRM_prime.EDE_Input.text='' then  //check the edit text is empty then procedure exits
   exit;
 if (EDE_Input.text='1')or (EDE_Input.text='0') then  //check number in user
  showMessage('invalid range');   //show the message
  MOM_Display.Lines.Clear;  // first clear display box then show output
  s:=StrTOInt(EDE_Input.text);   // get the user input in number
  for n := 0 to s do       //start for the loop 0 to input
   begin
      if (primenumber(n)) then     //function call and pass user input
      begin
          MOM_Display.Lines.add(IntTOStr(n));   //display the result one by one
      end;
  end;
end;



{
check the validation of button if the edit text is empty then button is
disable and enter some number then button is enabled and click
}
procedure TFRM_prime.EDE_InputChange(Sender: TObject);
begin
  try
    if EDE_Input.text='' then    // check the edit box is empty
      BTN_click.enabled:=False  // button is disable
    else if StrToInt(EDE_Input.text)>50 then   //check the user input is greter than 50
    begin
      EDE_Input.text:='50';         // set the value last of 50
      BTN_click.enabled:=true;     // button is enabled
    end
    else
    BTN_click.Enabled:=true;     //button is enabled
  except
  on E:exception do
    showmessage('exception is create '+e.classname);   //exception shows
  end;
end;
{
check for validations used in onKeypress event.
only take to number does not take char.
does not accept space.
}
procedure TFRM_prime.EDE_InputKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in[#0,#13,#8,'0'..'9']) then
  begin
    key:=#0;   //null
  end
  else if key = #13 then
     BTN_clickClick(Sender);  // used for enter key
end;

end.
