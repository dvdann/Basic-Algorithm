Program main;	
	const menitjam12:longint=720;
	type waktu=record
			jam,menit:integer;
	end;
var
	masuk,keluar:waktu;
	tarif:integer;
function hitungDurasi(TM:waktu;TK:waktu):waktu;
var
	TD:waktu;	
begin
	TM.menit:=TM.menit + (TM.jam*60);
	TK.menit:=TK.menit + (TK.jam*60);		
	if (TK.menit < TM.menit) then
	begin		
		TK.menit:=TK.menit + menitjam12;
		TD.menit:=TK.menit - TM.menit;
	end
	else
		TD.menit:=TK.menit - TM.menit;
	TD.jam:=TD.menit div 60;
	TD.menit:=TD.menit mod 60;
	hitungDurasi:=TD;
	writeln('Lama parkir = ',TD.jam,':',TD.menit);
end;	
procedure hitungTarif(durasi:waktu;var tarif:integer);
begin
	if ((durasi.jam = 0) and (durasi.menit > 0)) then
		tarif:=2000
	else if ((durasi.jam > 0) and (durasi.menit=0)) then
		tarif:=durasi.jam*1000 + 1000
	else if ((durasi.jam > 0) and (durasi.menit > 0)) then
		tarif:=durasi.jam*1000 + 2000;
end;
Begin
	masuk.jam:=10;
	masuk.menit:=15;
	keluar.jam:=3;
	keluar.menit:=27;	
	hitungTarif(hitungDurasi(masuk,keluar),tarif);
	writeln('tarif = Rp.',tarif);
	readln;
End.