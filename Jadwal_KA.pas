program jadwal_keretaApi;
type
	jam=record
		hh,mm:string;
end;
type
	jadwal_ka=record
		no_Ka:string;
		kota_as:string;
		jam_berangkat:jam;
		kota_tu:string;
		jam_tiba:jam;
end;
var
	jka:jadwal_ka;
begin
	write('No. Kereta Api: ');readln(jka.no_ka);
	write('Kota asal: ');readln(jka.kota_as);
	writeln('Keberangkatan: ');
	write('Jam: ');readln(jka.jam_berangkat.hh);
	write('Menit: ');readln(jka.jam_berangkat.mm);
	write('Kota tujuan: ');readln(jka.kota_tu);
	writeln('Kedatangan: ');
	write('Jam: ');readln(jka.jam_tiba.hh);
	write('Menit: ');readln(jka.jam_tiba.mm);
	writeln('=== Yang di-input ===');
	writeln('No. Kereta Api: ',jka.no_ka);
	writeln('Kota asal: ',jka.kota_as);
	writeln('Jam keberangkatan: ',jka.jam_berangkat.hh,':',jka.jam_berangkat.mm);
	writeln('Kota tujuan: ',jka.kota_tu);
	writeln('Jam tiba: ',jka.jam_tiba.hh,':',jka.jam_tiba.mm);
	readln;
end.
