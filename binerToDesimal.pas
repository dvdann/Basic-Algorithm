program binerTodesimal;
var
	sisa:longint;
	biner,p:longint;
	desimal:longint=0;
	f:textfile;
Begin
	assign(f,'filein.txt');
	reset(f);
	readln(f,biner);
	p:=1;
	repeat
		sisa:=biner mod 10;
		biner:=biner div 10;
		desimal:=desimal+sisa*p;
		p:=p*2;
	until biner=0;
	assign(f,'fileout.txt');
	reset(f);
	rewrite(f);
	write(f,'Bilangan desimalnya : ');
	write(f,desimal);
	close(f);
End.