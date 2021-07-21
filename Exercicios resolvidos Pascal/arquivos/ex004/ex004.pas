program ex046;

function testa_senha(var arquivo : text) : boolean;
var
    caract : char;
    resposta : boolean;
begin
    resposta := false;
    reset(arquivo);
    while not eof(arquivo) do
    begin
        resposta := false;
        read(arquivo, caract);
        caract := upcase(caract);
        if caract = 'S' then
        begin
        read(arquivo, caract);
            caract := upcase(caract);
            if caract = 'E' then
            begin
                read(arquivo, caract);
                caract := upcase(caract);
                if caract = 'N' then
                begin
                    read(arquivo, caract);
                    caract := upcase(caract);
                    if caract = 'H' then
                    begin
                        read(arquivo, caract);
                        caract := upcase(caract);
                        if caract = 'A' then
                            resposta := true;
                    end;
                end;
            end;
        end;
    end;
    testa_senha := resposta;
end;

var
    arquivo : text;

begin
    assign(arquivo, 'E:\lazarus\projects\texto_ex046.txt');

    reset(arquivo);
    if testa_senha(arquivo) then
        writeln('A palavra "senha" se encontra na frase')
    else
        writeln('A palavra "senha" nao se encontra na frase');
    readln;


end.
