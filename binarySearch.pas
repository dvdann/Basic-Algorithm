Program main;
const
	max=25;
var
	tab:array [0..max-1] of integer;
	itengah,iawal,iakhir:integer;
	i,x:integer;
	Tn:integer=0;
	found:boolean=false;
Begin
	for i:=0 to max-1 do
		tab[i]:=1+i;
	for i:=0 to max-1 do
		write(tab[i],' ');
	writeln;
	write('Data yang dicari: ');
	readln(x);
	iawal:=0;
	iakhir:=max-1;	
	while ((iawal<=iakhir) and not(found)) do
	begin
		Tn:=Tn+1;
		writeln('Eksekusi ke-',Tn);
		itengah:=(iawal + iakhir) div 2;
		if (x = tab[itengah]) then
			found:=true
		else
		begin
			if (x > tab[itengah]) then
				iawal:=itengah+1
			else if (x < tab[itengah]) then
				iakhir:=itengah-1;
		end;		
	end;
	if (found) then
		writeln('Data ditemukan')
	else
		writeln('Data tidak ada');
	readln;
End.