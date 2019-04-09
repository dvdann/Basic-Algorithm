program akar_pers_k;
uses crt;
var
	a,b,c,x1,x2:real;
begin
	readln(a);
	readln(b);
	readln(c);
	x1:=(-b+sqrt(sqr(b)-4*a*c))/2*a;
	x2:=(-b-sqrt(sqr(b)-4*a*c))/2*a;
	write('Nilai X1: ',x1:3:1,' atau Nilai X2: ',x2:3:1);
	readln;
end.