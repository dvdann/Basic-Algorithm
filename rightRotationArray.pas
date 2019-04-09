program cirArray;
uses crt;
var
	a:array of integer;
	b:array of integer;
	n,k,q:integer;
	i:integer;
	count:integer=0;
	
procedure rotate;
var
	temp,i:integer;
begin
	repeat
		temp:=a[n];
		for i:=n downto 1 do //FUCKIN RIGHT ROTATION
		begin
			if i<>1 then
				a[i]:=a[i-1]
			else
				a[1]:=temp;
		end;
		count+=1;
	until (count=k);
end;

begin
	read(n,k,q);
	setlength(a,n+1);
	setlength(b,q+1);
	for i:=1 to n do
		read(a[i]);
	rotate;
	for i:=1 to q do
	begin
		readln(b[i]);
	end;
	for i:=1 to q do
		writeln(a[b[i]]);
	readkey;
end.