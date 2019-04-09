program sumdiv;
uses crt;
var
	n,k:longint;
	an:array of longint;
	i,j:longint;
	count:longint;
Begin
	count:=0;
	read(n,k);
	setlength(an,n);
	for i:=0 to n-1 do
		read(an[i]);
	for i:=0 to n-1 do
		for j:=n-1 downto 0 do
			if ((an[i] + an[j]) mod k = 0) and (i < j) then
			begin	
			//	writeln('(',i,',',j,')');
				count:=count+1;
			end;
	writeln(count);
	readkey;
End.