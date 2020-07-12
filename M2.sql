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

insert into Kategori_06841(Id_Kategori, Nama_Kategori) Values (1, 'Makanan');

insert into Kategori_06841(Id_Kategori, Nama_Kategori) Values (2, 'Minuman');

insert into Kategori_06841(Id_Kategori, Nama_Kategori) Values (3, 'Buah');

insert Into Kategori_06841(Id_Kategori, Nama_Kategori) Values (4, 'Sayur');
	
insert Into Kategori_06841(Id_Kategori, Nama_Kategori) Values (5, 'Baju');
	
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
	
UPDATE pegawai_06841
SET Nama_Depan = 'Kim',
Nama_Belakang = 'Jisoo'
WHERE Id_Pegawai = 1;

UPDATE pegawai_06841
SET Nama_Depan = 'Lee',
Nama_Belakang = 'Kurniawan'
WHERE Id_Pegawai = 2;

DELETE FROM Detail_Pemesanan_06841
WHERE Id_Produk = 4;


DELETE FROM Detail_Pemesanan_06841
WHERE Id_Produk = 5;

SELECT kode_pos, alamat, no_tlp, tanggal_lahir FROM Pegawai_06841
WHERE Nama_Depan LIKE '%a%' AND Nama_Belakang LIKE '%e%' AND id_pegawai < 5;
