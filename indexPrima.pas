program project;
var
	num,i,j:longint;
	prima:longint=0;
	save:longint=0;
begin
	write('Index prima ke : ');
	readln(num);
	j:=0;
	repeat
		j:=j+1;
		i:=0;
		repeat
			i:=i+1;
			if (j mod i = 0) and (j <> 1) then
			begin
				prima:=prima+1;
			end;
		until (j=i);	
		if prima = 2 then
		begin
			save:=save+1;
		end;
		prima:=0;
	until (save=num);
	writeln('Found : ',j);
	readln;
end.