Program baca1000;
var
	i,n,sum:integer;
begin
	sum:=0;
	for i:=1 to 5 do
	begin
		readln(n);
		sum:=sum+n;
	end;
	writeln('Totalnya: ',sum);
	writeln('Selesai.');
	readln;
end.