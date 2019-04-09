program loopingA;
var
	x,i:integer;
begin
	write('Masukkan sejumlah bola ke kotak A: ');
	readln(x);
	while x > 0 do
	begin
		if x > 0 then
		begin
			write('Ambil bola dari kotak A: ');
			readln(i);
			x:=x-i;
			writeln('Sisa ',x);
		end;
	end;
	writeln('Bola habis');
	readln;
end.