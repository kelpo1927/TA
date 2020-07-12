Tabel Pegawai
insert all
into Pegawai_06841(Id_Pegawai, Nama_Depan, Nama_Belakang, Tanggal_Lahir, Alamat, Kode_Pos, No_Tlp) Values (1, 'Mar', 'Bejo', to_date('02/11/1980','dd/mm/yyyy'),'Jagiran', '60136', '0815567890')
into Pegawai_06841(Id_Pegawai, Nama_Depan, Nama_Belakang, Tanggal_Lahir, Alamat, Kode_Pos, No_Tlp) Values (2, 'Mar', 'Tejo', to_date('03/10/1981','dd/mm/yyyy'),'Karanggayam', '60136', '0815567891')
into Pegawai_06841(Id_Pegawai, Nama_Depan, Nama_Belakang, Tanggal_Lahir, Alamat, Kode_Pos, No_Tlp) Values (3, 'Mar', 'Sejo', to_date('04/12/1982','dd/mm/yyyy'),'Tambaksari', '60136', '0815567892')
into Pegawai_06841(Id_Pegawai, Nama_Depan, Nama_Belakang, Tanggal_Lahir, Alamat, Kode_Pos, No_Tlp) Values (4, 'Mar', 'Mujo', to_date('05/10/1983','dd/mm/yyyy'),'Bogen', '60136', '0815567893')
into Pegawai_06841(Id_Pegawai, Nama_Depan, Nama_Belakang, Tanggal_Lahir, Alamat, Kode_Pos, No_Tlp) Values (5, 'Mar', 'Paijo', to_date('06/11/1984','dd/mm/yyyy'),'Ploso', '60136', '0815567894')
select 1 from dual;	
	
Tabel Pelanggan
insert all
into Pelanggan_06841(Id_Pelanggan, Nama_Depan, Nama_Belakang, Tanggal_Lahir, Alamat, Kode_Pos, No_Tlp) Values (1, 'Su', 'Kiman', to_date('01/06/1987','dd/mm/yyyy'), 'Teratai', '60135', '0816678765')
into Pelanggan_06841(Id_Pelanggan, Nama_Depan, Nama_Belakang, Tanggal_Lahir, Alamat, Kode_Pos, No_Tlp) Values (2, 'Su', 'Ciman', to_date('02/07/1988','dd/mm/yyyy'), 'Krampong', '60135', '0816678766')
into Pelanggan_06841(Id_Pelanggan, Nama_Depan, Nama_Belakang, Tanggal_Lahir, Alamat, Kode_Pos, No_Tlp) Values (3, 'Su', 'Timan', to_date('03/08/1989','dd/mm/yyyy'), 'Rangkah', '60135', '0816678767')
into Pelanggan_06841(Id_Pelanggan, Nama_Depan, Nama_Belakang, Tanggal_Lahir, Alamat, Kode_Pos, No_Tlp) Values (4, 'Su', 'Giman', to_date('04/06/1987','dd/mm/yyyy'), 'Jolotundo', '60135', '0816678768')
into Pelanggan_06841(Id_Pelanggan, Nama_Depan, Nama_Belakang, Tanggal_Lahir, Alamat, Kode_Pos, No_Tlp) Values (5, 'Su', 'Liman', to_date('05/07/1988','dd/mm/yyyy'), 'Sawentar', '60135', '0816678769')
select 1 from dual;
	
Tabel Kurir
Insert all
into Kurir_06841 (Id_Kurir,Nama_Perusahaan, No_Tlp) Values (1, 'Alfamart', '0899976543')
into Kurir_06841 (Id_Kurir,Nama_Perusahaan, No_Tlp) Values (2, 'Indomart', '0899976544')
into Kurir_06841 (Id_Kurir,Nama_Perusahaan, No_Tlp) Values (3, 'Berkahmart', '0899976545')	
into Kurir_06841 (Id_Kurir,Nama_Perusahaan, No_Tlp) Values (4, 'Megamart', '0899976546')
into Kurir_06841 (Id_Kurir,Nama_Perusahaan, No_Tlp) Values (5, 'Transmart', '0899976547')
select 1 from dual;
	
