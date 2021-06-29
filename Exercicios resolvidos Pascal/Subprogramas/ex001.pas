{ O programa a seguir apresenta uma solucao para o seguinte exercicio:

exercício 9.1 Construa um subprograma que, recebendo como parâmetros quatro números inteiros, devolva ao módulo que o chamou a soma dos três maiores números dentre os
quatro recebidos. Faça um programa que leia tantos conjuntos de quatro valores quantos o
usuário deseje e que acione o subprograma para cada conjunto de valores, apresentando a
cada vez a soma produzida.}

program ex030;
uses
    CRT;
Function MenorValor (a, b, c, d : integer) : char;
  var
      menor : integer; //define o menor valor
      i : integer; // contador
      menor_var : char;
  begin
      menor := a;
      menor_var := 'a';
      if b < menor then
      begin
          menor := b;
          menor_var := 'b';
      end;
      if c < menor then
      begin
          menor := c;
          menor_var := 'c';
      end;
      if d < menor then
      begin
          menor := d;
          menor_var := 'd';
      end;
      MenorValor := menor_var;
  end;
Function SomaNumeros (a, b, c, d : integer) : integer;
var //locais
    menor : char;
    soma  : integer;
begin
    menor := MenorValor(a, b, c, d);
    case menor of
    'a' : soma := b + c + d;
    'b' : soma := a + c + d;
    'c' : soma := a + b + d;
    'd' : soma := a + b + c;
    end;
    SomaNumeros := soma;
end;
var
    num1, num2, num3, num4 : integer;
begin
    clrscr;
    writeln('Digite 4 valores inteiros positivos: ');
    readln(num1, num2, num3, num4);
    writeln('A soma dos 3 maiores valores eh : ', SomaNumeros(num1, num2, num3,
        num4));
    readln;
end.