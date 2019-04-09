program rec01(input,output);
const
	upah=2500;
type
	nametype=string[10];
	nom=0..999;
	anggot=record
		nama:array[nom] of nametype;
		idnum:array[nom] of nom;
		gaji:array[nom] of real;
	end;
var
	ulang:char;
	anggota:anggot;
	nama1:nametype;
	idnum:nom;
	jam:real;
	i:integer=0; //Index array
	n:integer; //looping output array
	
procedure display(n:integer);
begin
	writeln('Nama      : ',anggota.nama[n]);
	writeln('ID Number : ',anggota.idnum[n]);
	writeln('Gaji      : ',anggota.gaji[n]:4:2);
end;

BEGIN
	ulang:='y';
	while (ulang = 'y') or (ulang = 'Y') do
	begin
		i:=i+1;
		write('Masukkan nama anggota > ');
		readln(nama1);
		anggota.nama[i]:=nama1;
		write('Masukkan id number > ');
		readln(idnum);
		anggota.idnum[i]:=idnum;
		write('Masukkan jam kerja > ');
		readln(jam);
		anggota.gaji[i]:=jam*upah;
		write('Isikan data lagi? (Y/N) > ');
		readln(ulang);
		writeln;
	end;
	writeln('Hasil inputan:');
	for n:=1 to i do
	begin
		display(n);
		writeln('===========================================');
	end;
	writeln;
	write('Ingin menampilkan index data yang ke  berapa? ');
	readln(n);
	if (n<=i) and (n>0) then
		display(n)
	else
		writeln('Data tidak ada');
	readln;
end.