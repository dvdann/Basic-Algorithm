Program kurs2;
var
	Rupiah:real;
Const
	kursD:real=13203;
	kursY:real=128;
	kursDM:real=100;
	kursFF:real=1500;
begin
	write('Masukkan Rp. ');
	readln(rupiah);
	writeln((rupiah / kursD):2:2,' dolar');
	writeln((rupiah / kursY):2:2,' yen');
	writeln((rupiah / kursDM):2:2,' dm');
	writeln((rupiah / kursFF):2:2,' ff');
	readln;
end.