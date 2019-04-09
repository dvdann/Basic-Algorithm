program SumGege;
var
	min,max,minGanjil,sum:integer;
begin
	write('Bilangan terkecil: ');
	readln(min);
	minGanjil:=min;
	write('Bilangan terbesar: ');
	readln(max);
	sum:=0;
	for min:=min to max do
        begin
			if (min mod 2 = 0) then
				sum:=sum+min;
		end;
	write('Jumlah total nilai bilangan genap : ');
	writeln(sum);
	sum:=0;
	for min:=minGanjil to max do
		begin
			if (min mod 2 > 0) then
				sum:=sum+min;
		end;
	write('Jumlah total nilai bilangan ganjil : ');
	write(sum);
	readln;
end.