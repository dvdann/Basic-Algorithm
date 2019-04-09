program project;
uses crt;
var
	num,i:longword;
	a:array of longword;
	
procedure test_prime;
var
	j,k:longword;
	countPrime:array of longword;
begin
	writeln;
	setlength(countPrime,num+1);
	for j:=1 to num do
	begin
		for k:=1 to num do
		begin
			if (a[j] mod k = 0) and (a[j]<>0) then
				countPrime[j]+=1;
		end;
		if (countPrime[j] = 2) then
		begin
			writeln('Faktor prima terbesarnya adalah ',j);
		end;
	end;
end;
	
Begin
	write('Masukkan angka bulat : ');
	readln(num);
	setlength(a,num+1);
	for i:=1 to num do
	begin
		if (num mod i = 0) and (i<>1) then
		begin
			a[i]:=i;
//			write(a[i],' ');
		end;
	end;
	test_prime;
	writeln('Selesai.');
	readkey;
End.
