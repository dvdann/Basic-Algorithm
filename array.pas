program arrayy;
uses crt;
var
	bilangan:array[1..5] of integer;
	i,banyak:integer;
begin
	//awal dari masukkan suatu elemen kedalam sebuah array
	write('Masukkan banyak bilangan yang dinput (< 5): ');
	readln(banyak);
	if banyak <= 5 then
		for i:=1 to banyak do
		begin
			writeln('Masukkan bilangan ke-',i);
			readln(bilangan[i]);
		end;
	for i:=1 to banyak do
		writeln('Isi elemen ke-',i,' adalah ',bilangan[i]);
	readln;
	end.