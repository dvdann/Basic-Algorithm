program beda_topi;
var
	topi:array[1..3] of integer;
begin
	write('Berat Topi 1: ');
	readln(topi[1]);
	write('Berat Topi 2: ');
	readln(topi[2]);
	write('Berat Topi 3: ');
	readln(topi[3]);
	if (topi[1] <> topi[2]) and (topi[1] <> topi[3]) then
		writeln('Berat topi 1 berbeda')
	else if (topi[2] <> topi[1]) and (topi[2] <> topi[3]) then
		writeln('Berat topi 2 berbeda')
	//if (topi[3] <> topi[1]) and (topi[3] <> topi[2]) then
	else
		writeln('Berat topi 3 berbeda');
	readln;
end.