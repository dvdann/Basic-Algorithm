Program main;	
var
	n,r:integer;

function faktorial(a:integer):longint;
begin
	if a = 0 then
		faktorial:=1
	else
		faktorial:=a*faktorial(a-1);
end;

function kombinasi(a:integer;b:integer):longint;
begin
	kombinasi:=faktorial(a) div (faktorial(b) * faktorial(a-b));
end;

function permutasi(a:integer;b:integer):longint;
begin
	permutasi:=faktorial(a) div faktorial(a-b);
end;

BEGIN
	readln(n,r);
	writeln(permutasi(n,r));
	writeln(kombinasi(n,r));	
	readln;
END.