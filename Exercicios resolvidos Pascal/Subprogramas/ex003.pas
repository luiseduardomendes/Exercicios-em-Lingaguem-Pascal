{O programa a seguir apresenta uma resolucao em pascal para o seguinte exercicio
Dada a matriz 6 × 6 a seguir, escreva subprogramas para realizar as seguintes ta
refas:
a) calcular a média dos elementos da área assinalada em cinza (representado por
x);

    x x x x x x
    x o o o o x
    x o o o o x
    x x x x x x
    x o o o o x
    x o o o o x

b) determinar o maior elemento contido na matriz;
c) verificar se um determinado valor (passado como parâmetro) está contido na ma
triz;
d) fazer varredura da matriz e devolução dos elementos contidos em sua diagonal
principal, copiados para um vetor;}

program ex032;
uses CRT;
const
    max = 6;
    min = 1;
type
    ARR = array [min..max, min..max] of integer;
    ARR2 = array [min..max] of integer;
var
    mat : ARR;
    op, num : integer;
    diagonal : ARR2;
    invalido : boolean;
function MediaElemento (mat : ARR) : real;
var
    i, soma, cont : integer;
    media : real;
begin
    cont := 0;
    soma := 0;
    for i := min to max do
    begin
        soma += mat[1, i];
        soma += mat[4, i];
        cont += 2;
    end;
    for i := 2 to 3 do
    begin
        soma += mat[i, 1];
        soma += mat[i, 6];
        cont += 2;
    end;
    for i := 5 to 6 do
    begin
        soma += mat[i, 1];
        soma += mat[i, 6];
        cont += 2;
    end;
    media := soma / cont;
    MediaElemento := media;
end;
function MaiorElemento (mat : ARR) : integer;
var
    i, j, maior : integer;
begin
    maior := mat[min, min];
    for i := min to max do
    begin
        for j := min to max do
            if mat[i, j] > maior then
                maior := mat[i, j];
    end;
    MaiorElemento := maior;
end;
function VerificaExist (mat : ARR; num : integer) : boolean;
var
    i, j : integer;
    achou : boolean;
begin
    achou := false;
    for i := min to max do
    begin
        for j := min to max do
        begin
            if mat[i, j] = num then
                achou := true;
            end;
        end;
    VerificaExist := achou;
end;
procedure DiagonalPrinc (mat : ARR; var vet : ARR2);
var
    i : integer;
begin
    for i := min to max do
        vet[i] := mat[i, i];
end;
procedure Scan (var mat : ARR);
var
    i, j : integer;
begin
    for i := min to max do
    begin
        for j := min to max do
        begin
            writeln('Linha ', i, ' Coluna ', j);
            readln(mat[i, j]);
        end;
    end;
end;
procedure Print (mat : ARR);
var
    i, j : integer;
begin
    for i := min to max do
    begin
        for j := min to max do
            write(mat[i, j], ' ');
        writeln;
        end;
end;
procedure Menu;
begin
    writeln('O que deseja fazer com a matriz? ');
    writeln('[1] Media');
    writeln('[2] Maior elemento');
    writeln('[3] Verificar a existencia de um numero');
    writeln('[4] Diagonal principal');
    writeln('[0] Encerrar o programa ');
    write('Sua opcao: ');
end;
procedure PrintVet (vet : ARR2);
var
    i : integer;
begin
    for i := min to max do
        write(vet[i] ,' ');
    writeln;
end;
begin
    clrscr;
    writeln('Insira uma matriz: ', max, 'x', max);
    Scan(mat);
    writeln('Matriz digitada: ');
    Print(mat);
    repeat
        repeat
            invalido := false;
            Menu;
            readln(op);
            case op of
                1 : writeln('A media dos elementos em questao da matriz eh: ', MediaElemento(mat):0:2);
                2 : writeln('O maior elemento da matriz digitada eh: ', MaiorElemento(mat));
                3 : begin
                    write('Digite o numero que deseja procurar: ');
                    readln(num);
                    if VerificaExist(mat, num) = true
                    then begin
                        writeln('O numero ', num, ' se encontra na matriz');
                        end;
                    if VerificaExist(mat, num) = false
                    then begin
                        writeln('O numero ', num, ' nao se encontra na matriz');
                        end;
                    end;
                4 : begin
                    writeln('A diagonal principal da matriz eh: ');
                    DiagonalPrinc(mat, diagonal);
                    PrintVet(diagonal);
                end;
                0 : writeln('Programa encerrado');
                else
                    writeln('Digite um valor valido');
                    invalido := true;
                end;
        until invalido = false;
    until op = 0;
end.
