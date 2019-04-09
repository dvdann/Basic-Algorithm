program case_of;uses crt;
var
	//i:integer;
	i:string;
begin
	readln(i);
	case i of
		'merah':writeln('Satu');
		'hijau':writeln('Dua');
		'biru':writeln('Tiga');
	end;
	readln;
end.