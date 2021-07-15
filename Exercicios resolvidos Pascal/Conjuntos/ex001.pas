program ex038;
uses CRT;
type
    conjunto = set of 1..255;
var
    c1, c2, c3 : conjunto;
    num : integer;
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
            writeln('Insira um valor valido [enter para continuar]');
            readln;
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
        end;
    until (resp <= 3) and (resp >= 1);
end;
procedure menu_inserir();
var
    conj, num : integer;
begin
    write('Digite o numero que deseja inserir: ');
    readln(num);
    write('Digite o conjunto [1 ou 2]: ');
    readln(conj);
    case conj of
        1 : inserir(num, c1);
        2 : inserir(num, c2);
    end;
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

procedure menu_principal();
var
    resp : integer;
begin
    repeat
        clrscr;
        writeln('O que voce deseja fazer? ');
        writeln('[1] inserir elementos a um conjunto');
        writeln('[2] Imprimir os valores de um conjunto');
        writeln('[3] Inserir um valor minimo para preencher o conjunto c2');
        writeln('[4] Remover elementos de um conjunto');
        writeln('[5] Realizar uma operacao entre os dois conjuntos');
        writeln('[6] Realizar uma comparacao entre os dois conjuntos');
        writeln('[7] Verificar se um valor pertence a um dos conjuntos');
        write('Sua opcao: ');
        readln(resp);
        if (resp > 7) or (resp < 1) then
        begin
            writeln('Insira um valor valido [enter para continuar]');
            readln;
            end;
    until (resp <= 7) and (resp >= 1);
    case resp of
        1 : menu_inserir();
        2 : menu_imprimir();
        3 : ;
        4 : ;
        5 : menu_operacoes();
        6 : menu_comparacoes();
        7 : ;
    end;
end;
begin
    menu_principal();
    menu_principal();
    readln;
end.