Program Bioskop;
{$IFDEF FPC}{$MODE OBJFPC}{H$H+}{$ENDIF}
// TODO
// 1. inputMember
// Sorting
Uses crt, sysutils, dateutils;

Const 
  KELAS_NORMAL = 1;
  KELAS_3D     = 2;
  KELAS_4D     = 3;
  FILE_FILM    = 'list_film.dat';
  FILE_MEMBER  = 'list_member.dat';
  FILE_THEATER = 'list_theater.dat';

Type 
  Member = Record
    nama : string;
    usia : integer;
    NoKTP: integer;
  End;

  Film = Record
    judul : string
  End;

  Jadwal = Record
    film   : Film;
    waktu  : TDateTime;
    durasi : integer;
    booking : Array[1..40] Of string;
  End;

  Jadwals = Array[1..7] Of Jadwal;

  Theater = Record
    nama      : string;
    fasilitas : integer;
    listJadwal: jadwals;
  End;

  Films   = Array[1..5] Of Film;
  Members  = Array[1..20] Of Member;
  Theaters = Array[1..3] Of Theater;

Var 
  listFilm    : Films;
  listMember  : Members;
  listTheater : Theaters;
  hargaTheater: array[1..3] Of integer = (50000, 100000, 150000);
  n           : integer;
  indexKosongMember: integer = 1;
  indexKosongFilm: integer = 1;

Procedure loadFilm();

Var 
  fileTemp: file Of Film;
  i: Byte;
Begin
  i := 1;
  assign(fileTemp, FILE_FILM);
  Reset(fileTemp);
  While Not (EoF(fileTemp)) Do
    Begin
      Read(fileTemp, listFilm[i]);
      i := i+1;
    End;
  Close(fileTemp);
End;

Procedure loadMember();

Var 
  fileTemp: file Of Member;
  i: Byte;
Begin
  i := 1;
  assign(fileTemp, FILE_MEMBER);
  Reset(fileTemp);
  While Not (EoF(fileTemp)) Do
    Begin
      Read(fileTemp, listMember[i]);
      i := i+1;
    End;
  Close(fileTemp);
End;

Procedure loadTheater();

Var 
  fileTemp: file Of Theater;
  i: Byte;
Begin
  i := 1;
  assign(fileTemp, FILE_THEATER);
  Reset(fileTemp);
  While Not (EoF(fileTemp)) Do
    Begin
      Read(fileTemp, listTheater[i]);
      i := i+1;
    End;
  Close(fileTemp);
End;

Procedure mulai();
Begin
  writeln('==============================');
  writeln('=       SELAMAT DATANG       =');
  writeln('==============================');
  write('Tekan enter untuk melanjutkan...');
  readln;

  If FileExists(FILE_FILM) Then
    loadFilm;

  If FileExists(FILE_MEMBER) Then
    loadMember;

  If FileExists(FILE_THEATER) Then
    loadTheater;

  clrscr;
End;

Procedure tampilListFilm();

Var 
  i: integer;
Begin
  For i:=1 To length(listFilm) Do
    Begin
      If listfilm[i].judul <> '' Then
        writeln(listfilm[i].judul);
    End;
  readln;
End;

Procedure tampilListTheater();

Var 
  j: integer;
  nama: string;
  i: integer;
Begin
  For i:=1 To length(listTheater) Do
    Begin
      If listTheater[i].nama <> '' Then
        Begin
          writeln('=========================================');
          write('nama: ');
          writeln(listTheater[i].nama);
          write('fasilitas: ');
          writeln(listTheater[i].fasilitas);
          For j:=1 To length(listTheater[i].listJadwal) Do
            Begin
              writeln('        - Jadwal');
              If listTheater[i].listJadwal[j] .film.judul <> '' Then
                Begin
                  write('            film: ');
                  writeln(listTheater[i].listJadwal[j].film.judul);
                  write('            Waktu:');
                  writeln(FormatDateTime('dd-mm-yyy hh', listTheater[i].listJadwal[j].waktu));
                  writeln('          Pemesan: ');
                  For nama In listTheater[i].listJadwal[j].booking Do
                    Begin
                      If nama <> '' Then
                        Begin
                          write('                      - ');
                          writeln(nama);
                        End;
                    End;
                End;
            End;
        End;
    End;
  readln;
