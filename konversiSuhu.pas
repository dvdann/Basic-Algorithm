Program konversiSuhu;
var
	Celcius,reamur,farenheit,kelvin:real;
begin
	readln(celcius);
	reamur:=celcius*4/5;
	farenheit:=celcius*9/5+32;
	kelvin:=celcius+273;
	writeln(reamur:1:1);
	writeln(farenheit:1:1);
	writeln(kelvin:1:1);
	readln;
end.