program durasi_;
uses
	crt;
type jam=record
	hh:0..11;
	mm:0..59;
	dd:0..59;
	indikator:(pm,am);
end;
var
	jamawal,jamakhir,ind1,ind2:jam;
	durasi:integer;
begin
	write('Masukkan jam awal dengan jam menit detik, dipisah dengan spasi: ');
	read(jamawal.hh);read(jamawal.mm);read(jamawal.dd);readln(ind1.indikator);
	write('Masukkan jam akhir dengan jam menit detik, dipisah dengan spasi: ');
	read(jamakhir.hh);read(jamakhir.mm);read(jamakhir.dd);readln(ind2.indikator);
	if ind1.indikator = ind2.indikator then
		durasi:=(jamakhir.hh*3600+jamakhir.mm*60+jamakhir.dd) - (jamawal.hh*3600+jamawal.mm*60+jamawal.dd)
	else
		durasi:=(jamakhir.hh*3600+jamakhir.mm*60+jamakhir.dd)*12 - (jamawal.hh*3600+jamawal.mm*60+jamawal.dd);
	writeln('Ditempuh dengan ',durasi,' detik');
	readln;
end.