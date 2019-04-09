program function_pecahan;
type pecahan = record
	pembilang:integer;
	penyebut:integer;
	end;
var
	x,y:pecahan;
	sum:integer;
function sumPem(x,y:pecahan):integer;
	begin
		sum:=x.penyebut*y.penyebut;
		sumPem:=(sum div x.penyebut*x.pembilang)+(sum div y.penyebut*y.pembilang);
	end;
function sumPen(x,y:pecahan):integer;
	begin
		sumPen:=x.penyebut*y.penyebut;
	end;
function minP(x,y:pecahan):integer;
	begin
		sum:=x.penyebut*y.penyebut;
		minP:=(sum div x.penyebut)-(sum div y.penyebut);
	end;
function minPen(x,y:pecahan):integer;
	begin
		minPen:=x.penyebut*y.penyebut;
	end;
function kaliP(x,y:pecahan):integer;
	begin
		kaliP:=x.pembilang*y.pembilang;
	end;
function kaliPen(x,y:pecahan):integer;
	begin
		kaliPen:=x.penyebut*y.penyebut;
	end;
function bagiP(x,y:pecahan):integer;
	begin
		bagiP:=x.pembilang*y.penyebut;
	end;
function bagiPen(x,y:pecahan):integer;
	begin
		bagiPen:=x.penyebut*y.pembilang;
	end;
begin
	writeln('Masukkan nilai bilangan pecahan, dengan / diwakili oleh spasi');
	write('Bilangan 1: ');
	read(x.pembilang, x.penyebut);
	write('Bilangan 2: ');
	readln(y.pembilang, y.penyebut);
	writeln('Hasil penjumlahan :',sumPem(x,y),'/',sumPen(x,y));
	writeln('Hasil pengurangan :',minP(x,y),'/',minPen(x,y));
	writeln('Hasil perkalian :',kaliP(x,y),'/',kaliPen(x,y));
	writeln('Hasil pembagian :',bagiP(x,y),'/',bagiPen(x,y));
	readln;
end.