End;

function sortMemberByNama(): Members;
var
	i: integer;
	newn: integer;
	n: integer;
	tempMember: Member;
	sortedMembers: Members;

begin
	n := length(listMember);
	sortedMembers := listMember;
	repeat
		newn := 0;
		for i := 2 to n  do
			begin
				if sortedMembers[ i - 1 ].nama[1] > sortedMembers[ i ].nama[1] then
					begin
						tempMember := sortedMembers[ i - 1 ];
						sortedMembers[ i - 1 ] := sortedMembers[ i ];
						sortedMembers[ i ] := tempMember;
						newn := i ;
					end;
			end ;
		n := newn;
	until n = 0;
	sortMemberByNama := sortedMembers;
end;

function sortbynama(pmember:members): members;
var
	i,pass:integer;
	temp: member;
	sortedMembers: members;
begin
	sortedMembers := pmember;
	pass:=1;
	while pass <= length(pmember) do
	begin
		i:=1;
		while i <= n-pass do
		begin
			if sortedMembers[i].nama > sortedMembers[i+1].nama then
			begin
				temp:=sortedMembers[i];
				sortedMembers[i]:= sortedMembers[i+1];
				sortedMembers[i+1]:=temp
			end;
			i:=i+1;
		end;
		pass:=pass+1;
	end;
	sortbynama := sortedMembers;
end;
				
function insertionsortbyumur(tabel:members): members;

Var 
  i: integer;
  j: integer;
  temp: member;
  sortedMembers: members;
  idxSisip: integer;
Begin
  sortedMembers := tabel;
  for i := 2 to length(members) do
	begin
		if sortedMembers[i+1].nama = '' then
			break;
		idxSisip := i;
		for j := i - 1 downto 1 do
		begin
			if sortedMembers[i].usia < sortedMembers[j].usia then
				idxSisip := j;
		end;
		writeln(idxSisip);
		readln;
		temp := sortedMembers[idxSisip];
		sortedMembers[idxSisip] := sortedMembers[i];
		for j := i - 1 downto idxSisip + 1 do
			sortedMembers[j+1] := sortedMembers[j];
		sortedMembers[idxSisip + 1] := temp; 
	end;
	insertionsortbyumur := sortedMembers;
End;
function selectionSortByUmur(tabel:members): members;
Var
  minIndex: integer;
  temp: member;
  sortedMembers: members;
  i:integer;
  j: integer;
Begin
  n := length(tabel);
  sortedMembers:=tabel;
  for i := 1 to n do
  begin
	temp := sortedMembers[i];
	minIndex := i;
	for j := i to n - 1 do
	begin
		if sortedMembers[j+1].nama <> '' then
			if sortedMembers[j+1].noKTP < sortedMembers[j].noKTP then
				minIndex := j+1;
	end;
	sortedMembers[i] := sortedMembers[minIndex];
	sortedMembers[minIndex] := temp;
  end;
  selectionSortByUmur:=sortedMembers;
end;

Function cariData(Var  member:members;n:integer): integer;
Var 
  temp: string;
  i: integer;
  found: boolean;

Begin
  clrscr;
  i := 1;
  member := listMember;
  write('Masukan Nama Member Yang Ingin Dicari: ');
  readln(temp);
  found := false;
  Repeat
    If (temp = member[i].nama) Then
      found := true
    Else
      i := i+1;
  Until (i >= N) Or (found=true);
  If temp = member[i].nama Then
    Begin
      writeln('=================================');
      writeln('==     DATA MEMBER KE-',i,'    ==');
      writeln('Nama : ',member[i].nama);
      writeln('Usia : ',member[i].usia);
      writeln('NoKTP: ',member[i].noKTP);
      cariData := i;
    End
  Else
    writeln('Data yang Anda Cari Tidak diTemukan');
  readln;
