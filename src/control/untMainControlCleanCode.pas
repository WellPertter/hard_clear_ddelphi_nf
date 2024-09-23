unit untMainControlCleanCode;

interface

uses
  untMainControlInterfacesCleanCode;

type
  TControlNotaFiscal = class(TInterfacedObject, iNotaFiscal)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iNotaFiscal;
    function Criar: iNotaFiscal;
    function Validar: iNotaFiscal;
    function Enviar: iNotaFiscal;
    function Gravar: iNotaFiscal;
    function Email: iNotaFiscal;
    function EnviarNotaSefaz: iNotaFiscal;
  end;

implementation

{ TControlNotaFiscal }

constructor TControlNotaFiscal.Create;
begin
  //
end;

function TControlNotaFiscal.Criar: iNotaFiscal;
begin
  Result := Self;
end;

destructor TControlNotaFiscal.Destroy;
begin

  inherited;
end;

function TControlNotaFiscal.Email: iNotaFiscal;
begin
  Result := Self;
end;

function TControlNotaFiscal.Enviar: iNotaFiscal;
begin
  Result := Self;
end;

function TControlNotaFiscal.EnviarNotaSefaz: iNotaFiscal;
begin
  Result := Self;
end;

function TControlNotaFiscal.Gravar: iNotaFiscal;
begin
  Result := Self;
end;

class function TControlNotaFiscal.New: iNotaFiscal;
begin
  Result := Self.Create;
end;

function TControlNotaFiscal.Validar: iNotaFiscal;
begin
  Result := Self;
end;

end.