Tabel Pemasok
Insert all
into Pemasok_06841(Id_Pemasok, Nama_Perusahaan, Alamat, Kode_Pos, No_Tlp) Values (1, 'DistriAlfamart', 'Surabaya', '9867', '0312345678')
into Pemasok_06841(Id_Pemasok, Nama_Perusahaan, Alamat, Kode_Pos, No_Tlp) Values (2, 'DistriIndomart', 'Sidoarjo', '9867', '0312345679')
into Pemasok_06841(Id_Pemasok, Nama_Perusahaan, Alamat, Kode_Pos, No_Tlp) Values (3, 'DistriBerkahmart', 'Gresik', '9867', '0312345670')
into Pemasok_06841(Id_Pemasok, Nama_Perusahaan, Alamat, Kode_Pos, No_Tlp) Values (4, 'DistriMegamart', 'Lamongan', '9867', '0312345671')
into Pemasok_06841(Id_Pemasok, Nama_Perusahaan, Alamat, Kode_Pos, No_Tlp) Values (5, 'DistriTransmart', 'Malang', '9867', '0312345672')
select 1 from dual;
	
Tabel Kategori
insert all
into Kategori_06841(Id_Kategori, Nama_Kategori) Values (1, 'Makanan')
into Kategori_06841(Id_Kategori, Nama_Kategori) Values (2, 'Minuman')
into Kategori_06841(Id_Kategori, Nama_Kategori) Values (3, 'Buah')
Into Kategori_06841(Id_Kategori, Nama_Kategori) Values (4, 'Sayur')	
Into Kategori_06841(Id_Kategori, Nama_Kategori) Values (5, 'Baju')
select 1 from dual;
	
Tabel Produk
Insert all
Into Produk_06841(Id_Produk, Id_Pemasok, Id_Kategori, Nama_Produk, Harga_Satuan, Stok_Produk) Values (1,1,1, 'Sedap', '4500', '50')
Into Produk_06841(Id_Produk, Id_Pemasok, Id_Kategori, Nama_Produk, Harga_Satuan, Stok_Produk) Values (2,2,2, 'Larutan', '5500', '60')
Into Produk_06841(Id_Produk, Id_Pemasok, Id_Kategori, Nama_Produk, Harga_Satuan, Stok_Produk) Values (3,3,3, 'Pisang', '3500', '50')
Into Produk_06841(Id_Produk, Id_Pemasok, Id_Kategori, Nama_Produk, Harga_Satuan, Stok_Produk) Values (4,4,4, 'Kol', '4000', '40')
Into Produk_06841(Id_Produk, Id_Pemasok, Id_Kategori, Nama_Produk, Harga_Satuan, Stok_Produk) Values (5,5,5, 'KiddRock', '9000', '80')
select 1 from dual;	

Tabel Pemesanan
Insert all
into Pemesanan_06841(Id_Pemesanan, Id_Pelanggan, Id_Pegawai, Id_Kurir, Tanggal_Pemesanan, Tanggal_Pengiriman, Alamat_Pengiriman, Harga_Total) Values (1,1,1,1, to_date('04/10/2019', 'dd/mm/yyyy'), to_date('07/11/2020', 'dd/mm/yyyy'), 'KapasMadya', '4500')
into Pemesanan_06841(Id_Pemesanan, Id_Pelanggan, Id_Pegawai, Id_Kurir, Tanggal_Pemesanan, Tanggal_Pengiriman, Alamat_Pengiriman, Harga_Total) Values (2,2,2,2, to_date('05/10/2019', 'dd/mm/yyyy'), to_date('08/11/2019', 'dd/mm/yyyy'), 'Bronggalan', '5500')
into Pemesanan_06841(Id_Pemesanan, Id_Pelanggan, Id_Pegawai, Id_Kurir, Tanggal_Pemesanan, Tanggal_Pengiriman, Alamat_Pengiriman, Harga_Total) Values (3,3,3,3, to_date('06/10/2019', 'dd/mm/yyyy'), to_date('09/11/2019', 'dd/mm/yyyy'), 'PacarKembang', '3500')
into Pemesanan_06841(Id_Pemesanan, Id_Pelanggan, Id_Pegawai, Id_Kurir, Tanggal_Pemesanan, Tanggal_Pengiriman, Alamat_Pengiriman, Harga_Total) Values (4,4,4,4, to_date('07/10/2019', 'dd/mm/yyyy'), to_date('10/11/2019', 'dd/mm/yyyy'), 'PacarKeling', '4000')
into Pemesanan_06841(Id_Pemesanan, Id_Pelanggan, Id_Pegawai, Id_Kurir, Tanggal_Pemesanan, Tanggal_Pengiriman, Alamat_Pengiriman, Harga_Total) Values (5,5,5,5, to_date('08/10/2019', 'dd/mm/yyyy'), to_date('11/11/2019', 'dd/mm/yyyy'), 'Setro', '9000')
select 1 from dual;	
	
