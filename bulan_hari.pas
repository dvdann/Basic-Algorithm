Program Hari_bulan;
var
	Bulan:string;
begin
	readln(bulan);
	case bulan of
		'januari':writeln('Ada 31 hari');
		'februari':writeln('Ada 28 hari');
		'maret':writeln('Ada 31 hari');
		'april':writeln('Ada 30 hari');
		'mei':writeln('Ada 31 hari');
		'juni':writeln('Ada 30 hari');
		'juli':writeln('Ada 31 hari');
		'agustus':writeln('Ada 31 hari');
		'september':writeln('Ada 30 hari');
		'oktober':writeln('Ada 31 hari');
		'november':writeln('Ada 30 hari');
		'desember':writeln('Ada 31 hari');
	end;
	readln;
end.