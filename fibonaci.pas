PROGRAM fibonaci;
VAR
	i,n:integer;
	a:array[1..9999] of qword;
BEGIN
	readln(n);
	a[1]:=1;
	for i:=1 to (n) do
	begin
		if (i-1>0) then
			a[i]:=a[i-1]+a[i-2];
		write(a[i],' ');
	end;
	readln;
END.