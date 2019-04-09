Program pembagianGaji;
var
	Nama:string;
	Jamkerja,upah,honor:integer;
begin
	write('Nama: ');
	readln(nama);
	write('Jam kerja: ');
	readln(jamkerja);
	write('Upah sebesar Rp. 5000. Inputkan jika ingin diubah: ');
	readln(upah);
	honor:=upah*jamkerja;
	writeln('Honornya adalah ',honor);
	readln;
end.