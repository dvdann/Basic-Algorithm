program leftRotation_arrayDinamis;
uses crt;
var
    i,n,d:longint;
    a:array of longint;
	j:longint=0;
	
procedure process;
var
	temp:longint;
begin
	repeat
		temp:=a[1];
		for i:=1 to n do
			if i<>n then
				a[i]:=a[i+1]
			else
				a[n]:=temp;
		j:=j+1;
	until (j=d);
end;
	
begin
	read(n,d);
	setlength(a,n+1); //Array dinamis
	for i:=1 to n do
		read(a[i]);
	process;
	for i:=1 to n do
		write(a[i],' ');
	readkey;
end.