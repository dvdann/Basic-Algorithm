program prof_angry;
uses crt;
var
	t,tc:integer;
	n,k:integer;
	an:array of integer;
	count:integer;
	i:integer;
Begin
	readln(t);
	tc:=0;
	repeat
		read(n,k);
		setlength(an,n);
		count:=0;
		tc:=tc+1;
		for i:=0 to n-1 do
		begin	
			read(an[i]);
			if an[i] <= 0 then
				count:=count+1;
		end;
		if count < k then
	       writeln('YES')
		else writeln('NO');
		writeln(count);
    until (tc=t);
	readkey;
End.