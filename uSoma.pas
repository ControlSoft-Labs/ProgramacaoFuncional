unit uSoma;

interface

uses
  Interfaces,
  System.Generics.Collections,
  System.SysUtils;

type
  { Classe que implementa a interface de iSoma }
  TSoma = class(TInterfacedObject, iSoma)
  private
    FLista: TList<Double>; { Lista genérica }
    FResultado: TEvResultado; { Variável que receberá a procedure que mostrará o resultado } 
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iSoma;

    function add(Value: String): iSoma;
    function Resultado(Value: TEvResultado): iSoma;
    function Executar: iSoma;
  end;

implementation

{ TSoma }

function TSoma.add(Value: String): iSoma;
var
  X: Double;
begin
  Result := Self;
  
  if not TryStrToFloat(Value, X) then
    raise Exception.Create('O Valor é inválido');

  FLista.add(X);
end;

constructor TSoma.Create;
begin
  FLista := TList<Double>.Create;
end;

destructor TSoma.Destroy;
begin
  FreeAndNil(FLista);
  inherited;
end;

function TSoma.Executar: iSoma;
var
  LResultado: Double;
  I         : Integer;
begin
  Result := Self;
  
  LResultado := 0;

  for I        := 0 to Pred(FLista.Count) do
    LResultado := LResultado + FLista.Items[I];

   FResultado(FloatToStr(LResultado));
end;

class function TSoma.New: iSoma;
begin
  Result := Self.Create;
end;

function TSoma.Resultado(Value: TEvResultado): iSoma;
begin
  Result := Self;

  FResultado := Value;  
end;

end.
