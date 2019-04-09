Program menghitungOhm;
var
	r1,r2,r3,seri,paralel:real;
begin
	writeln('Masukkan r1, r2, & r3: ');
	readln(r1,r2,r3);
	seri:=(r1+r2+r3);
	paralel:=(1/r1)+(1/r2)+(1/r3);
	writeln(seri:1:1,' ohm'); //Nilai hambatan seri
	writeln(paralel:1:2,' ohm'); //Nilai hambatan paralel
	readln;
end.