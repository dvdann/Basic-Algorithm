program determinan;
uses crt;
var
	a,b,c,x1,x2:real;

procedure nilai(var a,b,c:real);
begin
	write('Nilai a: ');
	readln(a);
	write('Nilai b: ');
	readln(b);
	write('Nilai c: ');
	readln(c);
end;
	
function determx1(a,b,c:real):real;
begin
	determx1:=(-b+(sqrt(sqr(b) - 4*a*c)))/(2*a);
	x1:=determx1;
end;

function determx2(a,b,c:real):real;
begin
	determx2:=(-b-(sqrt(sqr(b) - 4*a*c)))/(2*a);
	x2:=determx2;
end;

procedure hasil(x1,x2:real);
begin
	writeln(x1:0:2,' ',x2:0:2);
	readln;
end;

Begin
	nilai(a,b,c);
	determx1(a,b,c);
	determx2(a,b,c);
	hasil(x1,x2);
End.