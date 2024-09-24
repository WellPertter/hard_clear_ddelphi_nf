unit untMainControlCleanCode.EnviarNotaSefaz;

interface

uses
  untMainControlInterfacesCleanCode;

type
  TControllerNotaFiscalEnviarNotaSefaz = class(TInterfacedObject, iCommand)
  private
    FParent: iNotaFiscal;
  public
    Constructor Create(Parent: iNotaFiscal);
    destructor Destroy; override;
    class function New(Parent: iNotaFiscal): iCommand;
    function Executer: iCommand;
  end;

implementation

{ TControllerNotaFiscalCriar }

constructor TControllerNotaFiscalEnviarNotaSefaz.Create(Parent: iNotaFiscal);
begin
  FParent := Parent;
end;

destructor TControllerNotaFiscalEnviarNotaSefaz.Destroy;
begin

  inherited;
end;

function TControllerNotaFiscalEnviarNotaSefaz.Executer: iCommand;
begin
  Result := self;
  FParent.Enviar;
end;

class function TControllerNotaFiscalEnviarNotaSefaz.New(Parent: iNotaFiscal): iCommand;
begin
 Result := self.Create(Parent);
end;

end.
