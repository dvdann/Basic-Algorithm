program sum999;
uses
	crt;
var
	bil1,sum:integer;
begin
	sum:=0;
	repeat
		readln(bil1);
		sum:=bil1+sum;
		writeln('Jumlahnya ',sum);
	until sum = 999;
	readln;
end.