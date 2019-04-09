program GajiKaryawan;
type jam =
record
	masuk:0..24;
	pulang:0..24;
end;
type karyawan =
record
	nama,gol:string;
	j:jam;
end;
var
	k:karyawan;
	hari,lamakerja:integer;
begin
	write('Nama karyawan : ');
	readln(k.nama);
	write('Golongan (1-5) : ');
	readln(k.gol);
	write('Jam masuk (00-24)  : ');
	readln(k.j.masuk);
	write('Jam pulang (00-24) : ');
	readln(k.j.pulang);
	write('Berapa hari kerja dalam seminggu? ');
	readln(hari);
	lamakerja:=hari*(k.j.pulang - k.j.masuk);
	if lamakerja < 150 then
	begin
		if k.gol = '1' then
			writeln('Gajinya sebesar Rp. ',500000+(lamakerja)*5000)
		else if k.gol = '2' then
			writeln('Gajinya sebesar Rp. ',300000+(lamakerja)*3000)
		else if k.gol = '3' then
			writeln('Gajinya sebesar Rp. ',250000+(lamakerja)*2000)
		else if k.gol = '4' then
			writeln('Gajinya sebesar Rp. ',100000+(lamakerja)*1500)
		else
			writeln('Gajinya sebesar Rp. ',50000+(lamakerja)*1000);
		readln;
	end
	else
	begin
		if k.gol = '1' then
			writeln('Gajinya sebesar Rp. ',(500000+(lamakerja)*5000)+((lamakerja-150)*5000*0.5):1:0)
		else if k.gol = '2' then
			writeln('Gajinya sebesar Rp. ',(300000+(lamakerja)*3000)+((lamakerja-150)*3000*0.5):1:0)
		else if k.gol = '3' then
			writeln('Gajinya sebesar Rp. ',(250000+(lamakerja)*2000)+((lamakerja-150)*2000*0.5):1:0)
		else if k.gol = '4' then
			writeln('Gajinya sebesar Rp. ',(100000+(lamakerja)*1500)+((lamakerja-150)*1500*0.5):1:0)
		else
			writeln('Gajinya sebesar Rp. ',(50000+(lamakerja)*1000)+((lamakerja-150)*1000*0.5):1:0);
		readln;
	end;
end.