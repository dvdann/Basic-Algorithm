program arraydinamis;
uses crt;
var
	a:array of integer;
	c:integer;
	i:integer;
begin
	readln(c); //Diisi berapa?
	setlength(a,c); //array a diisi jangkauan [0..c-1];
	for i:=1 to c do
		readln(a[i-1]);
	for i:=1 to c do
		write(a[i-1],' ');
	readkey;
end.