program HelloWorld;
uses crt;

type
  // Declaração do enum
  Cor = (Vermelho, Verde, Azul, Amarelo, Laranja);

// Declaração de variáveis 
var nome: string;
    idade: integer;
    sexo: char;
    peso: real;
    ativo: boolean;
    
    val1: integer;
    val2: integer;
    adicao: integer;
    subtracao: integer;
    multiplicacao: integer;
    dividir: integer;
    modulo: integer;

    mostraIdade: integer;

    dia: integer;

    a: integer;

    b: integer;

    c: integer;

    m: integer;
    n: integer;

    o: integer;
    p: integer;

    numbers: array[0..3] of Integer;
    matriz: array[0..2, 0..2] of Integer;
    i, j: Integer;

    ponteiro: ^integer;

    numero1, numero2, resultado: integer;

    MinhaCor: Cor;


// Constante 
CONST PI = 3.1415926;

// Declaração de função
function soma(x:integer; y:integer):integer;
begin
    soma := x+y;
end;

// Declaração de procedure
procedure somar(var x:integer; y:integer);
begin
    writeln('Soma ', x+y);
end;


begin
  // Comentário de uma linha

  (* Comentário
    de varias linhas
  *)

  nome:= 'Cleiton';
  idade:= 20;
  sexo:= 'm';
  peso:= 70.5;
  ativo:= true;

  a := 0;

  b := 0;

  c := 0;

  // ESCREVER NA TELA
  writeln('#### ESCREVER NA TELA ####');
  writeln('Olá Mundo');
  writeln();

  // VARIÁVEIS E TIPOS BÁSICOS
  writeln('### VARIÁVEIS E TIPOS BÁSICOS ###');
  writeln('Nome: ', nome);
  writeln('Idade: ', idade);
  writeln('Sexo: ', sexo);
  writeln('Peso: ', peso);
  writeln('Ativo: ', ativo);
  writeln();

  // CONSTANTE
  writeln('### CONSTANTE ###');
  writeln('PI: ', PI);
  writeln();

// OPERACOES
  writeln('#### OPERACOES ####');
  write('Informe o valor 1: ');
  readln(val1);
  
  write('Informe o valor 2: ');
  readln(val2);
  
  adicao := val1 + val2; // Pode usar: (+, -, *, /, mod)
  subtracao := val1 - val2;
  multiplicacao := val1 * val2;
  dividir := val1 div val2;
  modulo := val1 mod val2;
  writeln('Soma: ', adicao);
  writeln('Subtracao: ', subtracao);
  writeln('Multiplicacao: ', multiplicacao);
  writeln('Divisao: ', dividir);
  writeln('Modulo: ', modulo);
  writeln();

  // TERNARIO
  writeln('### TERNARIO ###');
  writeln('Não tem ternário');
  writeln();

  // IF ELSE IF ELSE
  writeln('#### IF ELSE IF ELSE ####');
  write('Informe a idade: ');
  readln(mostraIdade);
  if (mostraIdade<12) then
    writeln('CRIANCA')
  else if (mostraIdade >= 12) AND (mostraIdade < 18) then
    writeln('ADOLESCENTE')
  else 
    writeln('ADULTO');
  writeln();

  // CASE
  writeln('#### CASE ####');
  write('Informe um numero 1 - 7 para semana: ');
  readln(dia);
  case dia of
      1:writeln('Domingo');
      2:writeln('Segunda');
      3:writeln('Terça');
      4:writeln('Quarta');
      5:writeln('Quinta');
      6:writeln('Sexta');
      7:writeln('Sabado');
  else    
      writeln('invalido');
  end;
  writeln();

  // REPEAT
  writeln('#### REPEAT ####');
  repeat
    writeln(a);
    a := a + 1
  until a = 10;
  writeln();

 // DO WHILE
  writeln('#### DO WHILE ####');
  writeln('Não tem DO WHILE');
  writeln();

  // WHILE
  writeln('#### WHILE ####');
  while(b < 10) do
  begin
   writeln(b);
   b := b + 1;
  end;
  writeln();

  // FOR
  writeln('#### FOR ####');
  for c:= 0 to 10 do
  begin
      writeln(c);
  end;
  writeln();

  // ARRAY
  writeln('### ARRAY ###');
  numbers[0] := 10;
  numbers[1] := 20;
  numbers[2] := 30;
  numbers[3] := 40;

  for i := 0 to 3 do
  begin
    writeln(numbers[i]);
  end;

  writeln;


  // MATRIZ
  writeln('### MATRIZ ###');
  // Declaração de uma matriz 3x3 de inteiros

  // Inicialização da matriz
  for i := 0 to 2 do
  begin
    for j := 0 to 2 do
    begin
      matriz[i, j] := i * 3 + j + 1;
    end;
  end;

  // Acesso aos elementos da matriz
  writeln('Elementos da matriz:');
  for i := 0 to 2 do
  begin
    for j := 0 to 2 do
    begin
      write(matriz[i, j], ' ');
    end;
    writeln;
  end;
  writeln();


  // FUNCAO
  writeln('#### FUNCAO ####');
  write('Digite o valor 1: ');
  readln(m);
  
  write('Digite o valor 2: ');
  readln(n);
  
  writeln('Soma ',soma(m,n));
  writeln();


  // PROCEDURE
  writeln('#### PROCEDURE ####');
  write('Digite o valor 1: ');
  readln(o);

  write('Digite o valor 2: ');
  readln(p);

  somar(o,p);
  writeln();

  // PONTEIRO
  writeln('#### PONTEIRO ####');
  new(ponteiro);  // Aloca memória dinamicamente para um inteiro
  ponteiro^ := 42;  // Atribui um valor à variável apontada
  writeln('Valor da variável apontada: ', ponteiro^);
  dispose(ponteiro);  // Libera a memória alocada
  writeln();

  // TRY CATCH
 writeln('### TRY CATCH ###');
  (**
  writeln('Digite dois números inteiros para a divisão:');
  readln(numero1);
  readln(numero2);

  try
    resultado := numero1 / numero2;
    writeln('Resultado da divisão: ', resultado);
  except
    on E: Exception do
    begin
      writeln('Ocorreu uma exceção: ', E.Message);
    end;
  end;
  **)
  writeln();

// ENUM
 writeln('### ENUM ###');
 MinhaCor := Azul;
 
 case MinhaCor of
    Vermelho: writeln('Minha cor favorita é vermelho.');
    Verde: writeln('Minha cor favorita é verde.');
    Azul: writeln('Minha cor favorita é azul.');
    Amarelo: writeln('Minha cor favorita é amarelo.');
    Laranja: writeln('Minha cor favorita é laranja.');
  else
    writeln('Eu não tenho uma cor favorita.');
  end;

   readkey;
end.
