program func_luasPersegi_Panjang;
var
	p,l:integer;
function hitungLuas(p,l:integer):integer;
begin
	hitungLuas:=p*l;	
end;


begin
	write('Masukkan nilai panjang: ');
	readln(p);
	write('Masukkan nilai lebar: ');
	readln(l);
	writeln('Nilai luasnya adalah ',hitungLuas(p,l));
	readln;
end.