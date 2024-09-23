program CleanCode;

uses
  System.StartUpCopy,
  FMX.Forms,
  untMainCleanCode in '..\src\view\untMainCleanCode.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
