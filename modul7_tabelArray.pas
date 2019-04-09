program tabel;
var
	a:array[1..10] of integer;
	banyak:integer;

procedure inittab(c:integer;var tabel:array of integer);
var
	i:integer;
begin
	for i:=1 to c do
		tabel[i]:=i;
end;

procedure outtab(c:integer;tabel:array of integer);
var	i:integer;
begin
	for i:=1 to c do
		writeln('i=',i,' tabel[i]= ',tabel[i]);
end;

begin //main program
	writeln('Masukkan banyak bilangn yang diinput (<10)');
	readln(banyak);
	if banyak < 10 then //Max jangkauan array
	begin
		inittab(banyak,a);
		outtab(banyak,a);
	end;
	readln;
end.