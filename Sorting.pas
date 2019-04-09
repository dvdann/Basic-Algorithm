{File		: Sorting.pas}
{Desc		: Melakukan pengurutan terhadap data}
{Date		: 24-3-2016}
Program sorting1;
type
	mahasiswa=record
		nama:string;
		jk:char;
		nilai:integer;
	end;
	arraymhs=array [1..6] of mahasiswa;
var
	tabmhs:arraymhs;
	i:integer;

procedure show(tab:arraymhs);
{menampilkan semua data mahasiswa dari dalam array}
begin
	for i:=1 to length(tab) do
	begin
		writeln('Data mahasiswa ke-',i);
		writeln('Nama : ',tab[i].nama);
		writeln('JK : ',tab[i].jk);
		writeln('Nilai : ',tab[i].nilai);
	end;
end;{endshow}

procedure proc3(var tab:arraymhs;a,b:integer);
var
	temp:mahasiswa;
begin
	//writeln('cek definisi m/b : ',b); //tambahan
	temp:=tab[a];
	tab[a]:=tab[b];
	tab[b]:=temp;
end;{endproc3}

procedure proc2(tab:arraymhs;a:integer;var b:integer);
var
	j:integer;
begin
	b:=a;
	for j:=a to length(tab) do
		if tab[j].jk < tab[b].jk then // > Ascending-Descending
			b:=j;
end;{endproc2}

procedure proc1(var tab:arraymhs); //urut berdasarkan gender
var
	m:integer;
begin
	for i:=1 to length(tab)-1 do
	begin
		proc2(tab,i,m);
		proc3(tab,i,m);
	end;
end;{endproc1}

procedure proc4(var tab:arraymhs); //Urut berdasarkan nilai
var
	i,j:integer;
	x:mahasiswa;
begin
	for i:=2 to length(tab) do
	begin
		x:=tab[i];
		j:=i-1;
		while (j>0) and (tab[j].nilai>x.nilai) do
		begin
			tab[j+1]:=tab[j];
			j:=j-1;
		end;
		tab[j+1]:=x;
	end;
end;{endproc4}

BEGIN
	writeln('Tes : ',length(tabmhs));
	for i:=1 to length(tabmhs) do
	begin
		writeln('Data mahasiswa ke-',i);
		readln(tabmhs[i].nama);
		readln(tabmhs[i].jk);
		readln(tabmhs[i].nilai);
	end;
	proc1(tabmhs);
	writeln('Hasil proc1');
	show(tabmhs);
	proc4(tabmhs);
	writeln('Hasil proc4');
	show(tabmhs);
	readln;
END.