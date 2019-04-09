PROGRAM exp;
VAR
	prima,i,n:integer;
	countPrima:integer=0;
	j:integer=1;
BEGIN
	readln(n);
	repeat
		j+=1;
		prima:=0;
		for i:=1 to j do
			if (j mod i = 0) then
				prima+=1;
		if (prima=2) or (prima=1) then
		begin
			countPrima+=1;
			write(i,' ');
		end;
	until (countPrima = n);
	readln;
END.