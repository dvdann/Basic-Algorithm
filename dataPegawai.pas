program data_pegawai;
type
	tgl=record
		tanggal:string[2];
		bulan:string[2];
		tahun:string[4];
end;	
type
	peg=record
		nama:string;
		jabatan:(AA, Lektor, LektorKepala, GuruBesar);
		nip:string;
		ttl:tgl;
end;
var
	p:peg;
begin
	write('Nama: ');readln(p.nama);
	write('Jabatan: ');readln(p.jabatan);
	write('NIP: ');readln(p.nip);
	write('Tanggal: ');readln(p.ttl.tanggal);
	write('Bulan: ');readln(p.ttl.bulan);
	write('Tahun: ');readln(p.ttl.tahun);
	writeln('Data yang diinputkan:');
	writeln(p.nama,' | ',p.jabatan,' | ',p.nip,' | ',p.ttl.tanggal,'/',p.ttl.bulan,'/',p.ttl.tahun);
	readln;
end.