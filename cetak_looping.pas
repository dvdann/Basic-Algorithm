program cetak_looping;
var
	x,i:integer;
function cetak(x:integer):string;
begin
	cetak:='Telkom University!';
	for i:=1 to x do
		writeln(cetak);
end;
begin
	write('Berapa banyak yang akan dicetak? ');
	readln(x);
	cetak(x);
	readln;
end.