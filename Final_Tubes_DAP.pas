program aplikasi_penggajian;
uses crt;
type karyawan=record
	nama:string;
	id:string[4];
	gol:string;
	jk:string;
	status:string;
	anak:integer;
	maskerja:integer;
	g_total:longint;
	g_pokok:longint;
	t_anak:longint;
	t_istri:longint;
	t_maskerja:longint;
end;

var
	k:array of karyawan;
	pilih_menu:integer;
	in_dat:integer;
	del_dat:integer;
	i:integer;
	cari:string;
	upah:array of longint;
	
procedure main_program;						//MAIN MENU

	procedure update;						//UPDATE MENU
		
		procedure input_k;
		var
			n:integer;
		begin
			clrscr;
			GotoXY(35,2) ; writeln('========================================================');
			GotoXY(40,3) ; write('Berapa Jumlah Data Yang Akan Diinputkan? : '); readln(in_dat);
			GotoXY(35,4) ; writeln('========================================================');
			writeln;
			for i:=1 to in_dat do
			begin
				clrscr;
				n:=length(k);
				setlength(k,(n+1));
				GotoXY(35,5) ; writeln('========================================================');
				GotoXY(35,6) ; writeln('Inputan data ke-',i);
				GotoXY(35,7) ; writeln('========================================================');
				GotoXY(35,8) ; write('Nama : ');readln(k[n].nama);
				GotoXY(35,10) ; write('ID   : ');readln(k[n].id);
				GotoXY(35,12) ; write('Golongan (I/II/III/IV) : ');readln(k[n].gol);
				GotoXY(35,14) ; write('Jenis kelamin (L/P) : ');readln(k[n].jk);
				GotoXY(35,16) ; write('Status (Menikah/Lajang) : ');readln(k[n].status);
				if ((k[n].status = 'Menikah') or (k[n].status = 'menikah')) then 
				begin 
					GotoXY(35,18) ; write('Jumlah anak : '); readln(k[n].anak);
				end;
				if (k[n].anak = 0) then 
					begin
					GotoXY(35,18) ; write('Masa kerja (Dalam tahun) : ');readln(k[n].maskerja);
					end
				else 
					begin
					GotoXY(35,20) ; write('Masa kerja (Dalam tahun) : ');readln(k[n].maskerja);
					end;
				GotoXY(35,21) ; writeln('========================================================');
				writeln;
			end;
			GotoXY(35,22) ; writeln('Selesai');
			delay(800);
			update;
		end;
		
		procedure edit_k;
		var
			edit:integer;
		begin
			clrscr;
			GotoXY(35,2) ; writeln('========================================================');
			GotoXY(50,3) ; write('Data nomor berapa yang akan di edit : ');readln(edit);
			GotoXY(35,4) ; writeln('========================================================');
			edit:=edit-1;
			if edit-1 <= length(k)-2 then
			begin
				GotoXY(35,6) ; write('Nama : ');readln(k[edit].nama);
				GotoXY(35,8) ; write('ID : ');readln(k[edit].id);
				GotoXY(35,10) ; write('Golongan (I/II/III/IV) : ');readln(k[edit].gol);
				GotoXY(35,12) ; write('Jenis Kelamin (L/P) : ');readln(k[edit].jk);
				GotoXY(35,14) ; write('Status (Menikah/Lajang) : ');readln(k[edit].status);
				if ((k[edit].status = 'Menikah') or (k[edit].status = 'menikah')) then 
				begin 
					GotoXY(35,16) ; write('Jumlah anak : '); readln(k[edit].anak);
				end;
				GotoXY(35,18) ; write('Masa kerja (Dalam tahun) : ');readln(k[edit].maskerja);
				GotoXY(35,19) ; writeln('========================================================');
				GotoXY(35,20) ; writeln('Data telah diperbaharui');
			end
			else 
				GotoXY(35,2) ; writeln('========================================================');
				GotoXY(35,3) ; writeln('Data tidak ada');  
				GotoXY(35,4) ; writeln('========================================================');
			delay(800);
			update;
		end;
		
		procedure del_k;
		var
			n:integer;
		begin
			clrscr;
			GotoXY(35,2) ; writeln('========================================================');
			GotoXY(50,3) ; write('Menghapus data ke : ');
			GotoXY(35,4) ; writeln('========================================================');
			readln(del_dat);
			n:=length(k);
			if (n > 0) and (del_dat <= n) then
			begin
				writeln;
				for del_dat:=del_dat-1 to n-2 do
				begin
					k[del_dat].nama:=k[del_dat+1].nama;
					k[del_dat].id:=k[del_dat+1].id;
					k[del_dat].gol:=k[del_dat+1].gol;
					k[del_dat].jk:=k[del_dat+1].jk;
					k[del_dat].status:=k[del_dat+1].status;
					k[del_dat].maskerja:=k[del_dat+1].maskerja;
				end;
				setlength(k,n-1);
				writeln('Selesai');
			end
			else
				GotoXY(35,2) ; writeln('========================================================');
				GotoXY(50,3) ; writeln('Data tidak ada');
				GotoXY(35,4) ; writeln('========================================================');
			delay(800);
			update;
		end;
	begin
		clrscr;
		GotoXY(35,2) ; writeln('========================================================');
		GotoXY(58,3) ; writeln('UPDATE DATA');
		GotoXY(35,4) ; writeln('========================================================');
		writeln;
		GotoXY(35,6) ; writeln('1. Input data karyawan');
		GotoXY(35,8) ; writeln('2. Edit data karyawan');
		GotoXY(35,10) ; writeln('3. Hapus data karyawan');
		GotoXY(35,12) ; writeln('4. Kembali ke menu utama');
		GotoXY(35,14) ; writeln('========================================================');
		GotoXY(35,16) ; write('Pilih Menu : ');
		readln(pilih_menu);
		case pilih_menu of
			1:input_k;
			2:edit_k;
			3:del_k;
			4:main_program; //kembali
		else update;
		end;
	end;
	procedure update_gaji;
		begin
			clrscr;
			GotoXY(35,2) ; writeln('============================================================');
			GotoXY(50,3) ; writeln('Pengaturan Data Penggajian');
			GotoXY(35,4) ; writeln('============================================================');
			GotoXY(50,6) ; writeln('Gaji Pokok');
			GotoXY(35,7) ; writeln('============================================================');
			setlength(upah,11);
			GotoXY(35,8) ; write('Golongan I : '); readln(upah[1]);
			GotoXY(35,9) ; write('Golongan II : '); readln(upah[2]);
			GotoXY(35,10) ; write('Golongan III : '); readln(upah[3]);
			GotoXY(35,11) ; write('Golongan IV : '); readln(upah[4]);
			GotoXY(35,12) ; writeln('============================================================');
			GotoXY(65,13) ; writeln('Tunjangan');
			GotoXY(35,14) ; writeln('============================================================');;
			GotoXY(35,15) ; writeln('Tunjangan Anak');
			GotoXY(40,16) ; write('1 anak : '); readln(upah[5]);
			GotoXY(40,17) ; write('<=5 anak : '); readln(upah[6]);
			GotoXY(40,18) ; write('>5 anak : '); readln(upah[7]);
			GotoXY(35,19) ; write('Istri : '); readln(upah[8]);
			GotoXY(35,20) ; writeln('============================================================');
			GotoXY(53,21) ; writeln('Gaji Tambahan Sesuai Masa Kerja');
			GotoXY(35,22) ; writeln('============================================================');
			GotoXY(35,23) ; write('1 tahun : '); readln(upah[9]);
			GotoXY(35,24) ; write('<=5 tahun : '); readln(upah[10]);
			GotoXY(35,25) ; write('>5 tahun : '); readln(upah[11]);
			GotoXY(35,26) ; writeln('============================================================');
			GotoXY(35,27) ; writeln('Data ditambahkan');
			delay(800);
			main_program;
		end;
		
	procedure daftar_k;
	var
		index:integer;
		sort:char;
		
		procedure sorting(var k:array of karyawan);	
		var
			max,i,j,min:integer;
			tmp:string;
			tmp_i:integer;
		begin
			max:=length(k);
			for i:=0 to max-2 do
			begin
				min:=i;
				for j:=i+1 to max-1 do
					if (k[j].id < k[min].id) then // Sort by ID
						min:=j;
				tmp:=k[min].id; //arrange id
				k[min].id:=k[i].id;
				k[i].id:=tmp;
				
				tmp:=k[min].nama; //arrange nama				
				k[min].nama:=k[i].nama;
				k[i].nama:=tmp;
				
				tmp:=k[min].gol; //arrange gol
				k[min].gol:=k[i].gol;
				k[i].gol:=tmp;
				
				tmp:=k[min].jk; //arrange jk
				k[min].jk:=k[i].jk;
				k[i].jk:=tmp;
				
				tmp:=k[min].status; //arrange status
				k[min].status:=k[i].status;
				k[i].status:=tmp;
				
				tmp_i:=k[min].anak; //arrange anak
				k[min].anak:=k[i].anak;
				k[i].anak:=tmp_i;
				
				tmp_i:=k[min].maskerja; //arrange masa kerja
				k[min].maskerja:=k[i].maskerja;
				k[i].maskerja:=tmp_i;
			end;
		end;
		
	begin
		clrscr;
		GotoXY(15,2) ;writeln('==========================================================================================');
		GotoXY(15,3) ;writeln('                                     DATA KARYAWAN                                	    ');
		GotoXY(15,4) ;writeln('==========================================================================================');
		GotoXY(15,5) ;writeln('NO.|  NAMA MAHASISWA  |     ID     | GOL | Jenis Kelamin |   Status  |  Anak | Masa Kerja ');
		GotoXY(15,6) ;writeln('------------------------------------------------------------------------------------------');
		for i:=0 to length(k)-1 do
		begin
			index:=i+1;
			gotoxy(15,i+7); writeln(index);
			gotoxy(21,i+7); writeln(k[i].nama);
			gotoxy(42,i+7); writeln(k[i].id);
			gotoxy(52,i+7); writeln(k[i].gol);
			gotoxy(64,i+7); writeln(k[i].jk);
			gotoxy(75,i+7); writeln(k[i].status);
			if ((k[i].status = 'Menikah') or (k[i].status = 'menikah')) then 
			begin 
				gotoxy(89,i+7); writeln(k[i].anak);
			end;
			gotoxy(98,i+7); writeln(k[i].maskerja);
			writeln;
		end; {endfor}
		if length(k) > 0 then
		begin
			GotoXY(70,36) ;write('Urutkan data sesuai ID (Y/T) ? ');readln(sort);
			GotoXY(15,37) ;writeln('==========================================================================================');
			if (sort = 'Y') or (sort = 'y') then
			begin
				sorting(k);
				clrscr;
				daftar_k;
			end	else main_program
		end
		else
		begin
			GotoXY(35,2) ; writeln('============================================================');
			GotoXY(35,3) ;writeln('Data tidak ada');
			GotoXY(35,4) ; writeln('============================================================');
			delay(800);
			main_program;
		end;
	end;
	
	procedure search;
	var
		found:boolean;
		n,save_i:integer;
	begin 
		n:=length(k);
		clrscr;
		GotoXY(35,2) ; writeln('============================================================');
		GotoXY(53,3) ; writeln('Pencarian Data Karyawan');
		GotoXY(35,4) ; writeln('============================================================');
		writeln;
		if n > 0 then
		begin
			GotoXY(53,5) ; write('Masukkan nama yang dicari : ');readln(cari);
			GotoXY(35,6) ; writeln('============================================================');
			found:=false;
			for i:=0 to n-1 do
			begin
				if cari=k[i].nama then
				begin
					found:=true;
					save_i:=i;
				end;
			end;
			if found = true then
			begin
				GotoXY(35,8) ; writeln('============================================================');
				GotoXY(55,9) ; writeln('Data ditemukan!');
				GotoXY(35,10) ; writeln('============================================================');
				writeln;
				GotoXY(35,11) ; writeln('No. ',save_i+1);				
				GotoXY(35,12) ; writeln('Nama          : ',k[save_i].nama);
				GotoXY(35,13) ; writeln('ID            : ',k[save_i].id);
				GotoXY(35,14) ; writeln('Jenis Kelamin : ',k[save_i].jk);
				GotoXY(35,15) ; writeln('Status        : ',k[save_i].status);
				if ((k[save_i].status = 'Menikah') or (k[save_i].status = 'menikah')) then 
				begin 
					GotoXY(35,16) ; writeln('Jumlah anak : ',k[save_i].anak);
				end;
				GotoXY(35,17) ; writeln('Golongan      : ',k[save_i].gol);
				GotoXY(35,18) ; writeln('Masa Kerja    : ',k[save_i].maskerja);
				GotoXY(35,19) ; writeln('============================================================');
			end
			else 
			GotoXY(35,4) ; writeln('============================================================');
			GotoXY(56,4) ; writeln('Data tidak ditemukan');
			GotoXY(35,4) ; writeln('============================================================');
		end
		else 
		GotoXY(35,4) ; writeln('============================================================');
		GotoXY(35,4) ; writeln('Tidak ada data');
		GotoXY(35,4) ; writeln('============================================================');
		//delay(800);
		readln;
		main_program;
	end;
	
	procedure gaji_k;
	var
		index:integer;
	begin
	if (length(k) > 0) and (length(upah) > 0) then
	begin
	for i:=0 to length(k)-1 do
	begin
		case k[i].gol of 
			'I':k[i].g_pokok:=upah[1];
			'II':k[i].g_pokok:=upah[2];
			'III':k[i].g_pokok:=upah[3];
			'IV':k[i].g_pokok:=upah[4];
		end;
		if ((k[i].status='Menikah') or (k[i].status='menikah')) then 
			begin
			if ((k[i].jk='L')or(k[i].jk='l')) then 
				k[i].t_istri:=upah[8]
			else 
				k[i].t_istri:=0;
			if (k[i].anak>0 ) then 
				begin 
					if k[i].anak=1 then 
						k[i].t_anak:=upah[5]
					else if (k[i].anak>1)and(k[i].anak <= 5) then 
						k[i].t_anak:=upah[6]
					else if (k[i].anak > 5) then 
						k[i].t_anak:=upah[7];
				end
			else 
				k[i].t_anak:=0;
		if (k[i].maskerja>0) then 
			begin 
				if k[i].maskerja=1 then 
					k[i].t_maskerja:=upah[9]
				else if (k[i].anak>1)and(k[i].anak <= 5) then 
					k[i].t_maskerja:=upah[10]
				else if (k[i].anak > 5) then 
					k[i].t_maskerja:=upah[11];
			end
		else 
			k[i].t_maskerja:=0;
		end;
		k[i].g_total:=k[i].g_pokok+k[i].t_anak+k[i].t_istri+k[i].t_maskerja;
	end;
	end;
	clrscr;
		GotoXY(15,2) ;writeln('================================================================================================');
		GotoXY(15,3) ;writeln('                           			       DATA GAJI KARYAWAN								   ');
		GotoXY(15,4) ;writeln('================================================================================================');
		GotoXY(15,5) ;writeln('NO.|  NAMA KARYAWAN  |   ID   |  Gaji Pokok | T. Anak | T. Istri | T.Masa Kerja |   Gaji Total ');
		GotoXY(15,6) ;writeln('------------------------------------------------------------------------------------------------');
		if (length(k) > 0) then
		begin
			for i:=0 to length(k)-1 do
			begin
				index:=i+1;
				gotoxy(15,i+7); writeln(index);
				gotoxy(21,i+7); writeln(k[i].nama);
				gotoxy(40,i+7); writeln(k[i].id);
				gotoxy(49,i+7); writeln(k[i].g_pokok);
				gotoxy(62,i+7); writeln(k[i].t_anak);
				gotoxy(73,i+7); writeln(k[i].t_istri);
				gotoxy(83,i+7); writeln(k[i].t_maskerja);
				gotoxy(97,i+7); writeln(k[i].g_total);
				writeln;
			end;
		end;
		readln;
		main_program;
	end;

begin
	clrscr;
	GotoXY(35,2) ; writeln('========================================================');
	GotoXY(52,3) ; writeln('MENU APLIKASI PENGGAJIAN');
	writeln;
	GotoXY(35,4) ; writeln('========================================================');
	GotoXY(35,6) ; writeln('1. Update Data');
	GotoXY(35,8) ; writeln('2. Atur penggajian');
	GotoXY(35,10) ; writeln('3. Daftar Data Karyawan');
	GotoXY(35,12) ; writeln('4. Daftar Gaji Karyawan');
	GotoXY(35,14) ; writeln('5. Pencarian Data Karyawan');
	GotoXY(35,16) ; writeln('6. Keluar');
	GotoXY(35,18) ; writeln('========================================================');
	writeln;
	GotoXY(35,19) ; write('Pilih Menu : '); readln(pilih_menu);
	GotoXY(35,20) ; writeln('========================================================');
	clrscr;
	case pilih_menu of
		1:update;
		2:update_gaji;
		3:daftar_k;
		4:gaji_k;
		5:search;
		6:exit;
	else main_program;
	end;
end;

Begin
	main_program;
End.