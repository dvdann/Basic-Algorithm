Program main;	
var	
	x:integer;
	
procedure isConsecutive(x:integer);
var
	j:integer=10;	
	temp:array[0..99] of integer;
	idx:integer=-1;
	i:integer;
	isCons:boolean=true;
begin
	if (x > 9) then
	begin
		while (x > 0) do
		begin
			idx:=idx+1;
			temp[idx]:=x mod j;			
			x:=x div j;									
		end;
		for i:=0 to idx-1 do		
		begin			
			//OPERASI +1 dan -1
			if (((temp[i]+1) <> temp[i+1]) and ((temp[i]-1) <> temp[i+1])) then
				isCons:=false;				
		end;
		if (isCons) then
			writeln('Consecutive')
		else
			writeln('Not Consecutive');
	end;
end;

procedure mainConsecutive(x:integer);	
begin	
	while (x <> 0) do
	begin
		isConsecutive(x);
		readln(x);
	end;
end;

Begin
	readln(x);
	mainConsecutive(x);
	readln;
End.