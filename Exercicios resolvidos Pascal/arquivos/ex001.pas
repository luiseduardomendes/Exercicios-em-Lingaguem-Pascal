program ex043;
var
    arquivo : text;
    lido : string;
procedure abrir_arquivo;
begin
    assign(arquivo, 'texto_ex043.txt');
    {$I-}
    reset(arquivo);
    {$I+}
    if ioresult <> 0 then
        rewrite(arquivo);
end;

begin
    abrir_arquivo;
    writeln('Digite um texto: ');
    readln(lido);
    while lido != '0' do
    begin
         seek(arquivo, filesize(arquivo));
         write(arquivo, lido);
         writeln('Digite outro texto [0 para parar]: ');
         readln(lido);
    end;




end.



