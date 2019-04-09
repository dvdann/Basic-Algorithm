program toko_kiossca ;
uses crt;

type
        dagang=record

        nama:string;    //nama pedagang
        jenis:string;  //jenis dagangan

end;
type
        a=array[1..30,1..2] of dagang; // [x,y] x: nomor kios ; y: letak lantai
var
        tabel:a;
        j,n,x,y:integer;
        curr:integer=0;



{____PROCEDURE CEK DATA ____}
procedure cek_data (j,n :integer);
var
        jns,nmr:integer;
begin

        write('masukan jenis dagangan (1-6)  = ');
        readln(j);
        write('masukan nomor kios (1-60) = ');
        readln(n);
        jns:=j;
        nmr:=n;
                if (jns<=6) and (nmr<=60) then
                        write (' SELAMAT BERGABUNG....SEMOGA SUKSES ')
                else
                        write (' maaf anda tidak memenuhi kriteria ' );

end;


{____PROCEDURE INPUT DATA____}
procedure identitas( var tabel:a;x:integer;y:integer);
var
        nama:integer;
        jenis:string;
begin
        writeln('masukan nama pedagang : ');
        readln(tabel[x][y].nama);
        write('masukan jenis dagangan  : ' );
        readln(tabel[x][y].jenis);
        curr:=curr+1;
         repeat
        case jenis of
                'pedagang daging atau ikan'  : begin
                                                 if (tabel[x-1][y].jenis<> 'pedagang pakaian' )And (tabel [x+1][y].jenis<>' pedagang pakaian')  then

                                                              (  tabel [x][y])
                                                  else
                                                    (tabel[x+1][y]);
                                        end;

                'pedagang emas'         : begin
                                                if ( tabel [x][y].jenis = '' ) then
                                                           y:=2;
                                                       ( tabel [x][y])
                                                else
                                                        y:=2;
                                                 ( tabel[x+1][y]);
                                        end;

                'pedagang sayur'         : begin
                                                if ( tabel [x][y].jenis = '' ) then
                                                       ( tabel [x][y])
                                                 else
                                                 ( tabel[x+1][y]);
                                         end;

                'pedagang pakaian'        : begin
                                              if ( tabel [x][y].jenis = '' ) then
                                                  ( tabel[x][y])
                                              else
                                                  (tabel[x+1][y]);
                                           end;

                'pedagang alat elektronik' : begin
                                                if( tabel[x-1][y] = 'pedagang pakaian') And( tabel[x+1][y] = 'pedagang pakaian') then

                                                   ( tabel [x][y])
                                                 else
                                                       ( tabel[x+1][y]);
                                           end;

               ' pedagang mainan'            : begin
                                                if( tabel[x-1][y].jenis<>' pedagang daging atau ikan') And( tabel [x+1][y].jenis<> 'pedagang daging atau ikan ') then
                                                       ( tabel [x][y])
                                                else
                                                       ( tabel[x+1][y]);
                                              end;
end;






{_____PROGRAM UTAMA____}
begin
        clrscr;
         writeln('-----KRITERIA JENIS DAGANGAN-----');
        Writeln('1. Penjual Daging/ikan');
        writeln('2. Penjual Emas ');
        writeln('3. Penjual Sayur ');
        writeln('4. Penjual Pakaian');
        writeln('5. Penjual Alat Elektronik');
        writeln('6. Penjual Mainan');
        cek_data (j,n);
        writeln('======================================');
        write('masukan nomor kios: ');
        readln(x);
        write ('masukan tingkat lantai (1-2) : ');
        readln(y);
        write ('__isi identitas__' );
        identitas (tabel,x,y);
        readln;
end.
