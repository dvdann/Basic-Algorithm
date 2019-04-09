program mahasiswa_data;
uses
	crt;
type
	mhs=record
		nim:string[10];
		nama:string[25];
		umur:string;
	end;
var
	m:mhs;
	a:real;
begin
	write('Siapa nama Anda? ');readln(m.nama);
	write('Masukan NIM anda! ');readln(m.nim);
	write('Masukan E-mail Anda! ');readln(m.umur);
	{proses}
	writeln('Nama Anda ',m.nama,'. Nomer NIM Anda adalah ',m.nim,'. Dan e-mail Anda adalah ',m.umur);
	readln;
end.