program array2d;
uses crt;
var
	a:array [1..100,1..100] of integer;
	p:integer;
	l:integer;
	j,i:integer; //looping
BEGIN
	write('Input panjang : ');
	readln(p);
	write('Input lebar : ');
	readln(l);
	writeln;
	for i:=1 to p do
		for j:=1 to l do
		begin
			write('Input [',i,',',j,'] : ');
			readln(a[i,j]);
		end;
	writeln;
	writeln('output matrix');
	for j:=1 to l do //OUTPUT MATRIX
		for i:=1 to p do
		begin
			write(a[i,j],' ');
			if i=p then
				writeln;
		end;
	writeln;
	writeln('output baris');
	for i:=1 to p do //OUTPUT BARIS
		for j:=1 to l do
			write(a[i,j],' ');
	writeln;writeln;
	writeln('output kolom');
	for j:=1 to l do //OUTPUT KOLOM
		for i:=1 to p do
			write(a[i,j],' ');
	readkey;
END.