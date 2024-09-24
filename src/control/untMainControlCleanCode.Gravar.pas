unit untMainControlCleanCode.Gravar;

interface

uses
  untMainControlInterfacesCleanCode;

type
  TControllerNotaFiscalGravar = class(TInterfacedObject, iCommand)
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

constructor TControllerNotaFiscalGravar.Create(Parent: iNotaFiscal);
begin
  FParent := Parent;
end;

destructor TControllerNotaFiscalGravar.Destroy;
begin

  inherited;
end;

function TControllerNotaFiscalGravar.Executer: iCommand;
begin
  Result := self;
  FParent.Gravar;
end;

class function TControllerNotaFiscalGravar.New(Parent: iNotaFiscal): iCommand;
begin
 Result := self.Create(Parent);
end;

end.
