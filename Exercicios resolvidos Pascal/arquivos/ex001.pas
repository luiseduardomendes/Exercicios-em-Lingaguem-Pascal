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




end.


