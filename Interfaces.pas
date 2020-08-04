unit Interfaces;

interface

type
  { TEvResultado pode ser qualquer procedure que tenha uma string como paramêtro! }
  TEvResultado = procedure(Value: String) of Object;

  { Interface para soma }
  iSoma = interface
    ['{300F4085-B551-41BE-B94D-F9E3C31DAA80}']
    function add(Value: String): iSoma;
    function Resultado(Value: TEvResultado): iSoma;
    function Executar: iSoma;

    { A Programação funcional necessáriamente trabalha com functions para que assim quando uma função precisa     }
    { retornar um resultado, ela retornará conforme a necessidade, mas quando não houve, o retorno será ela mesma }
    // function Exec: String;
    // function Exec: iSoma;
  end;

implementation

end.
