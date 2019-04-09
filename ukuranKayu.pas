program lima_kayu;
var
	kayu:array[1..5] of integer;
	i:integer;
begin
	for i:=1 to 5 do
		begin
			write('Ukuran kayu ',i,' : ');
			readln(kayu[i]);	
		end;
		if (kayu[5] > kayu[4]) and (kayu[5] > kayu[3]) and (kayu[5] > kayu[2]) and (kayu[5] > kayu[1]) then
			writeln('Ukuran kayu 5 terbesar')
		else if (kayu[4] > kayu[5]) and (kayu[4] > kayu[3]) and (kayu[4] > kayu[2]) and (kayu[4] > kayu[1]) then
			writeln('Ukuran kayu 4 terbesar')
		else if (kayu[3] > kayu[5]) and (kayu[3] > kayu[4]) and (kayu[3] > kayu[2]) and (kayu[3] > kayu[1]) then
			writeln('Ukuran kayu 3 terbesar')
		else if (kayu[2] > kayu[5]) and (kayu[2] > kayu[4]) and (kayu[2] > kayu[3]) and (kayu[2] > kayu[1]) then
			writeln('Ukuran kayu 2 terbesar')
		else //kayu[1] > kayu[5] and kayu[1] > kayu[4] and kayu[1] > kayu[3] and kayu[1] > kayu[2] then
			writeln('Ukuran kayu 1 terbesar');
	readln;
end.