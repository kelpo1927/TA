Langkah pertama
 -> buat tablespace
	
	CREATE TABLESPACE praktik
	datafile 'D:\KULIAH\semester; 6\Modul 1\praktikan.dbf'
	size 30M;
	
 -> buat user
 
	CREATE USER Chelvins_06841
	IDENTIFIED BY kelpo
	DEFAULT TABLESPACE praktik
	QUOTA 30M ON praktik;
	
 -> hak akses
	
	GRANT ALL PRIVILEGES TO Chelvins_06841;
	
 -> login user
 
	CONN Chelvins_06841/kelpo
	
Langkah Kedua

	create table Pegawai_06841
	(
	Id_pegawai		INTEGER	not null,
	Nama_depan 		VARCHAR2(15),
	Nama_belakang 	VARCHAR2(15),
	Tanggal_lahir 	DATE,
	Alamat			VARCHAR2(100),
	Kode_pos		NUMBER(7),
	No_tlp			NUMBER(12),
	constraint PK_pegawai primary key (Id_pegawai)
	);
	
Langkah Ketiga

	create table Pelanggan_06841
	(
	Id_pelanggan		INTEGER not null,
	Nama_depan 			VARCHAR2(15),
	Nama_belakang		VARCHAR2(15),
	Tanggal_lahir		DATE,
	Alamat				VARCHAR2(100),
	Kode_pos			NUMBER(7),
	No_tlp				NUMBER(12),
	constraint PK_Pelanggan primary key (Id_pelanggan)
	);
	
Langkah Keempat

	create table Kurir_06841
	(
	Id_kurir			INTEGER not null,
	Nama_perusahaan		VARCHAR2(16),
	No_tlp				NUMBER(12),
	constraint PK_Kurir primary key (Id_kurir)
	);
	
Langkah Kelima

	create table Pemasok_06841
	(
	Id_pemasok			INTEGER not null,
	Nama_perusahaan		VARCHAR2(16),
	Alamat				VARCHAR2(100),
	Kode_pos			NUMBER(7),
	No_tlp				NUMBER(12),
	constraint PK_Pemasok primary key (Id_pemasok)
	);
	
Langkah Keenam

	create table Kategori_06841
	(
	Id_kategori			INTEGER not null,
	Nama_kategori		VARCHAR2(16),
	Deskripsi			VARCHAR2(20),
	constraint PK_Kategori primary key (Id_kategori)
	);
	
Lanhkah Ketujuh

	create table Produk_06841
	(
	Id_produk			INTEGER not null,
	Id_pemasok			INTEGER,
	Id_kategori			INTEGER,
	Nama_produk			VARCHAR2(50),
	Harga_satuan		NUMBER(9),
	Stok_produk			NUMBER(4),
	constraint PK_Produk primary key (Id_produk),
	constraint FK_Pemasok FOREIGN KEY (Id_pemasok)
	REFERENCES Pemasok_06841(Id_pemasok),
	constraint FK_Kategori FOREIGN KEY (Id_kategori)
	REFERENCES Kategori_06841(Id_kategori)
	);
	
Langkah Kedelapan
	
	create table Pemesanan_06841
	(
	Id_pemesanan			INTEGER not null,
	Id_pelanggan			INTEGER,
	Id_pegawai				INTEGER,
	Id_kurir				INTEGER,
	Tanggal_pemesanan		DATE,
	Tanggal_pengiriman		DATE,
	Alamat_pengiriman		VARCHAR2(100),
	Harga_total				NUMBER(9),
	constraint PK_Pemesanan primary key (Id_pemesanan)
	);
	
Langkah Kesembilan

	alter table Pemesanan_06841
	add constraint FK_Id_pelanggan FOREIGN KEY(Id_pelanggan)
	references Pelanggan_06841(Id_pelanggan)
	add constraint FK_Id_pegawai FOREIGN KEY (Id_pegawai)
	references Pegawai_06841(Id_pegawai)
	add constraint FK_Id_kurir FOREIGN KEY(Id_kurir)
	references Kurir_06841(Id_kurir);
	
Langkah Kesepuluh

	create table Detail_Pemesanan_06841
	(
	Id_produk		INTEGER not null,
	Id_pemesanan	INTEGER,
	Jumlah			NUMBER(3),
	Diskon			FLOAT(4)
	);
	
Langkah Kesebelas

	alter table Detail_Pemesanan_06841
	add constraint FK_Id_produk FOREIGN KEY (Id_produk)
	references Produk_06841(Id_produk)
	add constraint FK_Id_pemesanan FOREIGN KEY (Id_pemesanan)
	references Pemesanan_06841(Id_pemesanan);
	
https://youtu.be/1q-fdzr9KQM
	
