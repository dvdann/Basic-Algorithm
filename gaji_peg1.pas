program latihan_slide_27_Copy4;
uses crt;
var
	gol,anak,total,tunjangan:real;
begin
	tunjangan:=500;
	readln(gol);
	readln(anak);
	if gol = 1 then
		total:=anak*tunjangan+1000
	else
		total:=anak*tunjangan+2000;
	total:=total/1000;
	writeln('Total gaji pegawai adalah ',total:3:1,' juta.');
	readln;
end.