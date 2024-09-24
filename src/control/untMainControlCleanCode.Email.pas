unit untMainControlCleanCode.Email;

interface

uses
  untMainControlInterfacesCleanCode;

type
  TControllerNotaFiscalEmail = class(TInterfacedObject, iCommand)
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

constructor TControllerNotaFiscalEmail.Create(Parent: iNotaFiscal);
begin
  FParent := Parent;
end;

destructor TControllerNotaFiscalEmail.Destroy;
begin

  inherited;
end;

function TControllerNotaFiscalEmail.Executer: iCommand;
begin
  Result := self;
  FParent.Email;
end;

class function TControllerNotaFiscalEmail.New(Parent: iNotaFiscal): iCommand;
begin
 Result := self.Create(Parent);
end;

end.
