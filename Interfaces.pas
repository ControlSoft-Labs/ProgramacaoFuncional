unit Interfaces;

interface

type
  { TEvResultado pode ser qualquer procedure que tenha uma string como param�tro! }
  TEvResultado = procedure(Value: String) of Object;

  { Interface para soma }
  iSoma = interface
    ['{300F4085-B551-41BE-B94D-F9E3C31DAA80}']
    function add(Value: String): iSoma;
    function Resultado(Value: TEvResultado): iSoma;
    function Executar: iSoma;

    { A Programa��o funcional necess�riamente trabalha com functions para que assim quando uma fun��o precisa     }
    { retornar um resultado, ela retornar� conforme a necessidade, mas quando n�o houve, o retorno ser� ela mesma }
    // function Exec: String;
    // function Exec: iSoma;
  end;

implementation

end.
