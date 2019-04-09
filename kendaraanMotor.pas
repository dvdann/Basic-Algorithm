program kendaraan_motor;
type Kendaraan=
	record
		tahun:integer;
		merek:(toyota, honda, hyundai, suzuki);
		model:string;
	end;
var
	KB4:Kendaraan;
begin
	write('Tahun pembuatan: ');
	readln(KB4.tahun);
	write('Merek kendaraan : ');
	readln(KB4.merek);
	write('Model: ');
	readln(KB4.model);	
	write(KB4.tahun,'-',KB4.merek,'-',KB4.model);
	readln;
end.