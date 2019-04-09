program Experiment;
uses crt;
var
	a,p:array[1..999] of integer;
	i,n,pmin,sump:integer;
begin
	writeln('Ada berapa anak?');
	readln(n);
	pmin:=n;
	p[1]:=0;
	sump:=0;
	for i:=1 to n do
	begin
		write('Prioritas anak ke-',i,': ');
		readln(a[i]);
		p[i]:=p[i]+1;
		if (a[i]>a[i-1]) and (i-1<>0) and (i<>1) then
		begin
			p[i]:=p[i]+(a[i]-a[i-1]);
		end;
		sump:=sump+p[i];
	end;
	writeln('Jumlah minimum permen: ',pmin);
	writeln('Jumlah permen yang diberikan: ',sump);
	readkey;
end.