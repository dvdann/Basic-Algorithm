program kasus_bonusPeg;
uses crt;
type kriteria=record
	usia,lamakerja:integer;
end;
var
	krt:kriteria;
begin
	readln(krt.usia);
	readln(krt.lamakerja);
	if krt.usia >= 50 then if krt.lamakerja >= 5 then
		writeln('Mendapat bonus gaji 1 juta.');
	if krt.usia < 50 then if krt.lamakerja >= 5 then
		writeln('Mendapat gaji bonus 800 ribu.');
	if krt.usia > 17 then if krt.lamakerja < 5 then if krt.lamakerja >= 2 then
	//Saat usia mulai kerja minimal 18thn dan minimal telah bekerja 2 tahun, maka mendapat gaji bonus 500rb.
		writeln('Mendapat gaji bonus 500 ribu.')
	else
		writeln('Tidak dapat bonus.');
	readln;
end.