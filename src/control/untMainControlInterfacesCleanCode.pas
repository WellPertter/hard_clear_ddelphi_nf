unit untMainControlInterfacesCleanCode;

interface

type

  iNotaFiscal = interface
    ['{691DB52A-77A4-4DB9-8924-5164F89BC1C3}']
    function Criar: iNotaFiscal;
    function Validar: iNotaFiscal;
    function Enviar: iNotaFiscal;
    function Gravar: iNotaFiscal;
    function Email: iNotaFiscal;
    function EnviarNotaSefaz: iNotaFiscal;
  end;

implementation

end.
