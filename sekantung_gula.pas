program sekantung_gula;
uses
	crt;
var
	SG, sisa, anak: integer;
begin
	anak:=4;
	write('Masukkan banyaknya permen-gula: ');
	readln(SG);
	sisa:=SG mod anak;
	SG:=SG div anak;
	if SG > 0 then
		begin
			writeln('Setelah dibagikan ke 4 anak, maka masing-masing mendapat ',SG,' gula.');
			writeln('Sisa gula: ',sisa);
		end
		else
			writeln('Gula tidak bisa dibagikan.');		
	readln;
end.