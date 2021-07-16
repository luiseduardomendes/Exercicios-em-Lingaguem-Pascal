{o programa a seguir apresenta uma resolucao em pascal para o seguinte exercicio

exercício 12.4) Escreva um algoritmo que permita construir um conjunto de valo-
res inteiros, inserindo nesse conjunto 10 valores lidos do teclado. Em seguida,
realizar as seguintes tarefas:

a) dado um valor lido do teclado, informar se esse valor pertence ou não ao con-
junto;
b) informar todos os valores contidos no conjunto.}

program ex040;
type
    inteiros = set of 1..255;
var
    i, num : integer;
    numeros, valores_validos : inteiros;

begin
    numeros := [];
    valores_validos := [1..255];
    i := 1;
    writeln('Digite dez valores para inserir em um conjunto: ');
    while i <= 10 do
    begin
        readln(num);
        if num in valores_validos = false then
        begin
            writeln('Numero inserido invalido');
        end
        else
        begin
            numeros += [num];
            i += 1;
        end;
    end;
    writeln;
    writeln('Digite um valor para testar se pertence ao conjunto digitado: ');
    readln(num);
    if num in numeros then
        writeln('O numero ', num, ' pertence ao conjunto digitado')
    else
        writeln('O numero ', num, ' nao pertence ao conjunto digitado');
    writeln;
    writeln('Numeros do conjunto: ');
    for i := 1 to 255 do
        if i in numeros then
            write(i, ' ');
    readln;
end.
