unit untMainControlCleanCode.Criar;

interface

uses
  untMainControlInterfacesCleanCode;

type
  TControllerNotaFiscalCriar = class(TInterfacedObject, iCommand)
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

constructor TControllerNotaFiscalCriar.Create(Parent: iNotaFiscal);
begin
  FParent := Parent;
end;

destructor TControllerNotaFiscalCriar.Destroy;
begin

  inherited;
end;

function TControllerNotaFiscalCriar.Executer: iCommand;
begin
  Result := self;
  FParent.Criar;
end;

class function TControllerNotaFiscalCriar.New(Parent: iNotaFiscal): iCommand;
begin
 Result := self.Create(Parent);
end;

end.
