program data_nilai_mhs;

uses crt;
type mhs = record
     nama : string;
	 nim : string;
	 matkul : string;
     nilai : longint;
	 grade : string;
     jk: char;
end;

dtmhs = array of mhs;

var
    x:dtmhs;
    i,a  :integer;
    pilih,n:integer;
    urutdata: char;
	
//-------------------------------------------------------------------------------------------------------------
	
procedure welcome();
        begin
        clrscr;
		writeln('  =====================================================');
		writeln('||     SELAMAT DATANG PADA PROGRAM NILAI MAHASISWA     ||');
		writeln('||           TEKAN APAPUN UNTUK MELANJUTKAN            ||');
		writeln('||                KEDALAM PROGRAM KAMI                 ||');
                writeln('  =====================================================');
		readln;
	end;

	
procedure input;
var
        jumlah : integer;
begin
			
			  writeln(' ');
			  writeln(' MASUKKAN JUMLAH MAHASISWA ');
			  readln(jumlah);
			  writeln(' ----------------------------- ');
			  for i:=1 to jumlah do
			  begin
			  clrscr;
			  n:=length(x);
			  setLength(x,n+1);
				 begin
					 writeln(' ------------------- ');
					 write  (' Nama             : '); readln (x[n].nama);
					 write  (' NIM              : '); readln (x[n].nim);
					
					 write  (' Nilai            : '); readln (x[n].nilai);
							if (x[n].nilai>=35) and (x[n].nilai<44) then
							begin
									x[n].grade:='D'
							end
							else if (x[n].nilai>=45) and (x[n].nilai<54) then
							begin
									x[n].grade:='D+'
							end
							else if (x[n].nilai>=55) and (x[n].nilai<59) then
							begin
									x[n].grade:='C'
							end
							else if (x[n].nilai>=60) and (x[n].nilai<64) then
							begin
									x[n].grade:='C+'
							end
							else if (x[n].nilai>=65) and (x[n].nilai<74) then
							begin
									x[n].grade:='B'
							end
							else if (x[n].nilai>=75) and (x[n].nilai<79) then
							begin
									x[n].grade:='B+'
							end
							else if ( (x[n].nilai>=80) and (x[n].nilai<101) ) then
							begin
								x[n].grade:='A'
							end
												
							else
							begin
								x[n].grade:='E';
							end;
					 write  (' Mata Kuliah      : '); readln (x[n].matkul);
					 repeat
					 write  (' Jenis Kelamin [l/p]   : ');
					 readln (x[n].jk);
					 x[n].jk:=upcase(x[n].jk);
					 until (x[n].jk='L') or (x[n].jk='P');
					
			
		
					
					 writeln;
					 readln;
					 end;
				 end;
end;

function gender(x:char):string;
	begin
		case x of
			'L': gender:='Laki-Laki';
			'P': gender:='Perempuan';
		end;{End Case}
	end;

procedure output;
begin
	clrscr;
  writeln('|========================================================================================|');
  writeln('|                           DATA NILAI MAHASISWA                                         |');
  writeln('|========================================================================================|');
  writeln('|NO.|  NAMA MAHASISWA  |     NIM     |   MATKUL   |   NILAI   |   GRADE  |      JK       |');
  writeln('|----------------------------------------------------------------------------------------|');
	for i:=0 to length(x)-1 do
		begin
		with x[i] do
		begin
			gotoxy(3,i+6); writeln(i+1);
			gotoxy(9,i+6); writeln(x[i].nama);
			gotoxy(26,i+6);writeln(x[i].nim);
			gotoxy(43,i+6);writeln(x[i].matkul);
			gotoxy(56,i+6);writeln(x[i].nilai);
			gotoxy(66,i+6);writeln(x[i].grade);
			gotoxy(77,i+6);writeln(gender(x[i].jk));
			writeln;
		end;
	end;
	readln;
end;

procedure edit_data();
	var {Kamus Lokal}
		pilihan:integer;
		p,edit,update:char;
		temp:mhs;
	begin
		output;
		writeln('Nomor data yang akan di edit      ');
        readln(pilihan);
		pilihan:= pilihan-1;
		clrscr;
		
			  writeln('|========================================================================================|');
			  writeln('|                           DATA NILAI MAHASISWA                                         |');
			  writeln('|========================================================================================|');
			  writeln('|NO.|  NAMA MAHASISWA  |     NIM     |   MATKUL   |   NILAI   |   GRADE  |      JK       |');
			  writeln('|----------------------------------------------------------------------------------------|');
			gotoxy(3,i+6); writeln(i+1);
			gotoxy(9,i+6); writeln(x[pilihan].nama);
			gotoxy(26,i+6);writeln(x[pilihan].nim);
			gotoxy(43,i+6);writeln(x[pilihan].matkul);
			gotoxy(56,i+6);writeln(x[pilihan].nilai);
			gotoxy(66,i+6);writeln(x[pilihan].grade);
			gotoxy(77,i+6);writeln(x[pilihan].jk);
			writeln;
		
		repeat
			
					write  (' Nama             : '); readln (temp.nama);
					write  (' NIM              : '); readln (temp.nim);
					
					write  (' Nilai            : '); readln (temp.nilai);
					if (temp.nilai>=35) and (temp.nilai<44) then
					begin
							temp.grade:='D'
					end
					else if (temp.nilai>=45) and (temp.nilai<54) then
					begin
							temp.grade:='D+'
					end
					else if (temp.nilai>=55) and (temp.nilai<59) then
					begin
							temp.grade:='C'
					end
					else if (temp.nilai>=60) and (temp.nilai<64) then
					begin
							temp.grade:='C+'
					end
					else if (temp.nilai>=65) and (temp.nilai<74) then
					begin
							temp.grade:='B'
					end
					else if (temp.nilai>=75) and (temp.nilai<79) then
					begin
							temp.grade:='B+'
					end
					else if ( (temp.nilai>=80) and (temp.nilai<101) ) then
					begin
						temp.grade:='A'
                    end
										
					else
					begin
						temp.grade:='E';
					end;
					
					 write  (' Mata Kuliah      : '); readln (temp.matkul);
					 write  (' Jenis Kelamin    : '); readln (temp.jk);
					 writeln;
					 readln;
					

			write('Apakah anda yakin dengan inputan anda? [Y/N]');
			readln(p);
		until (p='Y') or (p='y');
			x[pilihan]:=temp;
	end;

