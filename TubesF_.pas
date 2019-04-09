PROGRAM DOKTER_PASIEN;
USES CRT, sysutils;
CONST
	maxdata = 99;
	mindata = 1;
	pasien_dat = 'file_pasien.dat';
	dokter_dat = 'file_dokter.dat';
	
TYPE
	pasien = record
	nama : string;
	ktp : string;
	usia : integer;
	penyakit : string;
	tipeKamar : string;
	biaya : longint;
END;	
	dokter = record
	nama :string;
	id : string;
	password : string;
END;

tipe_pasien = array [mindata..maxdata] of pasien;

VAR
	listPasien : tipe_pasien;
	_dokter : dokter;
	idxPasien : integer = 0;
	isDokter : boolean = false;	
	
procedure LoadPasien();
var
	fileTemp : file of pasien;
	i : byte = 1;
begin
	assign(fileTemp, pasien_dat);
	reset(fileTemp);	
	while not (EOF(fileTemp)) do
	begin
		read(fileTemp,listPasien[i]);		
		if (listPasien[i].biaya <> 0) then
			idxPasien := i;
		i := i + 1;
	end;	
	close(fileTemp);
end;

procedure LoadDokter();
var
	fileTemp : file of dokter;	
begin
	assign(fileTemp, dokter_dat);
	reset(fileTemp);	
	while not (EOF(fileTemp)) do
	begin
		read(fileTemp,_dokter);			
	end;
	if (_dokter.nama <> '') then
		isDokter := true;
	close(fileTemp);
end;

procedure LoadData();
begin
	if FileExists(pasien_dat) then
		LoadPasien();
	if FileExists(dokter_dat) then	
		LoadDokter();
end;

procedure TampilListPasien();
var
	i : byte;
begin
	for i:=1 to idxPasien do
	begin
		writeln('Pasien ke-',i);	
		writeln('  Nama : ',listPasien[i].nama);
		writeln('  No. KTP : ',listPasien[i].ktp);
		writeln('  Usia : ',listPasien[i].usia);
		writeln('  Riwayat penyakit pasien : ',listPasien[i].penyakit);		
		writeln('  Ruang inap : ',listPasien[i].tipeKamar);
	end;
	if (idxPasien = 0) then
		writeln('Belum ada data pasien');
	readln;
end;

procedure Tampil_dokter();
begin	
	writeln('Nama dokter : ',_dokter.nama);			
	writeln('ID : ',_dokter.id);
	writeln('Password : ',_dokter.password);
	writeln('Memiliki pasien sebanyak : ',idxPasien);
	readkey;
end;

procedure InsertionSortByUmur(var a : tipe_pasien);
var 
	j,i:integer;
	temp:pasien;
begin
	for i:=mindata+1 to idxPasien do
		begin
            temp:=a[i];
            j:=i;
			//Dari terkecil ke terbesar (Ascending)
            while ((j>mindata) and (temp.usia<a[j-1].usia)) do
            begin
                a[j]:=a[j-1];
                j:=j-1;
            end;
            a[j]:=temp;
    end;	
end;

procedure SaveData();
var
	filePasien : file of pasien;
	fileDokter : file of dokter;
	p : pasien;	
	
begin
	assign(filePasien, pasien_dat);
	rewrite(filePasien);
	for p in listPasien do
	begin
		write(filePasien, p);
	end;
	close(filePasien);
	
	assign(fileDokter, dokter_dat);
	rewrite(fileDokter);
	write(fileDokter, _dokter);		
	close(fileDokter);
	
	writeln('Data berhasil disimpan');	
end;

procedure ActiveFilePasien();
begin
	SaveData();
	if FileExists(pasien_dat) then
		LoadPasien();	
end;

procedure ActiveFileDokter();
begin
	SaveData();
	if FileExists(dokter_dat) then
		LoadDokter();	
end;

function CariDataPasien(listP : tipe_pasien; idxPasien : integer) : integer;
var
	temp : string;
	i : integer = 1;
	found : boolean = false;
