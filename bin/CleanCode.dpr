program CleanCode;

uses
  System.StartUpCopy,
  FMX.Forms,
  untMainCleanCode in '..\src\view\untMainCleanCode.pas' {Form1},
  untMainControlCleanCode in '..\src\control\untMainControlCleanCode.pas',
  untMainControlInterfacesCleanCode in '..\src\control\untMainControlInterfacesCleanCode.pas',
  untMainControlCleanCode.Criar in '..\src\control\untMainControlCleanCode.Criar.pas',
  untMainControlCleanCode.Validar in '..\src\control\untMainControlCleanCode.Validar.pas',
  untMainControlCleanCode.Enviar in '..\src\control\untMainControlCleanCode.Enviar.pas',
  untMainControlCleanCode.Gravar in '..\src\control\untMainControlCleanCode.Gravar.pas',
  untMainControlCleanCode.Email in '..\src\control\untMainControlCleanCode.Email.pas',
  untMainControlCleanCode.EnviarNotaSefaz in '..\src\control\untMainControlCleanCode.EnviarNotaSefaz.pas',
  untMainControlInvokerCleanCode in '..\src\control\untMainControlInvokerCleanCode.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
