program project;
var
	a:array [1..100] of longint;
	i:longint;
	sum:longint;
	limit:longint;
procedure display;
begin
	i:=1;
	repeat
		i:=i+1;
		write(a[i],' ');
		if (a[i] mod 2 = 0) then
			sum:=sum+a[i];
	until (a[i]>=limit);
	writeln;
	writeln('Hasil genap fibonacci akhir : ',sum);
end;
begin
	limit:=4000000; //Nilai fibonacci-nya tidak boleh lebih dari 4jt
	a[1]:=1;
	a[2]:=a[1];
	i:=2;
	repeat
		i:=i+1;
		a[i]:=a[i-1]+a[i-2];
	until (a[i]>=limit);
	display;
	readln;
end.