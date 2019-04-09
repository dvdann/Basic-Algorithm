program fungsix;
var
	x,hasilx:integer;
function f(x:integer):integer;
begin
	f:=2*x+4;
	hasilx:=f;
end;
begin
	writeln('Masukkan nilai x di f(x)=2x+4! ');
	readln(x);
	f(x);
	writeln('Hasilnya adalah ',hasilx);
	readln;
end.