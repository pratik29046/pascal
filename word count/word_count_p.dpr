program word_count_p;

uses
  ExceptionLog,
  Forms,
  word_count_u in 'word_count_u.pas' {Twc};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TTwc, Twc);
  Application.Run;
end.
