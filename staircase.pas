program StairCase_Arsyel;
uses crt;
var
	i,j,x,k:integer;
	xMin:integer;
begin
	k:=0;
	readln(x);
	xMin:=x-1;
	for i:=1 to x do
	begin
		for j:=1 to xMin do
		begin
			write(' ');
		end;
		repeat
			write('#');
			k:=k+1;
		until (k=i);
		k:=0; //BITCH LINE!
		writeln;
		xMin:=xMin-1;
	end;
	readkey;
end.