program timeConvertion;
type time=string[10];
type convertTime=string[8];
var
	t:time;
	ct:convertTime;
	ampm:string;
	hh:string;
	hour:integer;
	error:integer;
Begin
	readln(t);
	ampm:=t[9]+t[10];
	hh:=t[1]+t[2];
	ct:=t[3]+t[4]+t[5]+t[6]+t[7]+t[8];
	val(hh,hour,error);
	if error = 0 then
	begin
		// Setting jadi 0 didepan hournya
		if (ampm = 'PM') and (hour < 12) then
			writeln(hour+12,ct)
		else if (ampm = 'AM') and (hour = 12) then
			writeln('0',hour-hour,ct)
		else if (ampm = 'PM') and (hour = 12) then
			writeln(hour,ct)
	else
	begin
		ct:=t;
		writeln(ct);
	end;
	end;
	readln;
End.