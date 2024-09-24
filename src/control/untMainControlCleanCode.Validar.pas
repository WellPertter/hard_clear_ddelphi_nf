unit untMainControlCleanCode.Validar;


interface

uses
  untMainControlInterfacesCleanCode;

type
  TControllerNotaFiscalValidar = class(TInterfacedObject, iCommand)
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

constructor TControllerNotaFiscalValidar.Create(Parent: iNotaFiscal);
begin
  FParent := Parent;
end;

destructor TControllerNotaFiscalValidar.Destroy;
begin

  inherited;
end;

function TControllerNotaFiscalValidar.Executer: iCommand;
begin
  Result := self;
  FParent.Validar;
end;

class function TControllerNotaFiscalValidar.New(Parent: iNotaFiscal): iCommand;
begin
 Result := self.Create(Parent);
end;

end.

