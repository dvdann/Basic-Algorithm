program function_nilaiPecahan;
type pecahan = record
	pembilang:integer;
	penyebut:integer;
end;
var
	a,b:pecahan;
	sumPembilang,minPembilang,nPenyebut,kaliPembilang,bagiPembilang,bagiPenyebut:integer;
function nPecahan(a,b:pecahan):integer;
begin
	nPenyebut:=a.penyebut*b.penyebut;
	sumPembilang:=(nPenyebut div a.penyebut*a.pembilang)+(nPenyebut div b.penyebut*b.pembilang);
	minPembilang:=(nPenyebut div a.penyebut*a.pembilang)-(nPenyebut div b.penyebut*b.pembilang);
	kaliPembilang:=a.pembilang*b.pembilang;
	bagiPembilang:=a.pembilang*b.penyebut;
	bagiPenyebut:=a.penyebut*b.pembilang;
	nPecahan:=0;
end;
begin
	writeln('Masukkan nilai bilangan pecahan, dengan / diwakili oleh spasi');
	write('Bilangan 1: ');
	read(a.pembilang,a.penyebut);
	write('Bilangan 2: ');
	readln(b.pembilang, b.penyebut);
	nPecahan(a,b);
	writeln('Hasil penjumlahan: ',sumPembilang,'/',nPenyebut);
	writeln('Hasil pengurangan: ',minPembilang,'/',nPenyebut);
	writeln('Hasil perkalian: ',kaliPembilang,'/',nPenyebut);
	writeln('Hasil pembagian: ',bagiPembilang,'/',bagiPenyebut);
	readln;
end.