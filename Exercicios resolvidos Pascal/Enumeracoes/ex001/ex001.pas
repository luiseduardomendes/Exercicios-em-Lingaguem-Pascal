{ O programa a seguir apresenta uma resolucao em pascal para o seguinte exercicio
Exericio 8.4:  Faça um programa que armazene diversos pedidos feitos a uma empresa que
produz doces. Ao definir um pedido, o cliente deve fornecer, para cada tipo de produto
desejado, o número de unidades e o sabor desejado. Um cliente pode solicitar mais de um tipo
de produto. Por exemplo, um pedido pode ser composto de 50 doces sabor chocolate, 50
sonhos sabor baunilha e 20 tortas sabor morango.

O programa deve executar os seguintes passos:

a) armazenar os dados relativos a diversos pedidos em uma matriz, onde cada linha corresponde
a um pedido, a primeira coluna corresponde ao número de doces, a segunda ao
número de sonhos e a terceira ao número de tortas do pedido - essas colunas devem ser
indexadas por meio dos nomes (doce, sonho, torta) e deve ser definida uma marca de
parada para sinalizar o término dos pedidos;
b) listar todos os pedidos realizados;
c) informar quantas unidades de cada um dos tipos (doces, sonhos e tortas) foram pedidas;
d) informar qual foi o maior número de unidades solicitado em um pedido, e de que produto}

program ex029;
uses CRT;
type
    alim = (doces, sonhos, tortas);
    sabor = (chocolate, baunilha, morango);
    maior_info = (maior_valor, pedido_maior);
var
    total : array[doces..tortas, chocolate..morango] of integer;
    mat : array[1..100, doces..tortas, chocolate..morango] of integer;
    maior : array[maior_valor..pedido_maior] of integer;
    i : integer = 0;
    j, produto_maior, j2 : alim;
    k, sabor_maior : sabor;
    resp, ped, prod, sab, i2 : integer;
begin
    clrscr;
    maior[maior_valor] := 0;
    repeat
        writeln('Deseja realizar um pedido? digite 1 para sim ou 0 para nao: ');
        readln(ped);
        if (ped <> 0) and (ped <> 1) then
            writeln('Digite um valor valido!');
    until (ped = 0) or (ped = 1);
    if ped = 1 then
    begin
    repeat
        i := i + 1;
        repeat
            repeat
                writeln('Produtos: ');
                writeln('[1] Doces');
                writeln('[2] Sonhos');
                writeln('[3] Tortas');
                writeln('Qual produto voce deseja? ');
                readln(prod);
                case prod of
                    1 : j := doces;
                    2 : j := sonhos;
                    3 : j := tortas;
                    else writeln('Digite um valor valido!');
                end;
            until (prod = 1) or (prod = 2) or (prod = 3);
            repeat
                writeln('Sabores: ');
                writeln('[1] Chocolate');
                writeln('[2] baunilha');
                writeln('[3] morango');
                writeln('Qual sabor voce deseja? ');
                readln(sab);
                case sab of
                    1 : k := chocolate;
                    2 : k := baunilha;
                    3 : k := morango;
                    else writeln('Digite um valor valido!');
                end;
            until (sab = 1) or (sab = 2) or (sab = 3);
            repeat
                writeln('Qual a quantidade desse produto que voce deseja? ');
                readln(mat[i, j, k]);
                if mat[i, j, k] <= 0 then
                    writeln('Digite um valor valido!');
                if mat[i, j, k] > maior[maior_valor] then
                begin
                    produto_maior := j;
                    sabor_maior := k;
                    maior[pedido_maior] := i;
                    maior[maior_valor] := mat[i, j, k];
                    end;
            until (mat[i, j, k] > 0);
            repeat
                writeln('Deseja escolher outro produto? digite 1 para sim ou 0 para nao: ');
                readln(ped);
                if (ped <> 0) and (ped <> 1) then
                    writeln('Digite um valor valido!');
            until (ped = 0) or (ped = 1);
        until(ped = 0);
        writeln('Pedido ', i, ':');
        for j := doces to tortas do
        begin
            for k := chocolate to morango do
                if mat[i, j, k] > 0 then
                    writeln(mat[i, j, k], ' ', j, ' de ', k);
            end;
        repeat
            writeln('Deseja realizar um pedido? digite 1 para sim ou 0 para nao: ');
            readln(resp);
            if (resp <> 0) and (resp <> 1) then
                writeln('Digite um valor valido!');
        until (resp = 0) or (resp = 1);
    until(resp = 0);
    end;
    writeln('Programa encerrado!');
    writeln('Pedidos realizados: ');
    for i2 := 1 to i do
    begin
        writeln('pedido ', i2);
        for j := doces to tortas do
        begin
            for k := chocolate to morango do
                if mat[i2, j, k] > 0 then
                    writeln(mat[i2, j, k], ' ', j, ' de ', k);
            end;
        end;
    for j2 := doces to tortas do
    begin
        for k := chocolate to morango do
                total[j2, k] := 0;
        end;
    for i2 := 1 to i do
    begin
        for j := doces to tortas do
        begin
            for k := chocolate to morango do
                total[j, k] := total[j, k] + mat[i2, j, k];
            end;
        end;
    writeln('Unidades vendidas de cada produto: ');
    for j2 := doces to tortas do
        for k := chocolate to morango do
            writeln(j2, ' de ', k, ' : ', total[j2, k]);
    writeln('O maior numero de unidades de um produto solicitada foi realizada no pedido ', maior[pedido_maior]);
    writeln('no qual foi solicitado ', maior[maior_valor], ' unidades de ', j, ' de ', k);
end.
