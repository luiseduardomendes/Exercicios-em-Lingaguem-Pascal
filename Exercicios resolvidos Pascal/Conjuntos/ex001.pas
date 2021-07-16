{

exercício 12.1) Defina três conjuntos de inteiros c1, c2 e c3. Teste a sua mani-
pulação por meio das seguintes operações:

a) leia uma série de valores inteiros a partir do teclado e os insira no conjun-
to c1. Forneça alguns valores repetidos para testar como serão armazenados no
conjunto;
b) imprima os valores contidos em c1. Verifique se os valores repetidos realmen-
te aparecem somente uma vez no conjunto;
c) insira no conjunto c2 os valores contidos em c1 que sejam superiores a um va-
lor limite lido;
d) imprima os valores contidos em c2;
e) retire alguns valores de c2 e insira novos valores para que os dois conjuntos
tenham valores diferentes;
f) imprima os conteúdos de c1 e c2 para verificar como ficaram;
g) teste todas as operações de união, intersecção e diferença entre os dois con-
juntos, colocando sempre o resultado no conjunto c3. Imprima, a cada operação
realizada, o conteúdo de c3 para verificar se a operação foi realizada com su-
cesso;
h) teste as operações de comparação entre conjuntos, comparando os conjuntos c1
e c2, e imprima a cada vez o resultado obtido (verdadeiro ou falso);
i) leia um valor inteiro e verifique, por meio da operação de pertinência, se
esse valor pertence ou não aos conjuntos c1, c2 e c3. Imprima a resposta de ca-
da verificação (verdadeiro ou falso).}
                                            
program ex038;
uses CRT;
type
    conjunto = set of 1..255;
var
    c1, c2, c3 : conjunto;
procedure inserir(num : integer; var c : conjunto);
begin
    c += [num];
end;
procedure imprimir(c : conjunto);
var
    i : integer;
begin
    writeln('Elementos no conjunto: ');
    for i := 1 to 255 do
        if i in c then
            write(i, ' ');
    readln;
end;
procedure remover(num : integer; var c : conjunto);
begin
    c -= [num];
end;
procedure uniao();
begin
    c3 := c1 + c2;
end;
procedure interseccao();
begin
    c3 := c1 * c2;
end;
procedure diferenca();
begin
    c3 := c1 - c2;
end;
procedure igualdade();
begin
    if c1 = c2 then
        writeln('C1 e C2 sao iguais')
    else
        writeln('C1 e C2 sao diferentes');
    readln;
end;
procedure desigualdade();
begin
    if c1 <> c2 then
        writeln('C1 e C2 sao diferentes')
    else
        writeln('C1 e C2 sao iguais');
    readln;
end;
procedure contido();
begin
    if c1 <= c2 then
        writeln('C1 esta contido em C2')
    else
        writeln('C1 nao esta contido em C2');
    readln;
end;
procedure contem();
begin
    if c1 >= c2 then
        writeln('C1 contem C2')
    else
        writeln('C1 nao contem C2');
    readln;
end;
procedure pertinencia(num : integer; c : conjunto);
begin
    if num in c then
        writeln('O numero ', num, ' pertence ao conjunto')
    else
        writeln('O numero ', num, ' nao pertence ao conjunto');
    readln;
end;

procedure menu_pertinencia();
var
    num, conj : integer;
begin
    writeln('Digite o numero que quer testar a pertinencia');
    readln(num);
    writeln('Digite o conjunto no qual quer testar');
    readln(conj);
    case conj of
        1 : pertinencia(num, c1);
        2 : pertinencia(num, c2);
        3 : pertinencia(num, c3);
    end;
end;
procedure menu_operacoes();
var
    resp : integer;
