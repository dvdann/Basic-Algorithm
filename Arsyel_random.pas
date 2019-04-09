Program campuran_dan_percobaan_X2_arsyel;
uses crt;
  {Program ini hanya percabaan dalam penggunaan bahasa Pascal.}
var
   nama,alamat,jenis_kelamin,password,katasandi,pilihan:string;
   ganjil,genap,umur:integer;
   angka1,angka2,hasil:real;
   symbol:char;
 begin
 CLRSCR;
 {nama:=('Ahmad Arsyel');}
 alamat:='Synalaya City';
 jenis_kelamin:='Pria';
 ganjil:=1;
 genap:=2;
 umur:=15;
BEGIN {setting untuk keamanan}
  password:='zzz';
  write('Tulis Password untuk memasuki hasil! ');readln(katasandi);
  if password=katasandi then {syntax keamanan}
  begin
  write('Tuliskan nama Anda: ');readln(nama);
  writeln;
 gotoxy(25,3);writeln('----AWALAN----');
 write('Nama saya ');writeln(nama); {biodata-nya}
 write('Saya tinggal di ');writeln(alamat);
 writeln('Umur saya ',umur,' tahun');
 write('Jenis kelamin saya ');writeln(jenis_kelamin);
  writeln;
  begin
    write('Tampilkan bilangan (ganjil/genap): ');readln(pilihan);
  if pilihan='ganjil' then
  begin
  write('Bilangan ganjil:');
  while ganjil<=20 do {Untuk angka ganjilnya}
   begin
   readln;
   write('Angka ganjil itu ',ganjil);
   ganjil:=ganjil+2;
   end;writeln;
  end;
  if pilihan='genap' then
   begin
    Writeln('Bilangan genap:');
    while genap<=20 do
     begin
     writeln('Angka genap itu ',genap);
     genap:=genap+2;
     end;
   end;writeln;
  end;
 Writeln('>> Ini kalkulator <<');
 write('Isikan angka kesatu: ');readln(angka1);
 write('Tulis simbol kalkulasi (+-/*#): ');readln(symbol);
 write('Isikan angka kedua: ');readln(angka2);
  if (symbol='+') then
   begin
   hasil:=angka1+angka2
   end;
  if (symbol='-') then
   begin
   hasil:=angka1-angka2
   end;
  if (symbol='/') then
   begin
   hasil:=angka1/angka2
   end;
  if (symbol='*') then
   begin
   hasil:=angka1*angka2
   end;
  if (symbol='^') then {ngacay MODE}
   begin
   hasil:=angka1*angka2+100/2-angka2*25-6026
   end;
  Writeln('Hasil yang diperoleh adalah ',hasil:5:2);
 gotoxy(25,25);write('----AKHIR----');readkey;
 end;
 if password<>katasandi then {syntax gagal katasandi.}
 write('Password yang Anda masukkan salah...');readkey;
 exit;
end;
 end.