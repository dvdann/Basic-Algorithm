program exp;
var
	s:string;
	ss:array[1..3] of string;
begin
	s:='12PM';
	ss[1]:=s[3]; //mengambil huruf ke 3, lalu diinputkan ke ss-1
	ss[2]:=s[4]; //mengambil huruf ke 4, lalu diinputkan ke ss-2
	writeln(ss[1],ss[2]);
	if (ss[1]+ss[2]) = 'PM' then
		writeln('Done!')
	else
		writeln('Nope!');
	readln;
end.