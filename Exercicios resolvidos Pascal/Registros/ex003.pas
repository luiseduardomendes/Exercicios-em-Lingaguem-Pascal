{O programa a seguir apresenta uma resolucao em pascal para o seguinte exercicio

exercício 11.5 Defina o tipo registro ponto com dois campos x e y (reais). Os
campos representam as coordenadas desse ponto no sistema cartesiano. Escreva uma
função que, dados dois pontos, calcule a distância entre eles. As coordenadas
dos pontos devem ser lidas no programa principal e passadas à função por meio de
parâmetros do tipo ponto. O resultado da função deve ser informado pelo programa
principal.}

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
