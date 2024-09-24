unit untMainControlInvokerCleanCode;

interface

uses
  untMainControlInterfacesCleanCode, System.Generics.Collections;

type
  TControllerInvoker = class(TInterfacedObject, iInvoker)
  private
    FParent: iNotaFiscal;
    FList: TList<iCommand>;
  public
    Constructor Create;
    destructor Destroy; override;
    class function New:  iInvoker;

    function Add(Value: iCommand): iInvoker;
    function Execute : iInvoker;
  end;

implementation

uses
  System.SysUtils;

{ TControllerNotaFiscalCriar }

function TControllerInvoker.Add(Value: iCommand): iInvoker;
begin
  Result := self;
  FList.Add(Value);
end;

constructor TControllerInvoker.Create;
begin
  FList := TList<iCommand>.Create;
end;

destructor TControllerInvoker.Destroy;
begin
  FreeAndNil(FList);
  inherited;
end;

function TControllerInvoker.Execute: iInvoker;
var
  I: Integer;
begin
  Result := self;
  for I := 0 to Pred(FList.Count) do
    FList[I].Executer;
end;

class function TControllerInvoker.New: iInvoker;
begin
  Result := self.Create;
end;

end.
