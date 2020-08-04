program Funcional;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  Interfaces in 'Interfaces.pas',
  uSoma in 'uSoma.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  ReportMemoryLeaksOnShutdown := True;

  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
