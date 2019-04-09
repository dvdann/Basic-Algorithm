program equal_s;
uses sysutils;
var
	a,b:ansistring;
begin
	readln(a);
	readln(b);	
	a:=lowercase(a);
	b:=lowercase(b);
	if a=b then
		writeln('Karakter yang diinputkan sama.')
	else
		writeln('Karakter yang diinputkan tidak sama.');
	readln;
end.