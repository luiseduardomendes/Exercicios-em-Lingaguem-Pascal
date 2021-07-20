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
