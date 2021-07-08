{O programa a seguir apresenta uma resolucao em pascal para o seguinte exercicio

exercicio 10.5) Construa um programa que processe um número indeterminado de li-
nhas de texto com até 80 caracteres, fornecidas como entrada, até que o usuário
indique que deseja parar. Em cada linha haverá sempre, pelo menos, uma palavra.
Cada palavra estará separada da anterior por um espaço em branco, e o último ca-
ractere digitado em uma linha será sempre um espaço em branco. As palavras do
texto deverão ser apresentadas uma a uma, cada qual em uma linha.}
program ex034;
uses CRT;

const
    max = 80;
type
    cadeia = string[max];
    arr = array[1..500, 1..25] of char;
Procedure Matriz (var mat : arr; frase : cadeia; var i : integer);
var
    j, k, l, m : integer;
begin
    k := 1;
    insert(' ', frase, length(frase) + 1);
    for j := 1 to length(frase) do
    begin
        if ((frase[j] >= 'a') and (frase[j] <= 'z')) or
            ((frase[j] >= 'A') and (frase[j] <= 'Z')) then
        begin
            mat[i, k] := frase[j];
            k += 1;
            end;
        if frase[j] = ' ' then
        begin
            i := i + 1;
            k := 1;
            end;
        end;
end;
Procedure Scan (var mat : arr);
var
    frase : cadeia;
    i, l, m : integer;
begin
    for l := 1 to 500 do
    begin
        for m := 1 to 25 do
            mat[l, m] := ' ';
        end;
    i := 1;
    repeat
        writeln('Digite uma frase: [0 para encerrar]: ');
        readln(frase);
        if frase <> '0' then
            Matriz(mat, frase, i);
    until frase = '0';
end;
Procedure Print (mat : arr);
var
    i, j : integer;
begin
    writeln('As palavras digitadas foram: ');
    for i := 1 to 500 do
    begin
        for j := 1 to 25 do
        begin
            if ((mat[i, j] >= 'a') and (mat[i, j] <= 'z')) or
            ((mat[i, j] >= 'A') and (mat[i, j] <= 'Z')) then
            begin
                write(mat[i, j]);
                end;
            end;
        if (mat[i, j] = ' ') and (mat[i + 1, 1] <> ' ') then
            writeln;
        end;
    end;
var
    mat : arr;
begin
    clrscr;
    Scan(mat);
    Print(mat);
    readln;
end.
