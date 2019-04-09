program klasifikasi_string;
const testcase=7;
var
	s:array of string;
	error:integer;
	v:string;
	a:string;
	tmp,i,j:integer;
	f:textfile;
	
Begin
	i:=0;
	assign(f,'filein.txt');
	reset(f);
	setlength(s,testcase+1);
	while not(EOF(f)) do
	begin
		i:=i+1;
		readln(f,s[i]);
	end;
	assign(f,'fileout.txt');
	rewrite(f);
	for j:=1 to i do
	begin
		val(s[j],tmp,error);
		if error <> 0 then
		begin
			v:=s[j][1];
			if ((v='a') or (v='i') or (v='u') or (v='e') or (v='o')) then
				writeln(f,'Vokal: ',s[j])
			else
				writeln(f,'Konsonan: ',s[j]);
		end
		else
		begin
			a:=s[i];
			writeln(f,'Angka: ',tmp);
		end;
	end;
	close(f);
End.