End;

Function cariIndexMember(nama: String): integer;

Var 
  i: integer;
  m: Member;
Begin
  i := 1;
  For m In listMember Do
    Begin
      If m.nama = nama Then
        Begin
          cariIndexMember := i;
          exit;
        End;
      i := i + 1;
    End;
  cariIndexMember := -1;
End;


Procedure EditData ( Var member:members;n:integer);

Var 
  i: integer;
  data_edit: member;
  temp: string;
  pilihan: integer;
Begin
  clrscr;
  i := 1;
  write('Masukan Nama Member Datanya Ingin di Edit : ');
  readln(temp);
  i := cariIndexMember(temp);
  writeln(i);
  readln;
  if i <= 0 then
  begin
	writeln('Data tidak di temukan');
	readln;
	exit;
  end;
	clrscr;
	writeln('========================================');
	writeln('DATA ASLI PELANGGAN KE-',i);
	writeln();
	writeln('Nama : ',listMember[i].nama);
	writeln('Usia : ',listMember[i].usia);
	writeln('noKTP: ',listMember[i].noKTP);
	writeln;
	writeln;
	writeln('==');
	writeln('DATA EDIT PELANGGAN KE-',i);
	writeln('===');
	writeln('Nama: ');
	read(data_edit.nama);
	if data_edit.nama = '' then
	begin
		writeln('nama tidak valid');
		readln;
		exit;
	end;
	write('Usia: ');
	readln(data_edit.usia);
	writeln('noKTP: ',listMember[i].noKTP);
	data_edit.noKTP := listMember[i].noKTP;
	writeln;
	writeln;
	writeln('Apakah anda yakin mengedit data tersebut ? ');
	writeln;
	writeln(' 1.YA ');
	WRITELN(' 2.TIDAK ');
	writeln;
	write   ('Masukan Pilihan Anda : ');
	readln(pilihan);
	If (pilihan = 1) Then
	Begin
	  listMember[i] := data_edit;
	  write(' Data berhasil diPerbarui ');
	End
	Else If (pilihan = 2) Then
		 Begin
		   writeln(' Maaf,Data tidak berhasil di Perbarui,Tekan enter untuk kembali ');
		 End;
  readln;
End;
Procedure lihatdatamember (member:members; n:integer);

Var 
  i: integer;
Begin
  clrscr;
  i := 1;
  While i <= n Do
    Begin
      writeln('===');
      writeln('       DATA PELANGGAN KE-',i);
      writeln('===');
      writeln('Nama : ',member[i].nama);
      writeln('Usia : ',member[i].usia);
      writeln('noKTP : ',member[i].noKTP);
      readln;
      i := i+1;
    End;
  n := i - 1;
  readln;
End;

Procedure tampilListMember();
Var 
  m: integer;
  pilihan: char;
  listMemberUntukDitampilkan: Members;
Begin
  listMemberUntukDitampilkan := listMember;
  clrscr;
  writeln('=======================================');
  writeln('==1) Berdasarkan Waktu Daftar         =');
  writeln('==2) Berdasarkan Nama (BubbleSort)    =');
  writeln('==3) Berdasarkan Umur (InsertionSort) =');
  writeln('==4) Berdasarkan Umur (SelectionSort) =');
  writeln('=======================================');
  write('Masukan Pilihan: ');
  readln(pilihan);
  listMemberUntukDitampilkan := listMember;
  If pilihan = '2' Then
    listMemberUntukDitampilkan := sortbynama(listMemberUntukDitampilkan);
  If pilihan = '3' Then
    listMemberUntukDitampilkan := insertionsortbyumur(listMember);
  If pilihan = '4' Then
    listMemberUntukDitampilkan := selectionSortByUmur(listMember);
  For m :=1 To length(listMemberUntukDitampilkan) Do
    Begin
	  If listMemberUntukDitampilkan[m].nama <> '' Then
	  begin
		write('nama : ');
		writeln(listMemberUntukDitampilkan[m].nama);
		write('usia : ');
        writeln(listMemberUntukDitampilkan[m].usia);
		write('no KTP : ');
        writeln(listMemberUntukDitampilkan[m].noKTP);
	  end;	
    End;
  readln;
