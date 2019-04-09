program urut;
uses wincrt;
const NilaiMaksimum = 1000;
type Larik = array[1..NilaiMaksimum] of integer;

var
	L : Larik;
	batas : integer;
	
procedure masukan (var L : Larik; n : integer);
var
	a : integer;
begin
	for a := 1 to n do
    begin
		write('Masukkan Nilai Ke-' ,a,' : '); readln(L[a]);
    end;
end;

procedure pengurutan (var L : Larik; n : integer);
var
	i : integer;
	k : integer;
	temp : integer;
begin
	for i := 1 to (n-1) do
		for k := n downto i+1 do
			if L[k] < L[k-1] then
			begin
				temp := L[k];
				L[k] := L[k-1];
				L[k-1] := temp;
			end;
end;

procedure keluaran(var L : Larik; n : integer);
var
	i : integer;
begin
	for i := 1 to n do
		write(L[i]:5);
end;

begin
  writeln ('*******************************************') ;
  write('Masukkan Jumlah Elemen yang diinginkan : '); readln(batas);
  writeln ('*******************************************') ;
  writeln;
  masukan(L,batas) ; writeln;
  pengurutan (L,batas); writeln;
  writeln ('************************') ;
  writeln('Hasil Pengurutan Larik :  ');
  writeln ('************************') ;
  keluaran(L,batas);
  readln;
end.
{
Program SortingSelectionSort;
var
	angka: array[1..5] of integer;
	i,a, temp: integer;
begin
	//Mengisi array
	angka[1] := 3;
	angka[2] := 5;
	angka[3] := 4;
	angka[4] := 2;
	angka[5] := 1;
	//Tampilkan data sebelum diurutkan
	writeln('Sebelum diurutkan : ');
	for i:=1 to 5 do
	begin
		writeln('angka ke-', i, ' : ', angka[i]);
	end;
	//Lakukan pengurutan/sorting
	for i:=1 to 5-1 do
	begin
		for a:=i+1 to 5 do
		begin
			if(angka[a] < angka[i]) then
			begin
				temp := angka[a];
				angka[a] := angka[i];
				angka[i] := temp;
			end;
		end;
	end;
	//Tampilkan data setelah diurutkan
	writeln('Setelah diurutkan : ');
	for i:=1 to 5 do
	begin
		writeln('angka ke-', i, ' : ', angka[i]);
	end;
	readln;
end.
}