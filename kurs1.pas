Program kurs1;
var
	Rupiah:real;
Const
	Kurs:real=13203;
begin
	write('Masukkan Rp. ');
	readln(rupiah);
	writeln('Sama dengan ',(rupiah / kurs):1:2,' dolar');
	readln;
end.