End;

Procedure inputFilm(Var film:films; Var m:integer);
Begin
  If m <= length(film) Then
    Begin
      write('Masukan Judul Film: ');
      readln(film[m].judul);
      write(film[m].judul);
      writeln(' telah di tambahkan');
      readln;
	  m:=m+1;
    End
  Else
    Begin
      writeln('Film telah penuh');
      readln;
    End;
  exit;
End;

Procedure inputMember(Var member:members;Var i:integer);
Begin
  If i < length(listMember) Then
    Begin
      write('Masukan nama Member: ');
      readln(member[i].nama);
      write('Masukkan usia Member: ');
      readln(member[i].usia);
      write('masukan noKTP Member: ');
      readln(member[i].noKTP);
      write(member[i].nama);
      writeln(' telah di tambahkan');
      readln;
    End
  Else
    Begin
      writeln('Member telah penuh');
      readln;
    End;
  exit;
End;

Procedure inputTheater();

Var 
  theaterBaru: Theater;
  i: integer;
Begin
  i := 1;
  write('Masukan nama Theater: ');
  readln(theaterBaru.nama);
  If theaterBaru.nama = '' Then
    Begin
      writeln('Nama tidak valid!');
      writeln('Silahkan coba lagi.');
      readln;
      exit;
    End;

  writeln('Kelas Theater: ');
  writeln('1) Normal');
  writeln('2) 3d');
  writeln('3) 4d');

  write('Masukan fasilitas Theater: ');
  readln(theaterBaru.fasilitas);
  If (theaterBaru.fasilitas > 3) Or (theaterBaru.fasilitas < 1) Then
    Begin
      writeln('Kelas Fasilitas salah!');
      writeln('Silahkan coba lagi.');
      readln;
      exit;
    End;

  For i:=1 To length(listTheater) Do
    Begin
      If listTheater[i].nama = '' Then
        Begin
          listTheater[i].nama := theaterBaru.nama;
          listTheater[i].fasilitas := theaterBaru.fasilitas;
          write(theaterBaru.nama);
          writeln(' telah di tambahkan');
          readln;
          exit;
        End;
    End;
  writeln('Theater telah penuh');
  readln;
End;

Procedure simpanData();
Var 
  fileFilm: file Of Film;
  fileTheater: file Of Theater;
  fileMember: file Of Member;
  f: Film;
  t: Theater;
  m: Member;
Begin
  Assign(fileFilm, FILE_FILM);
  Rewrite(fileFilm);
  For f In listFilm Do
    Begin
      Write(fileFilm,f);
    End;

  Assign(fileTheater, FILE_THEATER);
  Rewrite(fileTheater);

  For t In listTheater Do
    Begin
      Write(fileTheater,t);
    End;

  Assign(fileMember, FILE_MEMBER);
  Rewrite(fileMember);

  For m In listMember Do
    Begin
      Write(fileMember,m);
    End;
  close(fileFilm);
  close(fileMember);
  close(fileTheater);
  writeln('Data Film, Member, Theater sudah di simpan');
  readln;
End;

