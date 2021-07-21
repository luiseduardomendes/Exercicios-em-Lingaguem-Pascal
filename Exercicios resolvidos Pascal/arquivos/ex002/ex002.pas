program ex044;

var
    lido : string;
	arquivo : text;
procedure abrir_arquivo;
begin
  	assign(arquivo, 'texto_ex044.txt');
    rewrite(arquivo);
end;

begin
  	abrir_arquivo;
    writeln('Digite uma frase: ');
    readln(lido);
	while lido <> '0' do
	begin
    	writeln(arquivo, lido);
		writeln('Digite outra frase ou 0 para parar: ');
        readln(lido);
	end;

end.
