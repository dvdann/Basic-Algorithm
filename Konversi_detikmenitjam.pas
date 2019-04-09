program konversi_detik_menitJam;
var
	detik,menit,jam,selisih:integer;
begin
	readln(detik);
	menit:=detik div 60;
	jam:=menit div 60;
	selisih:=jam*60;
	writeln(jam,':',menit-selisih);
	readln;
end.