program function_pecahan_uang;
uses crt;
var
	uang,i,x:longint;
function p50(uang:longint):longint;
	begin
		p50:=uang div 50000;
	end;
function p20(i:longint):longint;
	begin
		p20:=i div 20000;
	end;
function p5(x:longint):longint;
	begin
		p5:=x div 5000;
	end;
begin
	write('Nilai uang yang ingin dipecahkan: ');
	readln(uang);
	if (uang mod 5000 = 0) then
	begin
		writeln('Rp. 50.000 sebanyak ',p50(uang),' lbr');
		i:=uang - p50(uang)*50000;
		writeln('Rp. 20.000 sebanyak ',p20(i),' lbr');
		x:=i - p20(i)*20000;
		writeln('Rp.  5.000  sebanyak ',p5(x),' lbr');
	end
	else
		writeln('Masukkan nilai uang kelipatan 5000!');
	readln;
end.