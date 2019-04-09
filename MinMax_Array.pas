program MinMax_Array;
uses crt;
var
	a:array of integer;
	min,max,i,j,n:integer;
begin
	max:=0;
	write('Ingin memasukkan berapa angka? ');
	readln(n);
	setlength(a,n+1);
	for i:=1 to n do
	begin
		write('Angka ke ',i,' : ');
		readln(a[i]);
		if a[i] > max then
			max:=a[i];
		min:=max;
		for j:=1 to n do
		begin
			if a[j] < min then
				min:=a[j];
		end;
	end;
	writeln('Terbesar: ',max,' | Terkecil: ',min);
	readkey;
end.