Procedure tampilMenu();
Begin
  clrscr;
  writeln('=========================================');
  writeln('==              Menu Utama             ==');
  writeln('=========================================');
  writeln('==       1) Input Film                 ==');
  writeln('==       2) Input Member               ==');
  writeln('==       3) Input Theater              ==');
  writeln('==       4) List Film                  ==');
  writeln('==       5) List Member                ==');
  writeln('==       6) List Theater               ==');
  writeln('==       7) Booking                    ==');
  writeln('==       9) Simpan Data                ==');
  writeln('==       10) Cari Member               ==');
  writeln('==       11) Edit Member               ==');
  writeln('==       12) Input Jadwal Film         ==');
  writeln('==       13) Lihat Data Member         ==');
  writeln('==       14) Cari Jadwal Film          ==');
  writeln('==       15) Lihat File Dat Film       ==');
  writeln('==       16) Lihat File Dat Member     ==');
  writeln('==       17) Hapus member              ==');
  writeln('==       0) Keluar                     ==');
  writeln('=========================================');
  write('Masukan Pilihan : ');
End;

Function cariFilm(judul: String): Film;
Var 
  i: integer;
Begin
  For i:=1 To length(listFilm) Do
    Begin
      If listFilm[i].judul = judul Then
        Begin
          cariFilm := listFilm[i];
          exit;
        End;
    End;
End;

Function cariIndexTheater(nama: String): integer;
Var 
  t: integer;  
Begin
  If nama = '' Then
    Begin
      cariIndexTheater := -1;
      exit;
    End;  
  For t:=1 To length(listTheater) Do
    Begin
      If listTheater[t].nama = nama Then
        Begin
          cariIndexTheater := t;
          exit;
        End;
    End;
  cariIndexTheater := -1;
End;

Function TestJadwalTheater(waktu: TDateTime; durasi: Integer; theaterNya: Theater): boolean;
Var 
  j: integer;
  jTanggal: word;
  jBulan: word;
  jTahun: word;
  jJam: word;

  jTanggal2: word;
  jBulan2: word;
  jTahun2: word;
  jJam2: word;
  jJamTemp: word;
  jTmp: word;
  i: integer;
  k: integer;
Begin
  For j:=1 To  length(theaterNya.listJadwal) Do
    Begin
      DecodeDate(theaterNya.listJadwal[j].waktu, jTahun, jBulan, jTanggal);
      DecodeTime(theaterNya.listJadwal[j].waktu, jJam, jTmp, jTmp, jTmp);
      DecodeDate(waktu, jTahun2, jBulan2, jTanggal2);
      DecodeTime(waktu, jJam2, jTmp, jTmp, jTmp);
      If jTahun = jTahun2 Then
        Begin
          If jBulan = jBulan2 Then
            Begin
              If jTanggal = jTanggal2 Then
                Begin
                  For i := 1 To durasi Do
                    Begin
                      jJamTemp := jJam;
                      For k := 0 To theaterNya.listJadwal[j].durasi Do
                        Begin
                          If jJamTemp = jJam2 Then
                            Begin
                              TestJadwalTheater := false;
                              exit;
                            End;
                          jJamTemp := jJamTemp + 1;
                        End;
                      jJam2 := jJam2+1;
                    End;
                End;
            End;
        End;
    End;
  TestJadwalTheater := true;
  exit;
End;

Procedure inputJadwalFilm(var t:theaters);
Var 
  f: Film;
  judul: string;
  namaTheater: string;  
  durasi: integer;
  inputWaktu: string;
  waktu: TDateTime;
  jadwalbaru: Jadwal;
  i: integer;
Begin
  writeln('Input Jadwal Film');
  write('Masukan nama film: ');
  readln(judul);
  f := cariFilm(judul);
  If f.judul <> judul Then
    Begin
      writeln('Film tidak tersedia, silahkan input film terlebih dahulu');
      readln;
      exit;
    End;

  write('Masukan theater tempat film akan di putar: ');
  readln(namaTheater);
  If cariIndexTheater(namaTheater) < 0 Then
    Begin
      writeln('Theater tidak ditemukan');
      readln;
      exit;
    End;

  write('Masukan waktu dalam format "tanggal-bulan-tahun jam" contoh "20-10-2017 20" : ');
  readln(inputWaktu);
  Try
    waktu := ScanDateTime('d-m-yyyy h', inputWaktu);
  Except
    on E: EConvertError Do
          Begin
            writeln(
'Format Tanggal Salah. Masukan waktu dalam format "tanggal-bulan-tahun jam" contoh "20-10-2017 20" '
            );
            readln;
            exit;
          End;
