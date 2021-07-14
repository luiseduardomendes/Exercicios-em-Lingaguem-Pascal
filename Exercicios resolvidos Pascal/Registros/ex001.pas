{O programa a seguir apresenta uma resolucao em pascal para o seguinte exercicio

exercício 11.1 Defina uma variável do tipo registro com quatro campos: um intei-
ro, um real, um do tipo caractere e, o último, lógico. Faça um programa que:

a) preencha cada um dos campos dessa variável (por leitura ou por meio de dados
colocados pelo programa);
b) altere por programa os valores contidos em cada um dos campos;
c) imprima os valores finais em cada campo.}


program ex035;
uses CRT;
type
    reg = record
          inteiro : integer;
          num_real : real;
          caracter : char;
          logico : boolean;
      end;
var
    registro : reg;
procedure leitura_valores (var registro : reg);
var
    logico_str : string[15];
begin
    with registro
    do begin
        writeln('Escreva um numero inteiro: ');
        readln(inteiro);
        writeln('Escreva um numero real: ');
        readln(num_real);
        writeln('Escreva um caracter: ');
        readln(caracter);
        repeat
            writeln('Insira um valor logico [verdadeiro ou falso]: ');
            readln(logico_str);
            logico_str := upcase(logico_str);
            case logico_str of
                'VERDADEIRO' : logico := true;
                'FALSO'      : logico := false;
                else
                    writeln('Valor digitado invalido');
        end;
        until (logico_str = 'VERDADEIRO') or (logico_str = 'FALSO');
    end;
end;
procedure alteracao_valores (var registro : reg);
begin
    with registro
    do begin
        inteiro += 10;
        num_real /= 2;
        caracter := 'A';
        if logico = true then
            logico := false
        else
            logico := true
    end;
end;
procedure imprimir_valores (registro : reg);
begin
    with registro
    do begin
        writeln('Numero inteiro:...', inteiro);
        writeln('Numero real:......', num_real:0:2);
        writeln('Caracter:.........', caracter);
        writeln('Valor logico:.....', logico);
    end;
end;

begin
    clrscr;
    writeln('Programa iniciado');
    leitura_valores(registro);
    alteracao_valores(registro);
    imprimir_valores(registro);
    readln;
end.
