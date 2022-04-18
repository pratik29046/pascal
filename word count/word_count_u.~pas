 {
  This appliction show the how much number of word and char in your sentence
  the get user input and count the number of words and how many word are repeated
  your sentence and show the result of single word,repeated word in number using
  count.
  step1:- enter your input in edit text box in sentences.
  step2:-press the result button or enter key in keyborad.
  step3:- check your result and display of memobox in your output.
 }

unit word_count_u;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TTwc = class(TForm)
    BB_click: TButton;
    EDE_Input: TEdit;
    LBL_Heading: TLabel;
    LBL2_Text: TLabel;
    MBM_Display: TMemo;
    procedure BB_clickClick(Sender: TObject);
    procedure EDE_InputKeyPress(Sender: TObject; var Key: Char);
    procedure EDE_InputChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Twc: TTwc;

implementation

{$R *.dfm}

procedure frequency(name: string); //procedure create  and pass the parameter for user
var
  i, j, wc: Integer;
  temp, word2: string;
  found: Boolean;
  arrays: array[0..200] of string;        // range of char 0 to 200
begin
Twc.MBM_Display.Lines.clear();  // clear the display box
  try
  temp:='';    // null
  wc := 0;     // start with zero in word count value
  for i := 1 to Length(name) do     // length of string
  begin
    if (name[i] in [' ',',',';']) then  // ignore space does not count
    begin
     found := False;
      for j := 0 to Length(arrays) - 1 do      //store  the value
      begin
        if temp = arrays[j] then      //check the condition
        begin
          found := True;
          Break;
        end;
      end;

      if not found then    // found is not true
      begin
       arrays [wc] := temp;  // store the value of temp
        wc := wc + 1;         // increment of word count
      end;
      temp := '';             // temp null
    end
    else
    begin
      temp := temp + name[i];    // temp and name value are store in temp
      if i = Length(name) then
      begin
        found:= False;           // result is false
        for j := 0 to Length(arrays) - 1 do    //move to 0 to last index of array
        begin
          if temp = arrays[j] then     // check
          begin
            found := True;         //result true
            Break;                 // stop the condition
          end;
        end;
        if not found then            // result is not ture
          arrays[wc] := temp;
      end;
    end;                              // end the beguin
  end;
  for j := 0 to Length(arrays) - 1 do      // loop start o to last index of arrays
  begin
    if arrays[j] <> ' ' then           // not equal to space
      { ShowMessage(arrays[j]);  }        // show in words
  end;
  for i := 0 to Length(arrays) - 1 do  // loop start o to last index of arrays
  begin
    word2 := arrays[i];                //the value of array element
    wc := 0;                           // word count  0
    if word2 = '' then                  // word2 is null
      Continue;                         // move the next step
    temp := '';
    for j := 1 to Length(name) do        //loop start 0 to name length
    begin
      if (name[j] in [' ', ',', ';']) then      //ignore
      begin
        if temp = word2 then
          wc := wc + 1;                        //word count increments
        temp := '';                            //temp null
      end
      else
      begin
        temp := temp + name[j];           // store the words
        if j = Length(name) then          // check condition word length
        begin
          if temp = word2 then
            wc := wc + 1;                 //increment of word count
          temp := '';                     // temp null
        end
      end;
    end;
   { ShowMessage(word2 + '  :' + IntToStr(wc));  }
    Twc.MBM_Display.Lines.add(word2 +' := '+IntToStr(wc));  // show in memo box
  end;
  except
    on e : Exception do
    begin
      ShowMessage('The exception is create'+e.Message+' '+e.ClassName);  //exception shows
    end;
end;
end;

{
call the procedure used click button
call the frequency procedure  pass the user input parameters
}
procedure TTwc.BB_clickClick(Sender: TObject);
begin
  frequency(EDE_Input.text);  // call the frequency procedure and pass parameter
end;



{
 check for the validation of space in edit text
 the char  start with first position does not add space in start char
 used key press
}
procedure TTwc.EDE_InputKeyPress(Sender: TObject; var Key: Char);
begin

    //if not(key in[#0,#13,#8,'a'..'z','A'..'Z']) then
    //  key := #0  //  null
    //else
     if key = #13 then
     BB_clickClick(sender);    //used for enter buttons

  {if not(key in[#0,#13,#8,'a'..'z','A'..'Z']) then
    begin
      key:=#0;
    end; }
end;



{
check the validation of button if the edidt text is empty then button is
disable and enter word the button is enabled
}
procedure TTwc.EDE_InputChange(Sender: TObject);
begin
try
 if trim(EDE_Input.Text)='' then                  // input is empty
  begin
    EDE_Input.Text :='';
    BB_click.enabled:=false; // button is disabled
  end
  else
    BB_click.enabled:=true; // button is enabled
except
on E: exception do
 ShowMessage('exception are create'+E.className);    // exception show
end;
end;
end.
