Program tahun_kabisat;
var
	Tahun,hitung:integer;
begin
	readln(tahun);
	hitung:=tahun mod 4;
	If hitung = 0 then
		writeln('Tahun kabisat')
	else
		writeln('Bukan tahun kabisat');
	readln;
end.