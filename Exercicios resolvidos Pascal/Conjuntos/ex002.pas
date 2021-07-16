{o programa a seguir apresenta um resolucao em pascal para o seguinte exercicio:

exercício 12.2) Desenvolva um subprograma para identificar os números primos en-
tre 2 e um valor n, passado como parâmetro, onde 2 ≤ n ≤ 255. O subprograma de-
verá devolver ao programa que o executar um conjunto (parâmetro de saída) com os
números primos identificados no intervalo solicitado. Utilize na solução o Al-
goritmo de Eratóstenes, descrito a seguir:

a) coloque todos os inteiros entre 2 e n no conjunto números;
b) repita até que o conjunto números esteja vazio:
    b1) selecione e remova o menor elemento de números;
    b2) coloque esse valor no conjunto primos;
    b3) retire do conjunto números os múltiplos desse valor.
Construa também um programa que leia o valor de n, verifique se o valor lido es-
tá no intervalo definido e, se estiver, execute o procedimento e imprima o con-
teúdo do conjunto de números primos identificados}
program ex039;
uses CRT;
const
    max = 255;
type
    inteiro = set of 2..max;
var
    val_primos, numeros : inteiro;
    i, num: integer;

function testa_primo(num : integer) : inteiro;
var
    i, j : integer;
    primo : boolean;
    primos : inteiro;
begin
    primos := [];
    primo := true;
    for i := 2 to num do
    begin
        for j := 2 to (i - 1) do
            if (i mod j) = 0 then
                primo := false;
        if primo then
            primos += [i]
        else
            primo := true;
    end;
    testa_primo := primos;
end;

function testa_primo2(num : integer) : inteiro;
var
    numeros, primos : inteiro;
    i, j : integer;
begin
    numeros := [2..num];
    primos := numeros;
    for i := num downto 2 do
        for j := 2 to i - 1 do
            if (i mod j = 0) and (i <> j) then
                primos -= [i];
    testa_primo2 := primos;
end;

begin
    clrscr;
    numeros := [2..255];
    writeln('Calculadora de numeros primos');
    writeln('Insira um valor maximo entre 2 e 255');
    writeln('sera mostrado todos os primos ate esse valor');
    repeat
        readln(num);
        if num in numeros = false then
            writeln('Valor inserido invalido, insira outro');
    until num in numeros;
    val_primos := testa_primo2(num);
    writeln('Valores primos: ');
    for i := 1 to max do
        if i in val_primos then
            write(i, ' ');
    readln;
end.
