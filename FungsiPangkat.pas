program FungsiPangkat;
var
	x,a:integer;
	
function pangkat(x,a:integer):integer;
var
	temp:integer=1;
	i:integer=0;
begin
	repeat
		i:=i+1;
		temp:=temp*x;
	until (i=a);
	pangkat:=temp;
end;

begin
	writeln('Masukkan angka(spasi)pangkat:');
	readln(x,a);
	writeln('Hasilnya: ',pangkat(x,a));
	readln;
end.