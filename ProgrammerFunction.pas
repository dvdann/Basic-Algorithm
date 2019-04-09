program aFunction;
var
	n:integer;
function a(n:integer):integer;
begin
	if (n = 0) then
		a:=0
	else
		a:=1-n*a(n-1);
end;
begin
	n:=5;
	write(a(n));
	readln;
end.