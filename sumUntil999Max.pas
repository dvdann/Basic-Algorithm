program sum999urut;
uses
	crt;
var
	bil,sum,saveMax:integer;
begin
	sum:=0;
	saveMax:=0;
	repeat
		readln(bil);
		if bil > saveMax then
			saveMax:=bil;
		sum:=bil+sum;
		writeln('Jumlahnya ',sum);
	until sum = 999;
	writeln('Bilangan tertinggi yang user inputkan adalah ',saveMax);
	readln;
end.