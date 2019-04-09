program exp0;
{Membaca file lalu ditampilkan ke pascal}
var
	cc:char;
	pitaChar:file of char;
	
procedure start;
begin
	assign(pitaChar,'filein.txt');
	reset(pitaChar);
	read(pitaChar,cc);
end;

procedure ADV;
begin
	read(pitaChar,cc);
end;

function EOP:boolean;
begin
	if EOF(pitaChar) then
		EOP:=true
	else EOP:=false;
end;

Begin
	start;
	write(cc);
	while (not EOP) do
	begin
		ADV;
		write(cc);
	end;
	readln;
End.