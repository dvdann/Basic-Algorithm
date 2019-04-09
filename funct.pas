{program functionX;
var
	x,y:integer;
function test(x:integer):integer;
begin
	test:=2*x+1;
end;
function test2(x,y:integer):integer;
begin
	test2:=2*x+y;
end;
//Main Program
begin
	readln(x);
	readln(y);
	writeln(test(x));
	writeln(test2(x,y));
	readln;
end.}
program functionXZ;
var
	x:string;
function tulis():string;
begin
	write('Tulis nama > ');
	readln(x);
	writeln('Nama kamu ',x);
	write('Tulis alamat > ');
	readln(x);
	writeln('Alamat kamu ',x);
	tulis:='';
end;
begin
	tulis();
	writeln('Selesai.');
	readln;
end.