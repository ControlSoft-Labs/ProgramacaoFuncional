unit uPrincipal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    procedure ExibResultado(Value: String);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  uSoma;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  TSoma.New          { Cria uma nova instancia de TSoma }
    .add(Edit1.Text) { Adiciona o valor de edit 1 }
    .add(Edit2.Text) { Adiciona o valor de edit 2 }
    .Resultado(ExibResultado) { Adiciona a procedure 'Exibir resultado' como paramêtro para exibir o resultado no edit3}
    .Executar;  { Processa todos os dados adicionados anteriormente, mostra o resultado e ao termina limpa a classe TSoma da memória }
end;

procedure TForm1.ExibResultado(Value: String);
begin
  Edit3.Text := Value;
end;

end.
