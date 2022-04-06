 {
    the application get the input of email id and show the this email domain
   name in pop box.
   first check the mail validation if email validation are success then check
   domain validation then show the domail of email id in popbox.
   process:=
   step1:- get gmail id in edit box.
   step2:- press result button or enter key
   step3:-show the result in popbox

 }

unit email_u;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    EDE_Input: TEdit;
    BOB_click: TButton;
    LBL_heading: TLabel;
    LBL_Text: TLabel;
    procedure BOB_clickClick(Sender: TObject);
    procedure EDE_InputKeyPress(Sender: TObject; var Key: Char);
    procedure EDE_InputChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function checkemail(email:String):Boolean;  //this type only return true and false values of result
var
  i: Integer;
  temp1 , temp2 : String;    //check start and end
begin
  try
    Result:= False;   //return

    i:= Pos('@', email);  //check @ char pos in int

    if (i = 0) then
      Exit;

    // for start info
    temp1  := Copy(email,1,i - 1);  // check validation for start char in email

    if temp1 = '' then      //info is null
      Exit;

    for i := 1 to Length(temp1) do     // loop for lenght of start info
    begin
      if not (temp1[i] in ['a'..'z', '.', 'A'..'Z', '0'..'9', '_' , '+' , '-' , '-' , '@' , '[' , ']' , '$' , '#' , '%' , '^' , '&' , '*' , '(' , ')' , '/' , '>' , '<' , ',' , '`' ,'~']) then
        Exit;   //check for validations in before @
    end;

    // for  after @

    temp2 := Copy(email, i + 1, Length(email));  //copy method used and store in temp2

    if temp2 = '' then      // null
      Exit;

    for i := 1 to Length(temp2) do     // start 1 in  temp2 length
    begin
      if not (temp2[i] in ['A'..'Z', 'a'..'z', '0'..'9', '-', '.']) then
        Exit;       // chack validation after @
    end;

    // used to the pos function and check the condition for Start of temp1 and temp2
    if (pos('.', temp1) = 1) or (Pos('..', email) > 0) or (Pos('@@', email) > 0) or (pos('.@', email) > 0) or  (pos('.',temp2) = length(temp2)) then
      Exit;      // check before @ and after @

    if (Pos('-', temp2) = 1) or (pos('.', temp2) < 1) or (pos('.', temp2) = 1) or (pos('.', temp2) = length(temp2)) or (Pos('-', temp2) = Length(temp2)) or (pos('-', temp2) = 1) or (Pos('-', temp2) = Length(temp2)) then
      Exit;      // check before @ and after @

    Result:= True;    // return
  except
   on E:exception do
   showMessage('exception occurs'+E.ClassName);    //shwo the exception
  end;
end;

{
 in this case call the checkemail function and pass the user input
 then check condition.
}
procedure TForm1.BOB_clickClick(Sender: TObject);
var
emails:String;       // used to store copy function
begin
    if checkemail(EDE_Input.Text) then  //call the function and pass user input
       begin
          emails:= copy(EDE_Input.Text,pos('@',EDE_Input.Text )+1,Length(EDE_Input.Text)); //used to copy function.
          showMessage(emails)    //show the domain only in pop message
       end
    else
        showMessage('Email is Invalid please try again  ');
end;


procedure TForm1.EDE_InputKeyPress(Sender: TObject; var Key: Char);
begin
  if( key = #13) and (EDE_Input.Text<>'')  then    //check input not empty
        BOB_clickClick(Sender);    // press enter key
end;

procedure TForm1.EDE_InputChange(Sender: TObject);
begin
 if trim(EDE_Input.Text)='' then      //trim method used
    begin
    EDE_Input.Text:='';      //null
    BOB_click.Enabled :=False  //button disable
    end
  else
  BOB_click.Enabled:=True;   //button enable
end;

end.

