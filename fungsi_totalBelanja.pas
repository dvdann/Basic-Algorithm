program fungsi_totalBelanja;
var
	hasil:longint;
	a:longint;
	b:longint;
	c:longint;
function totalBelanja(a,b,c:integer):longint;
begin
	totalBelanja:=a+b+c;
end;
begin
	write('Harga barang A: ');
	readln(a);
	write('Harga barang B: ');
	readln(b);
	write('Harga barang C: ');
	readln(c);	
	hasil:=totalBelanja(a,b,c);
	writeln('Total belanjaan Anda sebesar Rp. ',hasil);
	readln;
end.