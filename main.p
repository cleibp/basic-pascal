program HelloWorld;
uses crt;

// Declaração de variáveis 
var nome: string;
    idade: integer;
    sexo: char;
    peso: real;
    ativo: boolean;
    
    val1: integer;
    val2: integer;
    calculo: integer;

    mostraIdade: integer;

    dia: integer;

    a: integer;

    b: integer;

    c: integer;

    m: integer;
    n: integer;

    o: integer;
    p: integer;


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

  // Escrever na tela
  writeln('Olá Mundo');
  writeln();

  // variáveis
  writeln(nome, idade , sexo , peso , ativo);
  writeln();
  
  writeln(PI); // constante
  writeln();


  writeln('####Capturando Variáveis####');
  writeln('Informe o valor 1');
  readln(val1);
  
  writeln('Informe o valor 2');
  readln(val2);
  
  calculo := val1+val2; // Pode usar: (+, -, *, /, mod)
  writeln(calculo);
  writeln();

  writeln('Não tem ternário');
  writeln();

  // IF ELSE IF ELSE
  writeln('####IF ELSE IF ELSE####');
  writeln('Informe a idade');
  readln(mostraIdade);
  if (mostraIdade<12) then
    writeln('CRIANCA')
  else if (mostraIdade >= 12) AND (mostraIdade < 18) then
    writeln('ADOLESCENTE')
  else 
    writeln('ADULTO');
  writeln();

  // CASE
  writeln('####CASE####');
  writeln('Informe um numero 1 - 7 para semana');
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
  writeln('####REPEAT####');
  repeat
    writeln(a);
    a := a + 1
  until a = 10;
  writeln();

  writeln('Não tem DO WHILE');
  writeln();

  // WHILE
  writeln('####WHILE####');
  while(b < 10) do
  begin
   writeln(b);
   b := b + 1;
  end;
  writeln();

  // FOR
  writeln('####FOR####');
  for c:= 0 to 10 do
  begin
      writeln(c);
  end;
  writeln();


  // FUNCAO
  writeln('####FUNCAO####');
  writeln('Digite o valor 1');
  readln(m);
  
  writeln('Digite o valor 2');
  readln(n);
  
  writeln('Soma ',soma(m,n));
  writeln();


  // PROCEDURE
  writeln('####PROCEDURE####');
  writeln('Digite o valor 1');
  readln(o);

  writeln('Digite o valor 2');
  readln(p);

  somar(o,p);
  readkey;
end.
