{
   This application show the given string is palindrome or not.
   the given string get user input
  show the result in showmessagebox.
  step1:- enter your input(String) in edittext box .
  step2:-press the button or enter key.
  step3:- check your result in display of popbox.
  if given string is palindrome then show yes other then no.
  check given string and revers string are same the result is true else false
}


unit palindrome_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFRM_Palindrome = class(TForm)
    EDE_Input: TEdit;
    BOB_click: TButton;
    LBL_heading: TLabel;
    LBL_text: TLabel;
    procedure BOB_clickClick(Sender: TObject);
    procedure EDE_InputChange(Sender: TObject);
    procedure EDE_InputKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_Palindrome: TFRM_Palindrome;

implementation

{$R *.dfm}


{
  create a function function name is checkpalindrome and funtion type is
  String.
  get one parameter type is String.
}
function checkpalindrome(text:String):String;   //create a function
var
    temp:String;          // create a extra string var
    x:Integer;            // used to the for loop
begin
  try
    for x:=length(text) downto 1 do    //for loop start with lenght of input and end with 1
      begin
        temp:=temp+text[x];            // store temp var
      end;

    if text=temp then     // check the temp and user input
      begin
        showMessage('The String is palindrome')   //if the user input and temp are same
      end
    else
        showMessage('The String is not palindrome');  // the  user input and temp are not same
  except
  on E:exception do
    showMessage('exception occure '+E.ClassName+' '+E.Message);
  end;
end;


{
call the checkpalindrome function and pass the string parameter using user input
then click result button and check your result.
 }
procedure TFRM_Palindrome.BOB_clickClick(Sender: TObject);
begin
    checkpalindrome(trim(EDE_Input.Text));    //call the function and pass user Input
end;


{
check the validation of button if the edit text is empty then button is
disable and enter some char then button is enabled and click.
used trim method remove to the white space.
}
procedure TFRM_Palindrome.EDE_InputChange(Sender: TObject);
begin
  if trim(EDE_Input.Text)='' then      //trim method used
    begin
    EDE_Input.Text:='';      //null
    BOB_click.Enabled :=False  //button disable
    end
  else
  BOB_click.Enabled:=True;   //button enable

end;

{
check the validation of used keypress procedure
and clcik enter button show the result
}
procedure TFRM_Palindrome.EDE_InputKeyPress(Sender: TObject;
  var Key: Char);
  begin
      if( key = #13) and (EDE_Input.Text<>'')  then    //check input not empty
        BOB_clickClick(Sender);     // press enter key
  end;

end.
