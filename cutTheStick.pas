PROGRAM cutTheStick;
VAR
	a:array[1..9999] of integer;
	i,n:integer;
	LoCut:integer;
	sticks_cut:integer=0;
	sumarray:longint=0;
	
BEGIN
	readln(n);
	LoCut:=n;
	for i:=1 to n do
		read(a[i]);
	repeat
		sumarray:=0;
		for i:=1 to n do
		begin
			if (a[i]<LoCut) and (a[i]>0) then
				LoCut:=a[i];
			if a[i]>0 then
				sticks_cut:=1+sticks_cut; 
		end;
		if sticks_cut = 1 then
			for i:=1 to n do
				if a[i]>0 then
					LoCut:=a[i];
		writeln(sticks_cut);
		sticks_cut:=0;
		for i:=1 to n do
		begin
			a[i]:=a[i]-LoCut;
			if a[i]<0 then
				a[i]:=0;
		//	write(a[i],' ');
		end;
		//writeln;
		for i:=1 to n do
			sumarray:=sumarray+a[i];
		//writeln('SUM: ',sumarray);
		LoCut:=1000; //Min
	until (sumarray<=0);
END.