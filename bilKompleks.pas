program bil_kompleks;
type
	bil_k=record
		a,b:real;
end;
var
	b:bil_k;
const
	i=sqrt(-1);
begin	
	write('Masukkan nilai A: ');readln(b.a);
	write('Masukkan nilai B: ');readln(b.b);
	writeln('Hasilnya ',b.a+b.b*i:1:2);
	readln;
end.
