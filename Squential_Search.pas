program squensialSearch;
var
	a:array of string;
	n,saveindex:integer;
	i:integer;
	nama:string;
BEGIN
	write('Jumlah mahasiswa: ');
	readln(n);
	setlength(a,n);
	for i:=0 to n-1 do
	begin
		write('Mahasiswa ',i+1,' : ');
		readln(a[i]);
	end;
	write('Masukkan nama yang dicari: ');
	readln(nama);
	for i:=0 to n-1 do
		if nama = a[i] then
			saveindex:=i;
	//writeln;
	if saveindex > 0 then
		writeln(Nama,' ditemukan pada urutan ke ',saveindex+1)
	else
		writeln(Nama,' tidak ditemukan');
	readln;
END.