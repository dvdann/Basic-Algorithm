program data_nilai;
uses crt;
const
	n=60;
type
	dmhs=record
		nim,nama:string;
		project,mid,fin,wscore:real;
end;
type
	tmhs=array [1..n] of dmhs;
var
	i:integer;
	mhs:tmhs;
	nmhs:integer;
	
procedure isidata(var mhs:tmhs;nmhs:integer);
begin
	for i:=1 to nmhs do
	begin
		readln(mhs[i].nim);
		readln(mhs[i].nama);
		readln(mhs[i].project);
		readln(mhs[i].mid);
		readln(mhs[i].fin);
	end;
end;

procedure hitung_wscore(var mhs:tmhs;nmhs:integer);
var
	tubes,uts,uas:real;
begin
	for i:=1 to nmhs do
	begin
		tubes:=mhs[i].project*(0.3);
		uts:=mhs[i].mid*(0.35);
		uas:=mhs[i].fin*(0.35);
		mhs[i].wscore:=tubes+uas+uts;
		writeln('mahasiswa no. ',i,' memiliki wscore : ',mhs[i].wscore:0:2);
	end;
end;
	
BEGIN
	write('Input berapa data? (Max 60) : ');
	readln(nmhs);
	isidata(mhs,nmhs);
	hitung_wscore(mhs,nmhs);
	readln;
END.