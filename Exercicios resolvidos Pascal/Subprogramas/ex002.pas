{O programa a seguir apresenta uma resolucao em pascal para o seguinte exercicio

exercício 9.3 Escreva um subprograma que receba um vetor de 15 elementos intei-
ros e que, com esses elementos, crie uma matriz 3 × 5. Construa um programa para
preencher o vetor por leitura, executar o subprograma e, no final, imprimir o
vetor e a matriz.}

program ex031;
uses CRT;
const
    min : integer = 1;
    maxv : integer = 15;
    maxm : integer = 5;
    maxl : integer = 3;
type
    arr = array[1..15] of integer;
    ar2 = array[1..3, 1..5] of integer;
procedure matriz(vet : arr; var mat : ar2);
var
    i, k, c : integer;
begin
    c := 0;
    for i := min to maxl do
    begin
        for k := min to maxm do
            mat[i, k] := vet[k + c];
        c += 5;
        end;
    end;
function scan(vet : arr) : arr;
var
    i : integer;
begin
    for i := min to maxv do
    begin
        writeln('elemento ', i, ': ');
        readln(vet[i]);
        end;
    scan := vet;
end;
procedure print(mat : ar2);
var
    i, k : integer;
begin
    for i := min to maxl do
    begin
        for k := min to maxm do
            write(mat[i, k], ' ');
        writeln;
        end;
    end;
procedure printvet(vet : arr);
var
    i : integer;
begin
    for i := min to maxv do
        write(vet[i], ' ');
end;
var
    vet : arr;
    mat : ar2;
begin
    clrscr;
    writeln('escreva 15 elementos de um vetor ');
    vet := scan(vet);
    writeln('A matriz digitada: ');

    matriz(vet, mat);
    writeln('Os 15 elementos do vetor transformados em uma matriz 3 x 5: ');
    print(mat);
    readln;
end.