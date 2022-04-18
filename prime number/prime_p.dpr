program prime_p;

uses
  ExceptionLog,
  Forms,
  prime_u in 'prime_u.pas' {FRM_prime};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFRM_prime, FRM_prime);
  Application.Run;
end.
