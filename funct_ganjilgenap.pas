program fuction_ganjilgenap;
var
	i:integer;
	
function kelolaGanjil_genap(i:integer):boolean;
	begin
		i:=i mod 2;
		if i = 0 then
			kelolaGanjil_genap:=true
		else
			kelolaGanjil_genap:=false;
	end;
	
begin
	write('Cek bilangan genap? ');
	readln(i);
	writeln(kelolaGanjil_genap(i));
	readln;
end.