PROGRAM make_document;
uses sysutils;
var
	f:textfile;
Begin
	assign(f,'filein.txt');
	rewrite(f);
	writeln(f,'Hello world!');
	writeln(f,'Write in pascal');
	close(f);
End.