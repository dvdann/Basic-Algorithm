program coba3;
var
	n,m,l,o,p,q:integer;
	s:string;
begin
	s:=' ';
	n:=7;
	m:=12;
	l:=n mod m;
	o:=n div m;
	p:=m mod n;
	q:=m div n;
	writeln(l,s,o,s,p,s,q);
	readln;
end.