procedure hapus();
	var
		i,nodata:integer;
		pil:char;
	begin
		n:=length(x);
			  output;
			  writeln('      No data yang akan di-delete:     ');
			  writeln('=======================================');
		repeat
			readln(nodata);
		until(nodata>=1) and (nodata<=length(x));

		repeat
			write('Sudah yakin dengan pilihan anda? (Y/N): ');
			readln(pil);

		until (lowercase(pil) = 'y' ) or (lowercase(pil) = 'n');

		if (lowercase(pil) = 'y') then
		begin
			i:=nodata-1;
			while(i<n-1) do
			begin
				if nodata-1<>n-1 then
					x[i]:=x[i+1];
				i:=i+1;
			end;
			setlength(x,n-1);
		end;
	end;

	procedure sortir();
	var
		i,sort,l,k:integer;
		temp:mhs;
		typesort,urutdata:char;
	begin
		  writeln('|========================================================================================|');
		  writeln('|                           DATA NILAI MAHASISWA                                         |');
		  writeln('|========================================================================================|');
		  writeln('|NO.|  NAMA MAHASISWA  |     NIM     |   MATKUL   |   NILAI   |   GRADE  |      JK       |');
		  writeln('|----------------------------------------------------------------------------------------|');
		l:=length(x);
		for sort:=0 to l-2 do
		begin
		k:=sort;
			for i:=sort+1 to l-1 do
			begin
				if (x[i].nilai > x[k].nilai) then
				k:=i;
			end;{End For}
		temp:=x[sort];
		x[sort]:=x[k];
		x[k]:=temp;
		end;{End For}
		//tampil urut
		for i:=0 to length(x)-1 do
				begin
					gotoxy(3,i+6); writeln(i+1);
					gotoxy(9,i+6); writeln(x[i].nama);
					gotoxy(26,i+6);writeln(x[i].nim);
					gotoxy(43,i+6);writeln(x[i].matkul);
					gotoxy(56,i+6);writeln(x[i].nilai);
					gotoxy(66,i+6);writeln(x[i].grade);
					gotoxy(77,i+6);writeln(x[i].jk);
			writeln;
				end;
				
		write('Tekan [Enter] untuk kembali');
		readln;
	end;
	
procedure search();
	var
		q:char;
		i,cari:integer;
		cnama:string;
		flag:boolean;
	begin
		writeln('=======================================');
		writeln('===========Pencarian Nama==============');
		writeln('=======================================');
				write('Masukkan Nama: ');
				readln(cnama);
				flag:=false;
				for i:=0 to length(x)-1 do
				begin
					if (lowercase(x[i].nama)=lowercase(cnama)) then
					begin
						cari:=i;
						flag:=True;
					end;
				end;
				if flag = True then
				begin
						clrscr;
						  writeln('|========================================================================================|');
						  writeln('|                           DATA NILAI MAHASISWA                                         |');
						  writeln('|========================================================================================|');
						  writeln('|NO.|  NAMA MAHASISWA  |     NIM     |   MATKUL   |   NILAI   |   GRADE  |      JK       |');
						  writeln('|----------------------------------------------------------------------------------------|');
						  writeln('');
						  writeln('');
						gotoxy(3,6); writeln(i+1);
						gotoxy(9,6); writeln(x[cari].nama);
						gotoxy(26,6);writeln(x[cari].nim);
						gotoxy(43,6);writeln(x[cari].matkul);
						gotoxy(56,6);writeln(x[cari].nilai);
						gotoxy(66,6);writeln(x[cari].grade);
						gotoxy(77,6);writeln(x[cari].jk);
			writeln;
				end;

				if flag = false then
					begin
					writeln('Maaf data tidak ditemukan');
					end;
		write('Tekan [Enter] untuk kembali');
		readln;
	end;	
	
	
//------------------------------------------------------------------------------------------------------------------------------- program
Begin
  clrscr;
  welcome;
  repeat;
	clrscr;
    writeln('=========================');
	writeln('      MENU PROGRAM       ');
	writeln('=========================');
	writeln('* 1. Input Data         =');
	writeln('* 2. Lihat data         =');
	writeln('* 3. edit data          =');
	writeln('* 4. delete data        =');
	writeln('* 5. Search data        =');
	writeln('* 0. Exit               =');
	writeln('=========================');
        writeln('Masukkan Pilihan: ');
                readln(pilih);
                case pilih of
                        1: begin
								clrscr;
                                input;
                                end;
                        2: begin
                                clrscr;
                                output;
								writeln('Apakah anda ingin melakukan pengurutan data ? [y/n]');
								readln(urutdata);
								if urutdata='y' then
								begin
									clrscr;
									sortir();
								end
								else
									readln;
							end;
							
						3: begin
                                clrscr;
                                edit_data();
                           end;
						
						4: begin
                                clrscr;
                                hapus;
                           end;
						
						5: begin
                                clrscr;
								search()
							end;
  end;
  until (pilih=0);
End.
