program plus_minus;
uses crt;
var
    x:array[0..999] of real;
    n,i:integer;
    data_p,data_m,data_null:real;
begin
	data_m:=0;
	data_p:=0;
	data_null:=0;
    readln(n);
    for i:=1 to n do
    begin
        read(x[i]);
        if x[i] > 0 then
            data_p:=data_p+1
        else if x[i] < 0 then
            data_m:=data_m+1
        else
            data_null:=data_null+1;
    end;
    writeln((data_p/n):1:6);
    writeln((data_m/n):1:6);
    writeln((data_null/n):1:6);
	readkey;
end.