program project;
var
	num:real;
	i,j:longint;
	sum,prima:real;
begin
	readln(num);
	sum:=0;
	j:=0;
	prima:=0;
	repeat
		j:=j+1;
	//	writeln('Ulang ke ',j,' di while');
		i:=0;
		repeat
			i:=i+1;
			if (j mod i = 0) and (j <> 1) then
			begin
				prima:=prima+1;
			end;
		until (j=i);	
		if prima = 2 then
				sum:=sum+j;
		prima:=0;
	until (j=num);
	writeln('Nilai akhir ',sum:0:0);
	readln;
end.