program MecnariJumlahDiagonal;
uses crt;
var
	i,j,n:integer;
	kuadrat:integer;
	a:array[1..9999] of integer;
	dp,ds:real;
	sum:real;
begin
	readln(n);
	kuadrat:=n*n;
	for i:=1 to kuadrat do
		read(a[i]);
	dp:=a[1];
	ds:=a[n];
	j:=0;
	//DiagonalPrime
	repeat
		j:=j+n+1;
		dp:=dp+a[j+1];
	until ((j+1)>=kuadrat);
	//DiagonalSecond
	j:=n;
	repeat
		j:=j+n-1;
		ds:=ds+a[j];
	until (j=kuadrat-n+1);
	if dp >= ds then
		sum:=dp-ds
	else
		sum:=ds-dp;
	writeln(sum:1:0);
	readkey;
end.