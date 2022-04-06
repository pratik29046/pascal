program fib_p;

uses
  ExceptionLog,
  Forms,
  fib_U in 'fib_U.pas' {Fibo};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFibo, Fibo);
  Application.Run;
end.
