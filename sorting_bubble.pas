program filex;
Uses crt;
Const
	nmax=7;
Var
	a:array [1..nmax] of integer;
	i:integer;
	
procedure input;
begin
	for i:=1 to nmax do
		read(a[i]);
end;

procedure sorting;
var
	tmp:integer;
	j:integer;
begin
	for i:=1 to (nmax-1) do
		for j:=i+1 to nmax do
			if a[i] > a[j] then // jika < maka descending
			begin
				tmp:=a[i];
				a[i]:=a[j];
				a[j]:=tmp;
			end;
end;
	
procedure print;
begin
	for i:=1 to nmax do
		write(a[i],' ');
end;

Begin
	writeln('Inputkan ',nmax,' angka:');
	input;
	sorting;
	writeln('Setelah di sorting:');
	print;
	readkey;
End.