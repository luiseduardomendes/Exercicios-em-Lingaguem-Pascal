{O programa a seguir apresenta uma resolucao em pascal para o seguinte exercicio

exercício 10.4) Escreva uma função que recebe uma string de até 80 caracteres e
um determinado caractere, e devolve a localização da última ocorrência desse ca-
ractere na string. Se o caractere não aparecer na string, a função deve devolver
um valor negativo}

program ex033;
uses CRT;
const
    max = 80;
    min = 1;
type
    cadeia = string[max];
function Busca (vet : cadeia; carac : char) : integer;
var
    i : integer;
begin
    Busca := (-1);
    for i := min to max do
    begin
        if vet[i] = carac then
            Busca := i;
        end;

    end;
var
    vet : cadeia;
    carac : char;
begin
    clrscr;
    write('escreva um a frase: ');
    readln(vet);
    write('escreva um caractere que deseja buscar na frase: ');
    readln(carac);
    writeln('A ultima vez que o caractere ', carac, ' aparece eh na posicao ',
        Busca(vet, carac));
    readln;
end.
       