program batasNganjilGenap;
var
	x,y,i:integer;
begin
	write('Masukan batas: ');
	readln(x);
	write('Masukan batas: ');
	readln(y);
	if y > x then
	begin
		writeln('Batas bawah ',x,', dan batas atas ',y);
		write('Masukan nilai antara ',x,' s.d ',y,' = ');
		readln(i);
		if (i <= y) and (i >= x) then
		begin
			//proses ganjil genap
			i:=i mod 2;
			if i = 0 then
				writeln('Genap')
			else
				writeln('Ganjil');
		end;
	end
	else
	begin
		writeln('Batas bawah ',y,', dan batas atas ',x);
		write('Masukan nilai antara ',y,' s.d ',x,' = ');
		readln(i);
		if (i <= x) and (i >= y) then
		begin
			//proses ganjil genap
			i:=i mod 2;
			if i = 0 then
				writeln('Genap')
			else
				writeln('Ganjil');
		end;
	end;
	readln;
end.	