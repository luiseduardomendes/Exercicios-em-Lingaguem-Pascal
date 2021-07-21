program ex043;
var
    arquivo : text;
    lido : string;
    contador : integer;
procedure abrir_arquivo;
begin
    assign(arquivo, 'texto_ex043.txt');
    rewrite(arquivo);
end;

begin
    contador := 1;
    writeln('Digite um texto: ');
    readln(lido);
    abrir_arquivo;
    while lido <> '0' do
    begin
         writeln(arquivo, lido);
         writeln('Digite outro texto [0 para parar]: ');
         readln(lido);
         contador += 1;
    end;
    close(arquivo);
    reset(arquivo);
    while not eof(arquivo) do
    begin
        readln(arquivo, lido);
        writeln(lido);
    end;
    close(arquivo);
    readln;
end.