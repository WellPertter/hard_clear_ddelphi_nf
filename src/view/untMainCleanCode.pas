unit untMainCleanCode;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  untMainControlCleanCode;


{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
begin
  TControlNotaFiscal.New.EnviarNotaSefaz;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  TControlNotaFiscal.New.EnviarNotaSefazSemEmail;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 TControlNotaFiscal.New.GerarNotaPedido(1);
end;

end.
