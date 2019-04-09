program bintang;
uses crt;
var
	i,j,n:integer;
begin
	readln(n);
	for i:=1 to n do
	begin
		for j:=1 to i do
			write('*');
		writeln;
	end;
	readkey;
end.