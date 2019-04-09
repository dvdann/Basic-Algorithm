program luas_persegi_panjang;
uses crt;
var
	panjang,lebar,luas:integer;
begin
   clrscr;
   write('Masukkan Panjang: ');readln(panjang);
   write('Masukkan Lebar: ');readln(lebar);
   luas:=panjang*lebar;
   writeln('Luas Persegi Panjang adalah: ',luas,' meter persegi.');
   readln;
end.