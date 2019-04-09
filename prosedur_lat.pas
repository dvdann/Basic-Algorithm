program prosedur;
var
	x:integer;
	
procedure tampilkan(y:integer);
begin
	if y mod 2 = 0 then	
		writeln('Genap')
	else	
		writeln('Ganjil');	
	
end;

begin
	write('Cek bilangan ganjil/genap? ');
	readln(x);	
	tampilkan(x);		
	readln;	
end.