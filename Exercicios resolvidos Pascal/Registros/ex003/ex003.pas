program ex037;
uses CRT;

type
    par_ordenado = record
        x : integer;
        y : integer;
    end;
function leitura_ponto() : par_ordenado;
begin
    writeln('Insira o valor da coordenada x');
    readln(leitura_ponto.x);
    writeln('Insira o valor da coordenada y');
    readln(leitura_ponto.y);
end;

function func_distancia(ponto1 : par_ordenado; ponto2 : par_ordenado) : real;
begin
    func_distancia := sqrt(sqr(ponto2.x - ponto1.x) + sqr(ponto2.y - ponto1.y));
end;
var
    ponto1, ponto2 : par_ordenado;
    dist : real;
begin
    clrscr;
    ponto1 := leitura_ponto();
    ponto2 := leitura_ponto();
    dist := func_distancia(ponto1, ponto2);
    writeln('A distancia entre os dois pontos eh ', dist:0:2);
    readln;
end.
