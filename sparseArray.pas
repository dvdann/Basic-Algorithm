program SparseArray;
var
	i,n,j:integer; //looping
	str:array[1..9999] of string[20];
	cStr:array[1..9999] of string;
	savenum:array[1..999] of integer;
	iMark,nn:integer;
	eCount:integer=0;
	
procedure input;
begin
	readln(n);
	nn:=n;
	for i:=1 to n do
	begin
		readln(str[i]);
	end;
end;

procedure compare;
begin
	for i:=1 to n do
		for j:=1 to n do
			if (str[i]=str[j]) then
				savenum[i]:=savenum[i]+1;
end;

procedure process;
begin
	readln(n);
	for j:=1 to n do
	begin
		readln(cStr[j]);
		for i:=1 to nn do
		begin
			if (cStr[j]=str[i]) then
			begin
				iMark:=i;
				eCount:=eCount+1;
			end;
		end;
		if eCount > 0 then
			writeln(savenum[iMark])
		else
			writeln(eCount);
		eCount:=0;
	end;
end;
	
begin
	input;
	compare;
	process;
end.