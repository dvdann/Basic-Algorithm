Program main;
var
	n:integer;
function isConsecutive(x:integer):boolean;
var
	temp1,temp2:integer;
begin
	if (x > 9) then
	begin		
		while (x > 0) do
		begin
			temp1:= x mod 10;
			if (x div 10 > 0) then
			begin
				x:= x div 10;
				temp2:= x mod 10;
				if (((temp1+1) <> temp2) and ((temp1-1) <> temp2)) then
					isConsecutive:=false;
			end
			else x:=0;
		end;		
	end
	else isConsecutive:=false;
end;	
Begin
	readln(n);
	writeln(isConsecutive(n));
	readln;
End.