Tabel Detail Pemesanan
Insert all
into Detail_Pemesanan_06841(Id_Produk, Id_Pemesanan, Jumlah, Diskon) Values ('1', '1', '1', '10')
into Detail_Pemesanan_06841(Id_Produk, Id_Pemesanan, Jumlah, Diskon) Values ('2', '2', '2', '20')
into Detail_Pemesanan_06841(Id_Produk, Id_Pemesanan, Jumlah, Diskon) Values ('3', '3', '3', '30')
into Detail_Pemesanan_06841(Id_Produk, Id_Pemesanan, Jumlah, Diskon) Values ('4', '4', '4', '40')
into Detail_Pemesanan_06841(Id_Produk, Id_Pemesanan, Jumlah, Diskon) Values ('5', '5', '5', '50')
select 1 from dual;

2a
select a.Nama_Depan, b.Nama_Kategori 
from pelanggan_06841 a join Kategori_06841 b
on a.id_Pelanggan = b.id_kategori
where rownum <=10;

2b
select Kategori_06841.Id_Kategori from Kategori_06841 left join Kurir_06841				
on Kurir_06841.id_kurir = Kategori_06841.Id_Kategori left join Produk_06841 on				
Produk_06841.id_produk = Produk_06841.id_produk where Produk_06841.id_produk		
= (select id_produk from Produk_06841 where id_produk = 1);  						
  																																		
2c
select Kategori_06841.Id_Kategori,count(Kategori_06841.Id_Kategori) as total
from  Kategori_06841 right join Produk_06841 on Produk_06841.id_produk = Kategori_06841.Id_Kategori right join  Kurir_06841 on Produk_06841.id_produk = Kategori_06841.Id_Kategori group by Kategori_06841.Id_Kategori;

3
create view dml_Kategori_06841 as
select Nama_Kategori
from Kategori_06841
where id_kategori <1;

select * from dml_Kategori_06841; 
                                                                                                                                                                              
4a
create view equi_dml as
select id_produk,id_kurir
from Produk_06841,Kurir_06841
where Produk_06841.id_produk = Kurir_06841.id_kurir;

select * from equi_dml;

4b
create view left_join as											
select  Produk_06841.id_produk from Produk_06841 left join Kurir_06841						
on Kurir_06841.id_kurir = Produk_06841.id_produk left join Kategori_06841 on						
Kategori_06841.id_kategori = Kategori_06841.id_kategori where Kategori_06841.id_kategori				
= (select id_kategori from Kategori_06841 where id_kategori = 2);							
 
select * from left_join;

4c
create view right_join as
select Kategori_06841.id_kategori,count(Kategori_06841.id_kategori) as total
from Kategori_06841 right join  Produk_06841 on  Produk_06841.id_produk = Kategori_06841.id_kategori right join Kurir_06841 on Kurir_06841.id_kurir =Kategori_06841.id_kategori group by Kategori_06841.id_kategori;

5
select * from right_join;
select * from left_join;
select * from equi_dml;






