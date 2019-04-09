program faktorial;
var
	x,i,f:longint;
begin
	f:=1;
	i:=1;
	readln(x);
	repeat
		i:=i+1;
		f:=i*f;
	until (i=x);
	writeln(f);
	readln;
end.