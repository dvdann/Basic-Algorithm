program kelipatan_mod10;
var
	f:textfile;
	X,Y:integer;
	sum1:integer=0;
	sum2:integer=0;
Begin
	assign(f,'filein.txt');
	reset(f);
	readln(f,X);
	sum1:=X;
	readln(f,Y);
	sum2:=Y;
	assign(f,'fileout.txt');
	rewrite(f);
	writeln(f,sum1,' ',sum2);
	repeat
		if sum1 < sum2 then
			sum1:=sum1+X
		else if sum1 > sum2 then
			sum2:=sum2+Y; 
		writeln(f,sum1,' ',sum2);
	until (sum1 = sum2);
	close(f);
End.