(*//Kemungkinan x+y+z=25
program m;
var
	x,y,z,i,j,k:integer;
	sum:integer=0;
	c:integer=0;
Begin
	for i:=0 to 25 do
	begin
		z:=i;
		for j:=0 to 25 do
		begin
			y:=j;
			for k:=0 to 25 do
			begin
				x:=k;
				sum:=x+y+z;
				if (sum = 25) then
				begin
					c:=c+1;
					writeln(x,' + ',y,' + ',z,' = ',sum);					
				end;
			end;
		end;
	end;
	writeln('Total kemungkinan: ',c);
	readln;
End.
*)
(*//Jumlah n ganjil pertama
program main;
var
	i:integer=0;
	j:integer=0;
	sum:integer=0;
	n:integer;
Begin
	write('Masukkan nilai N = ');
	readln(n);
	while (i<>n) do
	begin
		j:=j+1;
		if (j mod 2 <> 0) then
		begin
			sum:=sum+j;
			i:=i+1;			
		end;
	end;
	writeln('Jumlah ',n,' bilangan ganjil pertama adalah ',sum);
	readln;
End.
*)
(*//Jumlah nilai ganjil sampe ke-n
program main;
var
	n,i:integer;
	sum:integer=0;
Begin
	readln(n);
	for i:=1 to n do
	begin
		if (i mod 2 = 1) then
			sum:=sum+1;
	end;
	writeln(sum);
	readln;
end.
*)
(*//Input char until (.)
program main;
var	
	c:char;
	s:string='';
Begin	
	repeat
		readln(c);
		if (c <> '.') then
			s:=s+c;
	until (c = '.');	
	writeln(s);
	readln;
end.
*)