End;

write('Masukan durasi: ');
readln(durasi);
If durasi < 1 Then
  Begin
    writeln('Durasi tidak valid');
    readln;
    exit;
  End;
If TestJadwalTheater(waktu, durasi, t[cariIndexTheater(namaTheater)]) Then
  Begin
    jadwalBaru.film := f;
    jadwalBaru.waktu := waktu;
    jadwalBaru.durasi := durasi;
    i := 1;
    While t[cariIndexTheater(namaTheater)].listJadwal[i].film.judul <> '' Do
      i := i+1;
    t[cariIndexTheater(namaTheater)].listJadwal[i] := jadwalBaru;
    writeln('Jadwal berhasil di tambahkan');
    ReadLn();
    exit;
  End;
writeln('jadwal sudah terisi, silahkan coba kembali');
readln;
End;

Function listJadwalFilm(judulFilm: String): boolean;

Var 
  t: Theater;
  j: integer;
  ketemu: Boolean = false;
Begin
  For t In listTheater Do
    Begin
      listJadwalFilm := false;
      For j:=1 To length(t.listJadwal) Do
        Begin
          If t.listJadwal[j].film.judul = judulFilm Then
            Begin
              writeln('------------------------------');
              write('Nama theater: ');
              writeln(t.nama);
              write('Waktu : ');
              writeln(FormatDateTime('dd-mm-yyyy hh', t.listJadwal[j].waktu));
              ketemu := true;
            End;
        End;
      listJadwalFilm := ketemu;
    End;
End;

Function cariIndexJadwal(theaterNya: Theater; waktu: TDateTime): integer;

Var 
  j: jadwal;
  idx: integer = 1;
Begin
  For j In theaterNya.listJadwal Do
    Begin
      If FormatDateTime('dd-mm-yy hh', j.waktu) = FormatDateTime('dd-mm-yy hh', waktu) Then
        Begin
          cariIndexJadwal := idx;
          exit;
        End;
      inc(idx);
    End;
  cariIndexJadwal := -1;
End;

Procedure booking();

Var 
  judulFilm: string;
  namaTheater: string;
  waktu: TDateTime;
  iJadwalTheater: integer;
  i: integer = 1;
  inputWaktu: string;
  namaPemesan: string;
  harga: double = 0;
  konfirmasi: string;
Begin
  write('Masukan Judul Film: ');
  readln(judulFilm);
  If Not(listJadwalFilm(judulFilm)) Then
    Begin
      write('Jadwal tidak tersedia untuk film: ');
      write(judulFilm);
      readln;
      exit;
    End;
  write('Masukan nama theater : ');
  readln(namaTheater);
  If cariIndexTheater(namaTheater) <= 0 Then
    Begin
      writeln('theater tidak di temukan');
      readln;
      exit;
    End;

  write('Masukan waktu dalam format "tanggal-bulan-tahun jam" contoh "20-10-2017 20" : ');
  readln(inputWaktu);
  Try
    waktu := ScanDateTime('d-m-yyyy h', inputWaktu);
    iJadwalTheater := cariIndexJadwal(listTheater[cariIndexTheater(namaTheater)], waktu);
    If iJadwalTheater <= 0 Then
      Begin
        writeln('Jadwal tidak di temukan');
        readln;
        exit
      End;
    While listTheater[cariIndexTheater(namaTheater)].listJadwal[iJadwalTheater].booking[i] <> '' Do
      inc(i);
    write('Masukan nama pemesan: ');
    readln(namaPemesan);
    harga := harga + hargaTheater[listTheater[cariIndexTheater(namaTheater)].fasilitas];
    If cariIndexMember(namaPemesan) > 0 Then
      harga := harga * 0.9;
    write('Biaya Pemesanan ');
    write(FloatToStr(harga));
    write('. Apakah ingin memesan? (y/t) : ');
    readln(konfirmasi);
    If konfirmasi = 'y' Then
      Begin
        listTheater[cariIndexTheater(namaTheater)].listJadwal[iJadwalTheater].booking[i] := 
                                                                                         namaPemesan
        ;
        writeln('Pemesanan berhasil');
        readln;
        exit;
      End;
    writeln('Pemesanan dibatalkan');
    readln;
  Except
    on E: EConvertError Do
          Begin
            writeln(
'Format Tanggal Salah. Masukan waktu dalam format "tanggal-bulan-tahun jam" contoh "20-10-2017 20" '
            );
            readln;
            exit;
          End;
  End;
