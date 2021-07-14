{O programa a seguir apresenta uma resolucao em pascal para o seguinte exercicio

exercício 11.3 Defina uma variável do tipo registro que tenha dois campos. O 
primeiro campo contém uma string. O segundo campo é também do tipo registro, 
formado por três campos, todos inteiros. Faça um programa que:
a) preencha cada um dos campos dessa variável por leitura;
b) imprima os valores contidos em todos os campos;
c) preencha novamente o segundo campo por leitura;
d) imprima os valores finais em cada campo.}

program ex036;
uses CRT;
type
    numeros = record
        num1 : integer;
        num2 : integer;
        num3 : integer;
    end;
    reg = record
        frase : string;
        num : numeros;
    end;
var registro : reg;
procedure leitura_num();
begin
    with registro, num
    do begin
        write('Escreva tres valores inteiros: ');
        readln(num1, num2, num3);
    end;
end;
procedure leitura();
begin
    with registro
    do begin
        write('Escreva uma frase: ');
        readln(frase);
        leitura_num();
    end;
end;
procedure imprime();
begin
    with registro
    do begin
        writeln('Frase digitada: ', frase);
        with registro.num
        do begin
            writeln('Valores digitados ', num1, ', ',  num2, ', ', num3);
        end;

    end;
end;
begin
    clrscr;
    leitura();
    imprime();
    leitura_num();
    imprime();
    readln;
end.
