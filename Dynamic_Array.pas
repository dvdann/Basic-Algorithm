program exp2;
uses crt;
var
	a:array of integer;
	i:integer;
	n:integer;
begin
	readln(n);
	setlength(a,n);
	for i:=low(a) to high(a) do
		read(a[i]);
	for i:=low(a) to high(a) do
		writeln(a[i]);
	readkey;
end.