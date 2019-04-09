Program cekKurung;
const
	max=99;
var
	tab:array[0..max] of char;
	s:string;
	top:integer=0;
	i,longstr:integer;
Begin	
	writeln('Masukkan kalimat:');
	readln(s);
	longstr:=length(s);
	for i:=1 to longstr do
	begin
		if ((s[i] = '(') and (longstr <= length(tab))) then
		begin
			top:=top+1;
			tab[top]:=s[i];
		end		
		else if (s[i] = ')') and (top <> 0) and (tab[top] = '(') then
			top:=top-1
		else if ((s[i] = ')') and (top = 0)) then
		begin
			top := -1;
			break;
		end;
	end;	
	
	if (top = 0) then
		writeln('Benar!')
	else writeln('Salah!');	
	readln;
End.