begin
	listPasien := listP;
	write('Masukkan No. KTP : ');
	readln(temp);
	repeat
		if (temp = listPasien[i].ktp) then
			found := true
		else
			i := i + 1;
	until (i >= idxPasien) or (found);
	if (temp = listPasien[i].ktp) then
	begin		
		CariDataPasien := i;
	end
	else
	begin
		CariDataPasien := 0;
		writeln('Data tidak ditemukan');
	end;	
end;	

procedure RegisDataPasien(var listPasien:tipe_pasien; idxPasien:integer);
var
	penyakit, tipeKamar : string;
	ada : boolean = false;	
	biaya : longint = 0;
begin		
	clrscr;
	writeln('Registrasi Data pasien : ',listPasien[idxPasien].nama);
	write('Masukkan usia: ');
	readln(listPasien[idxPasien].usia);
	write('Masukkan tipe kamar (biasa/vip/tidak inap): ');
	readln(tipeKamar);
	while (not(ada)) do
	begin
		case tipeKamar of 
			'biasa': begin
				biaya := 100000;
				ada:=true;
			end;			
			'vip': begin
				biaya := 400000;
				ada:=true;
			end;
			'tidak inap': begin				
				ada:=true;
			end;
		end;
		if (ada) then		
		begin
			listPasien[idxPasien].tipeKamar := tipeKamar;			
		end
		else
		begin
			writeln('Jenis kamar tidak dikenal');			
			write('Masukkan tipe kamar (biasa/vip/tidak inap): ');
			readln(tipeKamar);
		end;
	end;
	ada := false;
	
	write('Masukkan penyakit yang diderita (flu/diare/kanker): ');
	readln(penyakit);
	while (not(ada)) do
	begin
		case penyakit of
			'flu': begin
				biaya := biaya + 15000;
				ada:=true;				
			end;
			'diare': begin			
				biaya := biaya + 20000;
				ada:=true;				
			end;
			'kanker': begin
				biaya := biaya + 2000000;
				ada:=true;				
			end;
		end;
		if (ada) then
		begin
			listPasien[idxPasien].penyakit := penyakit;
			listPasien[idxPasien].biaya := biaya;			
		end
		else
		begin
			writeln('Jenis penyakit tidak dikenal');			
			write('Masukkan penyakit yang diderita (flu/diare/kanker): ');
			readln(penyakit);
		end;
	end;	
	ActiveFilePasien();	
	writeln;
	writeln('Total biaya RS : ', listPasien[idxPasien].biaya);
end;

procedure InputDataPasien(var listPasien:tipe_pasien; var idxPasien:integer);
begin
	if (idxPasien <= maxdata) then
	begin
		idxPasien := idxPasien + 1;
		write('Masukkan nama: ');
		readln(listPasien[idxPasien].nama);
		write('Masukkan no. KTP: ');
		readln(listPasien[idxPasien].ktp);				
		RegisDataPasien(listPasien, idxPasien);		
	end
	else
	begin
		writeln('Data penuh');		
	end;	
	readkey;
end;

procedure InputDataDokter(var _dokter:dokter; var isDokter:boolean);
begin	
	isDokter := true;
	clrscr;
	writeln('Data dokter baru');
	write('Masukkan ID: ');
	readln(_dokter.id);		
	write('Masukkan password : ');
	readln(_dokter.password);
	write('Masukkan nama: ');
	readln(_dokter.nama);	
	ActiveFileDokter();
end;

procedure TampilMenu();
begin
	clrscr;
	writeln('Menu Utama');
	writeln('==========');
	writeln('1) Admin/Dokter');
	writeln('2) Pasien');
	writeln('0) Exit');
	writeln('==========');
	write('Masukkan pilihan : ');
end;

procedure TampilMenuPasien();
var
	pilihan : string = '';	
	temp : integer;