begin
    repeat
        writeln('Qual operacao deseja realizar? ');
        writeln('[1] Uniao');
        writeln('[2] interseccao');
        writeln('[3] Diferenca');
        write('Sua opcao: ');
        readln(resp);
        if (resp > 3) or (resp < 1) then
        begin
            writeln('Insira um valor valido [enter para continuar]');
            readln;
        end;
        if (resp <= 3) and (resp >= 1) then
        begin
            case resp of
                1 : begin
                    uniao();
                    imprimir(c3);
                    readln;
                end;
                2 : begin
                    interseccao();
                    imprimir(c3);
                    readln;
                end;
                3 : begin
                    diferenca();
                    imprimir(c3);
                    readln;
                end;
            end;
        end;
    until (resp <= 3) and (resp >= 1);
end;
procedure menu_comparacoes();
var
    resp : integer;
begin
    repeat
        writeln('Qual operacao deseja realizar? ');
        writeln('[1] Igualdade');
        writeln('[2] Desigualdade');
        writeln('[3] C1 esta contido em C2');
        writeln('[4] C1 contem C2');
        write('Sua opcao: ');
        readln(resp);
        if (resp > 3) or (resp < 1) then
        begin
            writeln('Insira um valor valido [enter para continuar]');
            readln;
        end
        else
        begin
            case resp of
            1 : igualdade();
            2 : desigualdade();
            3 : contido();
            4 : contem();
            end;
        end

    until (resp <= 3) and (resp >= 1);
end;
procedure menu_inserir();
var
    conj, num : integer;
begin
    write('Digite o conjunto [1 ou 2]: ');
    readln(conj);
    repeat
        write('Digite o numero que deseja inserir [0 para parar]: ');
        readln(num);
        if num <> 0 then
        begin
            case conj of
                1 : inserir(num, c1);
                2 : inserir(num, c2);
            end;
        end;
    until num = 0;
end;
procedure menu_imprimir();
var
    conj : integer;
begin
    writeln('Digite o conjunto que deseja imprimir: ');
    readln(conj);
    case conj of
        1 : imprimir(c1);
        2 : imprimir(c2);
    end;
end;
procedure menu_valormin();
var
    num, i: integer;
begin
    writeln('Digite o numero para o valor minimo');
    readln(num);
    for i := num to 255 do
        if i in c1 then
            inserir (i, c2);
end;
procedure menu_remover();
var
    conj, num : integer;
begin
    writeln('Digite o conjunto do qual voce deseja remover');
    readln(conj);
    repeat
        writeln('Digite o elemento que voce deseja remover [0 para parar]');
        readln(num);
        if num <> 0 then
            case conj of
                1 : remover(num, c1);
                2 : remover(num, c2);
            end;
    until num = 0;
end;

function menu_principal() : boolean;
var
    resp : integer;
begin
    menu_principal := true;
    repeat
        clrscr;
        writeln('O que voce deseja fazer? ');
        writeln('[1] inserir elementos a um conjunto');
        writeln('[2] Imprimir os valores de um conjunto');
        writeln('[3] Inserir um valor minimo e preencher o conjunto c2');
        writeln('[4] Remover elementos de um conjunto');
        writeln('[5] Realizar uma operacao entre os dois conjuntos');
        writeln('[6] Realizar uma comparacao entre os dois conjuntos');
        writeln('[7] Verificar se um valor pertence a um dos conjuntos');
        writeln('[0] Encerrar o programa');
        write('Sua opcao: ');
        readln(resp);
        if (resp > 7) or (resp < 0) then
        begin
            writeln('Insira um valor valido [enter para continuar]');
            readln;
            end;
    until (resp <= 7) and (resp >= 0);
    case resp of
        1 : menu_inserir();
        2 : menu_imprimir();
        3 : menu_valormin();
        4 : menu_remover();
        5 : menu_operacoes();
        6 : menu_comparacoes();
        7 : menu_pertinencia();
        0 : menu_principal := false;
    end;
end;
begin
    c1 := [];
    c2 := [];
    repeat
        menu_principal();
    until menu_principal = false;
    readln;
end.
