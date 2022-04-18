{
 the application is reverse string. get the user input string and  this string
 show in reverse order in pop messagse.
  step1:- enter your input(String) in edittext box .
  step2:-press the button or enter key.
  step3:- check your result in display from popbox message.
}

unit Reverse_U;
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TF_Reverse = class(TForm)
    BTN_click: TButton;
    EDE_Input: TEdit;
    LBL_text: TLabel;
    procedure BTN_clickClick(Sender: TObject);
    procedure EDE_InputKeyPress(Sender: TObject; var Key: Char);
    procedure EDE_InputChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Reverse: TF_Reverse;

implementation

{$R *.dfm}

{
  create a function function name is checkReverse and funtion type is
  String.
  get one parameter type is String.
}
function checkReverse(text:String):String;
var
temp:String;
i:Integer;
begin
  try
    temp:='';     //null
    for i:= 1 to length(text) do // for 1 to input lenght
      begin
        temp:=text[i]+temp;     //store text in temp
      end;
      ShowMessage(temp);    //show the result in popbox
  except
  on E:exception do
    showMessage('exception occuer'+E.ClassName+' '+E.Message);
  end;
end;



{
 call the checkreverse function and pass the string parameter using user input
then click result button and check your result.
}
procedure TF_Reverse.BTN_clickClick(Sender: TObject);
begin
   checkReverse(EDE_Input.Text);   //call the function 
end;


{
check the validation of used keypress procedure
and clcik enter button show the result}

procedure TF_Reverse.EDE_InputKeyPress(Sender: TObject; var Key: Char);
begin
 { if not(key in[#0,#8,'a'..'z', 'A'..'Z' ]) then
  begin
    key:=#0;   //null
  end ;}
  if( key = #13) and (EDE_Input.Text<>'')  then    //check input not empty
        BTN_clickClick(Sender);     // press enter key
end;

{
check the validation of button if the edit text is empty then button is
disable and enter some char then button is enabled and click.
used trim method remove to the white space.
}
procedure TF_Reverse.EDE_InputChange(Sender: TObject);
begin
 if trim(EDE_Input.Text)='' then      //trim method used
    begin
    EDE_Input.Text:='';      //null
    BTN_click.Enabled :=False  //button disable
    end
  else
  BTN_click.Enabled:=True;   //button enable
end;
end.
