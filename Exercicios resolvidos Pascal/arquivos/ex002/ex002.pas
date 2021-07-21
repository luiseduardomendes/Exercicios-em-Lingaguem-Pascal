program ex044;
var
    arquivo, arquivo_novo : text;
    lido : string;
    caract : char;
procedure abrir_arquivo;
begin
    assign(arquivo, 'texto_ex044.txt');
    rewrite(arquivo);
end;

begin
    writeln('Digite um texto: ');
    readln(lido);
    abrir_arquivo;
    while lido <> '0' do
    begin
         writeln(arquivo, lido);
         writeln('Digite outro texto [0 para parar]: ');
         readln(lido);
    end;
    close(arquivo);
    assign(arquivo_novo, 'texto_ex044.2.txt');
    rewrite(arquivo_novo);
    reset(arquivo);
    while not eof(arquivo) do
    begin
        read(arquivo, caract);
        if caract = '#' then
            writeln(arquivo_novo, '')
        else
            write(arquivo_novo, caract);
    end;
    close(arquivo);
    erase(arquivo);
    close(arquivo_novo);
    rename(arquivo_novo, 'texto_ex044.txt');

    readln;
end.