program bilangan1sd20;
{Mencari bilangan yang habis dibagi 1 sampai 20}
var
	n:longint=0;
begin
	repeat
		n:=n+1;
//		write(n,' '); //Number control
	until ((n mod 1=0) and (n mod 2=0) and (n mod 3=0) and (n mod 4=0) and (n mod 5=0) and (n mod 6=0) and (n mod 7=0) and (n mod 8=0) and (n mod 9=0) and (n mod 10=0) and (n mod 11=0) and (n mod 12=0) and (n mod 13=0) and (n mod 14=0) and (n mod 15=0) and (n mod 16=0) and (n mod 17=0) and (n mod 18=0) and (n mod 19=0) and (n mod 20=0));
	writeln('Hasilnya ',n);
	readln;
end.