begin
	while (pilihan <> '0') do
	begin
		clrscr;
		writeln('Menu Pasien');
		writeln('==========');
		writeln('1) Login');
		writeln('2) Daftar');
		writeln('0) Kembali');
		writeln('==========');
		write('Masukkan pilihan : ');
		readln(pilihan);	
		case pilihan of 
			'1': begin
				temp := CariDataPasien(listPasien, idxPasien);
				if ( temp <> 0) then
				begin
					clrscr;
					writeln('Nama : ',listPasien[temp].nama);
					writeln('Sakit : ',listPasien[temp].penyakit);
					writeln('Tempat inap : ',listPasien[temp].tipeKamar);
					writeln('Total biaya : ',listPasien[temp].biaya);
				end;
				readkey;			
			end;
			'2': begin
				InputDataPasien(listPasien, idxPasien);				
			end;
		end;
	end;
end;

procedure TampilMenuDokter();
var
	pilihan : string = '';
	id, pass, decision : string;
	temp, i : integer;	
begin
	clrscr;
	writeln('LOGIN Dokter');
	write('ID : ');
	readln(id);
	write('PASSWORD : ');
	readln(pass);
	if (id <> _dokter.id) or (pass <> _dokter.password) then
	begin
		writeln('ID atau password salah');
		pilihan := '0';		
	end;
	while (pilihan <> '0') do
	begin
		clrscr;
		writeln('Menu Dokter');
		writeln('==========');
		writeln('1) Tampilkan seluruh pasien');	
		writeln('2) Cari pasien');
		writeln('3) Susun data pasien (umur)');
		writeln('4) Data dokter');
		writeln('5) Delete data pasien');
		writeln('0) LOGOUT');
		writeln('==========');
		write('Masukkan pilihan : ');
		readln(pilihan);			
		case pilihan of 
			'1': begin
				clrscr;
				TampilListPasien();
			end;
			'2': begin				
				temp := CariDataPasien(listPasien, idxPasien);
				if ( temp <> 0) then
				begin
					clrscr;
					writeln('No. KTP : ',listPasien[temp].ktp);
					writeln('Nama : ',listPasien[temp].nama);
					writeln('Usia : ',listPasien[temp].usia);
					writeln('Sakit : ',listPasien[temp].penyakit);
					writeln('Tempat inap : ',listPasien[temp].tipeKamar);					
				end;
				readkey;
			end;
			'3': begin
				clrscr;
				InsertionSortByUmur(listPasien);				
				writeln('Data telah disusun berdasarkan umur');
				write('Terapkan untuk penyimpanan data (y/t)? ');
				readln(decision);
				if (decision = 'y') or (decision = 'Y') then
				begin
					ActiveFilePasien();					
					readkey;
				end;
			end;
			'4': begin
				clrscr;
				Tampil_dokter();
			end;
			'5': begin
				temp := CariDataPasien(listPasien, idxPasien);
				if ( temp > 0) then
				begin
					if (temp = idxPasien) and (idxPasien = 1) then
						idxPasien := 0
					else if (temp = idxPasien) then
						idxPasien := idxPasien - 1
					else
					begin						
						for i:=temp to idxPasien-1 do
						begin
							listPasien[i]:=listPasien[i+1];
						end;
						idxPasien := idxPasien - 1;
					end;
					writeln('Data berhasil dihapus');
					write('Terapkan untuk penyimpanan data (y/t)? ');
					readln(decision);
					if (decision = 'y') or (decision = 'Y') then
					begin
						listPasien[idxPasien+1].biaya:=0;
						ActiveFilePasien();					
						readkey;
					end;
				end;
			end;
		end;		
	end;
end;

procedure Menu();
var
	pilihan : string = '';	
begin
	while (pilihan <> '0') do
	begin		
		TampilMenu();
		readln(pilihan);
		case pilihan of
			'1': begin
				if (isDokter) then
					TampilMenuDokter()
				else if (not(isDokter)) then
					InputDataDokter(_dokter, isDokter);
			end;
			'2': begin
				if (isDokter) then
					TampilMenuPasien()
				else if (not(isDokter)) then
					writeln('Input data dokter dahulu');
			end;
			'0': begin
			writeln('Program selesai...');
			end;
		end;		
		readkey;
	end;
end;	

BEGIN
	clrscr;
	LoadData();
	Menu();	
END.