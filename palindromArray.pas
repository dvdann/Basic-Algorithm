PROGRAM SoalArray;
uses crt;
const nMax = 100;
type tabArray = array [1..nMax] of string;
VAR
	dataNama:tabArray;
	n,i:integer;
	//teks:string;
	
procedure checkPalindrom(kata:string);
var
	i:integer = 1;
	stack:array [1..nMax] of char;
	top:integer = 0;
	numS:integer;	
	isGenap:boolean;
	
begin
	numS:=length(kata);
	//Cek ganjil/genap, karena perilaku palindrom untuk
	//jumlah kata yang ganjil dan genap berbeda perilaku
	if (numS mod 2 = 0) then
		isGenap:=true
	else
		isGenap:=false;		
	for i:=1 to numS do
	begin	
		if (top = 0) then		
		begin
			top:=top+1;
			stack[top]:=kata[i]			
		end
		else if ((top <> 0) and (kata[i] = stack[top])) then
			top:=top-1
		else if ((isGenap = false) and (i = ((numS div 2)+1))) then
			//none, bagian tengah tidak dibaca
		else
			begin
				top:=top+1;
				stack[top]:=kata[i];
			end;		
	end;
	//Kesimpulan, jika didalam array pengecek palindrom kosong
	//maka kata tersebut palindrom
	if (top = 0) then
		writeln('Kata ',kata,' adalah palindrom')
	else
		writeln('Kata ',kata,' adalah bukan palindrom');
end;

procedure isiArray(var tabel:tabArray; var m:integer);
begin
	for i:=1 to m do
	begin
		write('Kata ',i,' : ');
		readln(tabel[i]);		
	end;
end;

procedure printArray(tabel:tabArray;m:integer);
begin
	for i:=1 to m do
	begin		
		checkPalindrom(tabel[i]);
	end;
end;

BEGIN
	write('Banyaknya elemen = ');
	readln(n);
	isiArray(dataNama,n);	
	printArray(dataNama,n);
	readkey;
END.