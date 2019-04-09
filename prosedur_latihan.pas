program prosedur_latihan;
var
	a,b:integer;
procedure yes2(a:integer);
begin
	a:=a*2;
	writeln(a);
end;
procedure yes(b,a:integer);
var
	c:integer;
begin
	yes2(b);
	c:=b;
	b:=a;
	a:=c;
end;
begin
	a:=5;
	b:=10;
	yes(a,b);
	writeln(a,' ',b);
	readln;
end.
//var u/ input output