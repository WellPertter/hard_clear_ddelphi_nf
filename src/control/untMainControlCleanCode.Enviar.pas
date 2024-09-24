unit untMainControlCleanCode.Enviar;

interface

uses
  untMainControlInterfacesCleanCode;

type
  TControllerNotaFiscalEnviar = class(TInterfacedObject, iCommand)
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

constructor TControllerNotaFiscalEnviar.Create(Parent: iNotaFiscal);
begin
  FParent := Parent;
end;

destructor TControllerNotaFiscalEnviar.Destroy;
begin

  inherited;
end;

function TControllerNotaFiscalEnviar.Executer: iCommand;
begin
  Result := self;
  FParent.Enviar;
end;

class function TControllerNotaFiscalEnviar.New(Parent: iNotaFiscal): iCommand;
begin
 Result := self.Create(Parent);
end;

end.
