program Fungsi_KeeperPK;
uses crt;
var
	n,angka,i:integer;
	gol:integer=0;
	miss:integer=0;
	
function is_kelipatan2(angka:integer):boolean;
begin
	if (angka mod 2 = 0) then
	begin
		is_kelipatan2:=true;
		writeln('Tendangan terlalu ke kiri atau ke kanan');
		miss:=miss+1;
	end;
end;

function is_kelipatan5(angka:integer):boolean;
begin
	if (angka mod 5 = 0) and (angka mod 2 <> 0) then
	begin
		is_kelipatan5:=true;
		writeln('Tendangan terlalu ke atas');
		miss:=miss+1;
	end;
end;

function is_ganjil(angka:integer):boolean;
begin
	if (angka mod 5 <> 0) and (angka mod 2 <> 0) then
	begin
		is_ganjil:=true;
		writeln('Tendangan tepat sasaran');
		gol:=gol+1;
	end;
end;

begin
	write('Berapa kali menendang? ');readln(n);
	for i:=1 to n do
	begin
		write('Tendangan ke-',i,' = ');
		readln(angka);
		is_kelipatan2(angka);
		is_kelipatan5(angka);
		is_ganjil(angka);
		writeln;
	end;
	writeln('Score akhir: ',gol,' untuk marcus, ',miss,' untuk De Gea');
	if gol > miss then
		writeln('Superb marcus!')
	else if miss > gol then
		writeln('Well done De gea')
	else
		writeln('Draw!');
	readkey;
end.