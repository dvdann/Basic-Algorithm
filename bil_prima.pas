Program bilPrima;
uses crt;
var
	Bil,i,prima:integer;
begin
    clrscr;
	readln(bil);
	prima:=0;
	for i:=2 to bil do
	begin
		If bil mod i = 0 then
			prima:=prima+1;
	end;
	if prima=1 then
		writeln('Bilangan prima')
	else
		writeln('Bukan bilangan prima');
	readkey;
end.