End;

procedure cariJadwalFilm();
var
  namaFilm: string;
begin
  write('Masukan nama film yang akan di cari jadwalnya: ');
  readln(namaFilm);
  if not(listJadwalFilm(namaFilm)) then
    writeln('Jadwal Tidak ditemukan');
  readln;
end;

procedure menuHapusMember();
var
  i: integer = 1;
  noMember: integer;
begin
  for i :=1 to length(listMember) do
  begin
    if listMember[i].nama <> '' then
    begin
      write(i);
      write(') ');
      writeln(listMember[i].nama);
    end;
  end;
  writeln('=================');
  write('Masukan no member yang akan di hapus: ');
  readln(noMember);
  if(listMember[noMember].nama = '') then
  begin
    writeln('Id member tidak di temukan');
    readln;
    exit;
  end;
  for i := noMember to length(listMember) do
  begin
    if listMember[i].nama = '' then
      break;
    listMember[i] := listMember[i+1];
  end;
  write('Member dengan no ');
  write(noMember);
  writeln(' telah di hapus');
  readln
end;

procedure menuBukaFileDatFilm();
begin
  simpanData();
  If FileExists(FILE_FILM) Then
    loadFilm;
  tampilListFilm();
end;
procedure menuBukaFileDatMember();
begin
  simpanData();
  If FileExists(FILE_MEMBER) Then
    loadMember;
  tampilListMember;
end;
procedure menuBukaFileDatTheater();
begin
  simpanData();
  If FileExists(FILE_THEATER) Then
      loadTheater;
  tampilListTheater();
end;

Procedure menu();

Var 
  pilihan: string;
  i: integer = 1;
Begin
  n := 20;
  pilihan := 'x';
  While pilihan <> '0' Do
    Begin
      i := 1;
      while(listFilm[i].judul <> '') do
      begin
        i := i + 1;        
      end;
      //indexKosongFilm := i;
    
      i := 1;
      while(listMember[i].nama <> '') do
        i := i + 1;
      indexKosongMember := i;
      clrscr;
      tampilMenu();
      readln(pilihan);
    Case pilihan Of
      '1': inputFilm(listFilm, indexKosongFilm);
      '2': inputMember(listMember,indexKosongMember);
      '3': inputTheater();
      '4': tampilListFilm();
      '5': tampilListMember();
      '6': tampilListTheater();
      '7': booking();
      '9': simpanData();
      '10': cariData(listMember,n);
      '11': EditData(listMember,n);
      '12': inputJadwalFilm(listTheater);
      '13': lihatdatamember(listMember,n);
      '14': cariJadwalFilm();
      '15': menuBukaFileDatFilm();
      '16': menuBukaFileDatMember();
      '17': menuHapusMember();
    End;
  End;
End;

Begin
  clrscr;
  mulai();
  menu();
End.
