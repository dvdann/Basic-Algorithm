program find_digit;
//uses crt;
var
	n,j,i:longint;
	as:array of string;
	ai:array of integer;
	tmp:string;
	count:longint=0;
	tmp_i,error:longint;

Begin
//	clrscr;
	readln(n); //Test cases
	setlength(as,n+1);
	setlength(ai,n+1);
	for i:=1 to n do
	begin	
		readln(as[i]);
		val(as[i],ai[i],error); //convert
		if error=0 then
		begin
			for j:=1 to length(as[i]) do
			begin
				tmp:=as[i][j];
				val(tmp,tmp_i,error); //convert
				if error=0 then
					if (tmp_i<>0) and (ai[i] mod tmp_i = 0) then
						count:=count+1;
			end;
			writeln(count); //print output
			count:=0;
		end;
	end;
//	write('Program end..');
//	readkey;
End.
