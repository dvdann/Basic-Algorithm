program tgl_masehi;
type
	tgl=record
		tanggal:1..31;
		bulan:1..12;
		tahun:string[4];
end;
var
	t:tgl;
begin
	write('Tgl: ');readln(t.tanggal);
	write('Bln: ');readln(t.bulan);
	write('Thn: ');readln(t.tahun);
	writeln('=== Tanggal yang di-input ===');
	write(t.tanggal,'/',t.bulan,'/',t.tahun);
	readln;
end.