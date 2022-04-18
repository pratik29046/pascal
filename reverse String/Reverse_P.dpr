program Reverse_P;

uses
  ExceptionLog,
  Forms,
  Reverse_U in 'Reverse_U.pas' {F_Reverse};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TF_Reverse, F_Reverse);
  Application.Run;
end.
