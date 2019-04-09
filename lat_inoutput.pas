program input_output;
var
	x,y,hasil:integer;
begin
	write('Bilangan 1: ');
	readln(x);
	write('Bilangan 2: ');
	readln(y);
	hasil:=x+y;
	write('Hasil jumlah: ');
	writeln(hasil);
	hasil:=x*y;
	write('Hasil kali: ');
	writeln(hasil);
	readln;
end.