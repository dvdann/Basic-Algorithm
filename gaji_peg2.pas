program latihan_slide_28_Copy4;
uses crt;
var
	gol,anak,total,tunjangan:real;
begin
	tunjangan:=500;
	readln(gol);
	readln(anak);
	if gol = 1 then
		total:=anak*tunjangan+2000
	else
		begin
			tunjangan:=700;
			total:=anak*tunjangan+3000;
		end;
	total:=total/1000;
	writeln('Total gaji pegawai adalah ',total:3:1,' juta.');
	readln;
end.