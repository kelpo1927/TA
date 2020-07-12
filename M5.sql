https://www.youtube.com/watch?v=Wgbifz3fMbo

Langkah pertama
 -> buat tablespace
	
	CREATE TABLESPACE ovj
	datafile 'D:\KULIAH\semester; 6\Oj\ojv.dbf'
	size 20M;
	
 -> buat user
 
	CREATE USER Kelpo16
	IDENTIFIED BY Kelpo16
	DEFAULT TABLESPACE ovj
	QUOTA 20M ON ovj;
	
 -> hak akses
	
	GRANT ALL PRIVILEGES TO Kelpo16;
	
Langkah Kedua

	create table Pegawai
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

	create table Pelanggan
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

	create table Kurir
	(
	Id_kurir			INTEGER not null,
	Nama_perusahaan		VARCHAR2(16),
	No_tlp				NUMBER(12),
	constraint PK_Kurir primary key (Id_kurir)
	);
	
Langkah Kelima

	create table Pemasok
	(
	Id_pemasok			INTEGER not null,
	Nama_perusahaan		VARCHAR2(16),
	Alamat				VARCHAR2(100),
	Kode_pos			NUMBER(7),
	No_tlp				NUMBER(12),
	constraint PK_Pemasok primary key (Id_pemasok)
	);
	
Langkah Keenam

	create table Kategori
	(
	Id_kategori			INTEGER not null,
	Nama_kategori		VARCHAR2(16),
	Deskripsi			VARCHAR2(20),
	constraint PK_Kategori primary key (Id_kategori)
	);
	
Lanhkah Ketujuh

	create table Produk
	(
	Id_produk			INTEGER not null,
	Id_pemasok			INTEGER,
	Id_kategori			INTEGER,
	Nama_produk			VARCHAR2(50),
	Harga_satuan		NUMBER(9),
	Stok_produk			NUMBER(4),
	constraint PK_Produk primary key (Id_produk),
	constraint FK_Pemasok FOREIGN KEY (Id_pemasok)
	REFERENCES Pemasok(Id_pemasok),
	constraint FK_Kategori FOREIGN KEY (Id_kategori)
	REFERENCES Kategori(Id_kategori)
	);
	
Langkah Kedelapan
	
	create table Pemesanan
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

	alter table Pemesanan
	add constraint FK_Id_pelanggan FOREIGN KEY(Id_pelanggan)
	references Pelanggan(Id_pelanggan)
	add constraint FK_Id_pegawai FOREIGN KEY (Id_pegawai)
	references Pegawai(Id_pegawai)
	add constraint FK_Id_kurir FOREIGN KEY(Id_kurir)
	references Kurir(Id_kurir);
	
Langkah Kesepuluh

	create table Detail_Pemesanan
	(
	Id_produk		INTEGER not null,
	Id_pemesanan	INTEGER,
	Jumlah			NUMBER(3),
	Diskon			FLOAT(4)
	);
	
Langkah Kesebelas

	alter table Detail_Pemesanan
	add constraint FK_Id_produk FOREIGN KEY (Id_produk)
	references Produk(Id_produk)
	add constraint FK_Id_pemesanan FOREIGN KEY (Id_pemesanan)
	references Pemesanan(Id_pemesanan);



Tabel Pegawai
insert all
into Pegawai(Id_Pegawai, Nama_Depan, Nama_Belakang, Tanggal_Lahir, Alamat, Kode_Pos, No_Tlp) Values (1, 'Mar', 'Bejo', to_date('02/11/1980','dd/mm/yyyy'),'Jagiran', '60136', '0815567890')
into Pegawai(Id_Pegawai, Nama_Depan, Nama_Belakang, Tanggal_Lahir, Alamat, Kode_Pos, No_Tlp) Values (2, 'Mar', 'Tejo', to_date('03/10/1981','dd/mm/yyyy'),'Karanggayam', '60136', '0815567891')
into Pegawai(Id_Pegawai, Nama_Depan, Nama_Belakang, Tanggal_Lahir, Alamat, Kode_Pos, No_Tlp) Values (3, 'Mar', 'Sejo', to_date('04/12/1982','dd/mm/yyyy'),'Tambaksari', '60136', '0815567892')
into Pegawai(Id_Pegawai, Nama_Depan, Nama_Belakang, Tanggal_Lahir, Alamat, Kode_Pos, No_Tlp) Values (4, 'Mar', 'Mujo', to_date('05/10/1983','dd/mm/yyyy'),'Bogen', '60136', '0815567893')
into Pegawai(Id_Pegawai, Nama_Depan, Nama_Belakang, Tanggal_Lahir, Alamat, Kode_Pos, No_Tlp) Values (5, 'Mar', 'Paijo', to_date('06/11/1984','dd/mm/yyyy'),'Ploso', '60136', '0815567894')
select 1 from dual;	
	
Tabel Pelanggan
insert all
into Pelanggan(Id_Pelanggan, Nama_Depan, Nama_Belakang, Tanggal_Lahir, Alamat, Kode_Pos, No_Tlp) Values (1, 'Su', 'Kiman', to_date('01/06/1987','dd/mm/yyyy'), 'Teratai', '60135', '0816678765')
into Pelanggan(Id_Pelanggan, Nama_Depan, Nama_Belakang, Tanggal_Lahir, Alamat, Kode_Pos, No_Tlp) Values (2, 'Su', 'Ciman', to_date('02/07/1988','dd/mm/yyyy'), 'Krampong', '60135', '0816678766')
into Pelanggan(Id_Pelanggan, Nama_Depan, Nama_Belakang, Tanggal_Lahir, Alamat, Kode_Pos, No_Tlp) Values (3, 'Su', 'Timan', to_date('03/08/1989','dd/mm/yyyy'), 'Rangkah', '60135', '0816678767')
into Pelanggan(Id_Pelanggan, Nama_Depan, Nama_Belakang, Tanggal_Lahir, Alamat, Kode_Pos, No_Tlp) Values (4, 'Su', 'Giman', to_date('04/06/1987','dd/mm/yyyy'), 'Jolotundo', '60135', '0816678768')
into Pelanggan(Id_Pelanggan, Nama_Depan, Nama_Belakang, Tanggal_Lahir, Alamat, Kode_Pos, No_Tlp) Values (5, 'Su', 'Liman', to_date('05/07/1988','dd/mm/yyyy'), 'Sawentar', '60135', '0816678769')
select 1 from dual;
	
Tabel Kurir
Insert all
into Kurir (Id_Kurir,Nama_Perusahaan, No_Tlp) Values (1, 'Alfamart', '0899976543')
into Kurir (Id_Kurir,Nama_Perusahaan, No_Tlp) Values (2, 'Indomart', '0899976544')
into Kurir (Id_Kurir,Nama_Perusahaan, No_Tlp) Values (3, 'Berkahmart', '0899976545')	
into Kurir (Id_Kurir,Nama_Perusahaan, No_Tlp) Values (4, 'Megamart', '0899976546')
into Kurir (Id_Kurir,Nama_Perusahaan, No_Tlp) Values (5, 'Transmart', '0899976547')
select 1 from dual;
	
Tabel Pemasok
Insert all
into Pemasok(Id_Pemasok, Nama_Perusahaan, Alamat, Kode_Pos, No_Tlp) Values (1, 'DistriAlfamart', 'Surabaya', '9867', '0312345678')
into Pemasok(Id_Pemasok, Nama_Perusahaan, Alamat, Kode_Pos, No_Tlp) Values (2, 'DistriIndomart', 'Sidoarjo', '9867', '0312345679')
into Pemasok(Id_Pemasok, Nama_Perusahaan, Alamat, Kode_Pos, No_Tlp) Values (3, 'DistriBerkahmart', 'Gresik', '9867', '0312345670')
into Pemasok(Id_Pemasok, Nama_Perusahaan, Alamat, Kode_Pos, No_Tlp) Values (4, 'DistriMegamart', 'Lamongan', '9867', '0312345671')
into Pemasok(Id_Pemasok, Nama_Perusahaan, Alamat, Kode_Pos, No_Tlp) Values (5, 'DistriTransmart', 'Malang', '9867', '0312345672')
select 1 from dual;
	
Tabel Kategori
insert all
into Kategori(Id_Kategori, Nama_Kategori) Values (1, 'Makanan')
into Kategori(Id_Kategori, Nama_Kategori) Values (2, 'Minuman')
into Kategori(Id_Kategori, Nama_Kategori) Values (3, 'Buah')
Into Kategori(Id_Kategori, Nama_Kategori) Values (4, 'Sayur')	
Into Kategori(Id_Kategori, Nama_Kategori) Values (5, 'Baju')
select 1 from dual;
	
Tabel Produk
Insert all
Into Produk(Id_Produk, Id_Pemasok, Id_Kategori, Nama_Produk, Harga_Satuan, Stok_Produk) Values (1,1,1, 'Sedap', '4500', '50')
Into Produk(Id_Produk, Id_Pemasok, Id_Kategori, Nama_Produk, Harga_Satuan, Stok_Produk) Values (2,2,2, 'Larutan', '5500', '60')
Into Produk(Id_Produk, Id_Pemasok, Id_Kategori, Nama_Produk, Harga_Satuan, Stok_Produk) Values (3,3,3, 'Pisang', '3500', '50')
Into Produk(Id_Produk, Id_Pemasok, Id_Kategori, Nama_Produk, Harga_Satuan, Stok_Produk) Values (4,4,4, 'Kol', '4000', '40')
Into Produk(Id_Produk, Id_Pemasok, Id_Kategori, Nama_Produk, Harga_Satuan, Stok_Produk) Values (5,5,5, 'KiddRock', '9000', '80')
select 1 from dual;	

Tabel Pemesanan
Insert all
into Pemesanan(Id_Pemesanan, Id_Pelanggan, Id_Pegawai, Id_Kurir, Tanggal_Pemesanan, Tanggal_Pengiriman, Alamat_Pengiriman, Harga_Total) Values (1,1,1,1, to_date('04/10/2019', 'dd/mm/yyyy'), to_date('07/11/2020', 'dd/mm/yyyy'), 'KapasMadya', '4500')
into Pemesanan(Id_Pemesanan, Id_Pelanggan, Id_Pegawai, Id_Kurir, Tanggal_Pemesanan, Tanggal_Pengiriman, Alamat_Pengiriman, Harga_Total) Values (2,2,2,2, to_date('05/10/2019', 'dd/mm/yyyy'), to_date('08/11/2019', 'dd/mm/yyyy'), 'Bronggalan', '5500')
into Pemesanan(Id_Pemesanan, Id_Pelanggan, Id_Pegawai, Id_Kurir, Tanggal_Pemesanan, Tanggal_Pengiriman, Alamat_Pengiriman, Harga_Total) Values (3,3,3,3, to_date('06/10/2019', 'dd/mm/yyyy'), to_date('09/11/2019', 'dd/mm/yyyy'), 'PacarKembang', '3500')
into Pemesanan(Id_Pemesanan, Id_Pelanggan, Id_Pegawai, Id_Kurir, Tanggal_Pemesanan, Tanggal_Pengiriman, Alamat_Pengiriman, Harga_Total) Values (4,4,4,4, to_date('07/10/2019', 'dd/mm/yyyy'), to_date('10/11/2019', 'dd/mm/yyyy'), 'PacarKeling', '4000')
into Pemesanan(Id_Pemesanan, Id_Pelanggan, Id_Pegawai, Id_Kurir, Tanggal_Pemesanan, Tanggal_Pengiriman, Alamat_Pengiriman, Harga_Total) Values (5,5,5,5, to_date('08/10/2019', 'dd/mm/yyyy'), to_date('11/11/2019', 'dd/mm/yyyy'), 'Setro', '9000')
select 1 from dual;	
	
Tabel Detail Pemesanan
Insert all
into Detail_Pemesanan(Id_Produk, Id_Pemesanan, Jumlah, Diskon) Values ('1', '1', '1', '10')
into Detail_Pemesanan(Id_Produk, Id_Pemesanan, Jumlah, Diskon) Values ('2', '2', '2', '20')
into Detail_Pemesanan(Id_Produk, Id_Pemesanan, Jumlah, Diskon) Values ('3', '3', '3', '30')
into Detail_Pemesanan(Id_Produk, Id_Pemesanan, Jumlah, Diskon) Values ('4', '4', '4', '40')
into Detail_Pemesanan(Id_Produk, Id_Pemesanan, Jumlah, Diskon) Values ('5', '5', '5', '50')
select 1 from dual;


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import database.koneksi;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import model.detail_pemesanan;
import model.kategori;
import model.kurir;
import model.pegawai;
import model.pelanggan;
import model.pemasok;
import model.pemesanan;
import model.produk;

/**
 *
 * @author IT
 */
public class transaksi {
    koneksi Koneksi;
    ArrayList<pelanggan> arrpelanggan;
    ArrayList<pegawai> arrpegawai;
    ArrayList<kurir> arrkurir;
    ArrayList<produk> arrproduk;
    ArrayList<pemesanan> arrpemesanan;
    
    public transaksi(){
        this.Koneksi = new koneksi();
        this.arrpelanggan = new ArrayList<>();
        this.arrpegawai = new ArrayList<>();
        this.arrkurir = new ArrayList<>();
        this.arrproduk = new ArrayList<>();
        this.arrpemesanan = new ArrayList<>();
    }
    public ArrayList<pelanggan> getdatapelanggan() throws SQLException{
        this.arrpelanggan.clear();
        
        ResultSet rs = this.Koneksi.GetData("SELECT * FROM pelanggan");
        while(rs.next()){
            pelanggan p = new pelanggan();
            p.setId_pelanggan(rs.getInt("ID_PELANGGAN"));
            p.setnama_depan(rs.getString("NAMA_DEPAN"));
            p.setnama_belakang(rs.getString("NAMA_BELAKANG"));
            p.settanggal_lahir(rs.getDate("TANGGAL_LAHIR"));
            p.setalamat(rs.getString("ALAMAT"));
            p.setkode_pos(rs.getInt("KODE_POS"));
            p.setno_telp(rs.getString("NO_TELP"));
        
            this.arrpelanggan.add(p);
        }
        return this.arrpelanggan;
    }
    
        public ArrayList<pegawai> getdatapegawai() throws SQLException{
        this.arrpegawai.clear();
        
        ResultSet rs = this.Koneksi.GetData("SELECT * FROM pegawai");
        while(rs.next()){
            pegawai p = new pegawai();
            p.setId_pegawai(rs.getInt("ID_PEGAWAI"));
            p.setnama_depan(rs.getString("NAMA_DEPAN"));
            p.setnama_belakang(rs.getString("NAMA_BELAKANG"));
            p.settanggal_lahir(rs.getDate("TANGGAL_LAHIR"));
            p.setalamat(rs.getString("ALAMAT"));
            p.setkode_pos(rs.getInt("KODE_POS"));
            p.setno_telp(rs.getString("NO_TELP"));
            
            this.arrpegawai.add(p);
        }
            
            return this.arrpegawai;
    }
        public ArrayList<kurir> getdatakurir() throws SQLException{
        this.arrkurir.clear();
        
        ResultSet rs = this.Koneksi.GetData("SELECT * FROM KURIR");
        while(rs.next()){
            kurir k = new kurir();
            k.setId_kurir(rs.getInt("ID_KURIR"));
            k.setNama_perusahaan(rs.getString("NAMA_PERUSAHAAN"));
            k.setNo_telp(rs.getString("NO_TELP"));
        
            this.arrkurir.add(k);
        }
        return this.arrkurir;
    }
        public ArrayList<produk> getdataproduk() throws SQLException{
        this.arrproduk.clear();
        
        ResultSet rs = this.Koneksi.GetData("SELECT * FROM produk JOIN kategori ON kategori.ID_kategori = produk.ID_kategori JOIN pemasok ON pemasok.ID_pemasok = produk.ID_pemasok");
        while(rs.next()){
            
            kategori k = new kategori();
            k.setId_kategori(rs.getInt("ID_kategori"));
            k.setNama_kategori(rs.getString("NAMA_KATEGORI"));
            
            pemasok pemasok = new pemasok();
            pemasok.setId_pemasok(rs.getInt("ID_PEMASOK"));
            pemasok.setNama_perusahaan(rs.getString("NAMA_PERUSAHAAN"));
            pemasok.setAlamat(rs.getString("ALAMAT"));
            pemasok.setKode_pos(rs.getInt("KODE_POS"));
            pemasok.setNo_telp(rs.getString("NO_TELP"));
    
            produk p = new produk();
            p.setId_produk(rs.getInt("ID_produk"));
            p.setKategori (k);
            p.setPemasok(pemasok);
            p.setNama_produk(rs.getString("NAMA_PRODUK"));
            p.setHarga_satuan(rs.getInt("HARGA_SATUAN"));
            p.setStok_produk(rs.getInt("STOK_PRODUK"));
            
        
            this.arrproduk.add(p);
        }
        return this.arrproduk;
    }
        public ArrayList<pemesanan>getdatapemesanan() throws SQLException{
            this.arrpemesanan.clear();
            ResultSet rs = this.Koneksi.GetData("SELECT PELANGGAN.ID_PELANGGAN, PELANGGAN.NAMA_DEPAN AS NAMA_DEPAN_PELANGGAN, PELANGGAN.NAMA_BELAKANG AS NAMA_BELAKANG_PELANGGAN, PELANGGAN.TANGGAL_LAHIR AS TANGGAL_LAHIR_PELANGGAN, PELANGGAN.ALAMAT AS ALAMAT_PELANGGAN, PELANGGAN.KODE_POS AS KODE_POS_PELANGGAN, PELANGGAN.NO_TELP AS NO_TELP_PELANGGAN, PEGAWAI.ID_PEGAWAI, PEGAWAI.NAMA_DEPAN AS NAMA_PEGAWAI, PEGAWAI.NAMA_BELAKANG AS NAMA_BELAKANG_PEGAWAI, PEGAWAI.TANGGAL_LAHIR AS TANGGAL_LAHIR_PEGAWAI, PEGAWAI.ALAMAT AS ALAMAT_PEGAWAI, PEGAWAI.KODE_POS AS KODE_POS_PEGAWAI, PEGAWAI.NO_TELP AS NO_TELP_PEGAWAI, PEMESANAN.*, KURIR.* FROM PEMESANAN JOIN PELANGGAN ON PEMESANAN.ID_PELANGGAN = PELANGGAN.ID_PELANGGAN JOIN KURIR ON PEMESANAN.ID_KURIR = KURIR.ID_KURIR JOIN PEGAWAI ON PEMESANAN.ID_PEGAWAI = PEGAWAI.ID_PEGAWAI ORDER BY ID_PEMESANAN DESC");
            while(rs.next()){
                pelanggan pelanggan = new pelanggan();
                pelanggan.setId_pelanggan(rs.getInt("ID_PELANGGAN"));
                pelanggan.setnama_depan(rs.getString("NAMA_DEPAN_PELANGGAN"));
                pelanggan.setnama_belakang(rs.getString("NAMA_BELAKANG_PELANGGAN"));
                pelanggan.settanggal_lahir(new Date (rs.getString("TANGGAL_LAHIR_PELANGGAN")));
                pelanggan.setalamat(rs.getString("ALAMAT_PELANGGAN"));
                pelanggan.setkode_pos(rs.getInt("KODE_POS_PELANGGAN"));
                pelanggan.setno_telp(rs.getString("NO_TELP_PELANGGAN"));
                
                pegawai pegawai = new pegawai ();
                pegawai.setId_pegawai(rs.getInt("ID_PEGAWAI"));
                pegawai.setnama_depan(rs.getString("NAMA_DEPAN_PEGAWAI"));
                pegawai.setnama_belakang(rs.getString("NAMA_BELAKANG_PEGAWAI"));
                pegawai.settanggal_lahir(new Date(rs.getString("TANGGAL_LAHIR_PEGAWAI")));
                pegawai.setalamat(rs.getString("ALAMAT_PEGAWAI"));
                pegawai.setkode_pos(rs.getInt("KODE_POS_PEGAWAI"));
                pegawai.setno_telp(rs.getString("NO_TELP_PEGAWAI"));
                
                kurir kurir = new kurir ();
                kurir.setId_kurir(rs.getInt("ID_KURIR"));
                kurir.setNama_perusahaan(rs.getString("NAMA_PERUSAHAAN"));
                kurir.setNo_telp(rs.getString("NO_TELP"));
                
                pemesanan pemesanan = new pemesanan();
                pemesanan.setId_pemesanan(rs.getInt("ID_PEMESANAN"));
                pemesanan.setPelanggan(pelanggan);
                pemesanan.setPegawai(pegawai);
                pemesanan.setKurir(kurir);
                pemesanan.setTanggal_pemesanan(new Date(rs.getString("TANGGAL_PEMESANAN")));
                pemesanan.setTanggal_pengiriman(new Date(rs.getString("TANGGAL_PENGIRIMAN")));
                pemesanan.setAlamat_pengirim(rs.getString("ALAMAT_PENGIRIMAN"));
                pemesanan.setHarga_total(rs.getDouble("HARGA_TOTAL"));

                ResultSet rsdetail_pemesanan = this.Koneksi.GetData("SELECT * FROM DETAIL_PEMESANAN JOIN PRODUK ON DETAIL_PEMESANAN.ID_PRODUK = PRODUK.ID_PRODUK JOIN PEMASOK ON PRODUK.ID_PEMASOK = PEMASOK.ID_PEMASOK JOIN KATEGORI ON PRODUK.ID_KATEGORI = KATEGORI.ID_KATEGORI WHERE DETAIL_PEMESANAN.ID_PEMESANAN = " + rs.getString("ID_PEMESANAN"));
                ArrayList <detail_pemesanan> dp = new ArrayList<>();
        
                while(rsdetail_pemesanan.next()){
                    pemasok pemasok = new pemasok();
                    pemasok.setId_pemasok(rsdetail_pemesanan.getInt("ID_PEMASOK"));
                    pemasok.setNama_perusahaan(rsdetail_pemesanan.getString("NAMA_PERUSAHAAN"));
                    pemasok.setAlamat(rsdetail_pemesanan.getString("ALAMAT"));
                    pemasok.setKode_pos(rsdetail_pemesanan.getInt("KODE_POS"));
                    pemasok.setNo_telp(rsdetail_pemesanan.getString("NO_TELP"));
                    
                    kategori kategori = new kategori ();
                    kategori.setId_kategori(rsdetail_pemesanan.getInt("ID_KATEGORI"));
                    kategori.setNama_kategori(rsdetail_pemesanan.getString("NO_TELP"));
                    
                    
                    
                    
                }
            }
            return this.arrpemesanan;
        }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement ;


/**
 *
 * @author IT
 */
public class koneksi {
    private Connection connect;
    private Statement db;
    private String database = "Kelpo16";
    
    public class Koneksi {

private Connection connect;
private Statement db;
private String database = "Kelpo16";
    }
public koneksi () {
    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        System.out.println("Class Driver Ditemukan");
        try {
            connect = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","Kelpo16", "Kelpo16");
            System.out.println("Koneksi Database sukses : ");
        } catch (SQLException se) {
            System.out.println("Koneksi Database Gagal : " + se);
        }
    } catch (ClassNotFoundException err) {
        System.out.println("Class Driver Tidak Ditemukan, Terjadi Kesalahan Pada : " + err);
        }
    }

public ResultSet GetData (String sql) {
    try{
        db = connect.createStatement (ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
        return db.executeQuery(sql);
    }catch(SQLException e) {
        return null;
    }
}

public int ManipulasiData (String sql) {
    try{
        db = connect.createStatement ();
        return db.executeUpdate(sql);
    }catch(SQLException e){
        return 0;
    }
    }
    }

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

import controller.transaksi;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.DefaultComboBoxModel;
import javax.swing.table.DefaultTableModel;
import model.detail_pemesanan;
import model.kurir;
import model.pegawai;
import model.pelanggan;
import model.produk;

/**
 *
 * @author IT
 */
public class transaksiview extends javax.swing.JFrame {
    private transaksi Transaksi;
    private ArrayList<detail_pemesanan> arrKeranjang;
    private Double Harga_Total;    
    
/**
     * Creates new form transaksiview
     */
    public transaksiview() throws SQLException {
        initComponents();
        this.Transaksi = new transaksi();
        this.arrKeranjang = new ArrayList<>();
        this.Harga_Total = 0.0;
        this.showComboBoxpelanggan();
        this.showComboBoxpegawai();
        this.showComboBoxkurir();
        this.showComboBoxproduk();
        this.showTabelKeranjang();
        this.showHargaTotal();
    }
    private void showComboBoxpelanggan() throws SQLException {
        DefaultComboBoxModel dtmpelanggan = new DefaultComboBoxModel();
        
        for(pelanggan p : this.Transaksi.getdatapelanggan()){
            dtmpelanggan.addElement(p.getnama_depan()+ " " + p.getnama_belakang());
        }
        this.cbpelanggan.setModel(dtmpelanggan);
    }
    private void showComboBoxpegawai() throws SQLException{
        DefaultComboBoxModel dcbmpegawai = new DefaultComboBoxModel();
        
        for(pegawai p : this.Transaksi.getdatapegawai()){
            dcbmpegawai.addElement(p.getnama_depan() + " " + p.getnama_belakang());
        }
        this.cbpegawai.setModel(dcbmpegawai);
    }
    private void showComboBoxkurir() throws SQLException{
        DefaultComboBoxModel dcbmkurir = new DefaultComboBoxModel();
        
        for(kurir k : this.Transaksi.getdatakurir()){
            dcbmkurir.addElement(k.getNama_perusahaan());
        }
        this.cbkurir.setModel(dcbmkurir);
    }
    private void showComboBoxproduk() throws SQLException{
        DefaultComboBoxModel dcbmproduk = new DefaultComboBoxModel();
        
        for(produk p : this.Transaksi.getdataproduk()){
            dcbmproduk.addElement(p.getNama_produk()+ "(" + p.getStok_produk()+ ")");
        }
        this.cbproduk.removeAll();
        this.cbproduk.setModel(dcbmproduk);
    }
    private void showTabelKeranjang(){
        DefaultTableModel dtmkeranjang = new DefaultTableModel(new String[]{"Nama Produk", "Harga Satuan", "Jumlah", "Diskon"}, 0);
    dtmkeranjang.setRowCount(0);
    
    for(detail_pemesanan dp : this.arrKeranjang){
        dtmkeranjang.addRow(new String[]{dp.getProduk().getNama_produk().toString(), dp.getProduk().getHarga_satuan().toString(), dp.getJumlah().toString(), dp.getDiskon().toString()});
    }
    this.tblkeranjang.setModel(dtmkeranjang);
    }
    
    private void showHargaTotal(){
        this.tftotalharga.setText(String.valueOf(this.Harga_Total));
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">                          
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        cbpelanggan = new javax.swing.JComboBox<>();
        cbpegawai = new javax.swing.JComboBox<>();
        cbkurir = new javax.swing.JComboBox<>();
        tfalamat = new javax.swing.JTextField();
        tftanggalpengiriman = new javax.swing.JTextField();
        cbproduk = new javax.swing.JComboBox<>();
        tfjumlah = new javax.swing.JTextField();
        tfdiskon = new javax.swing.JTextField();
        tftotalharga = new javax.swing.JTextField();
        jScrollPane1 = new javax.swing.JScrollPane();
        tblkeranjang = new javax.swing.JTable();
        jScrollPane2 = new javax.swing.JScrollPane();
        tblpesanan = new javax.swing.JTable();
        jScrollPane3 = new javax.swing.JScrollPane();
        tadetail_pemesanan = new javax.swing.JTextArea();
        btntambah = new javax.swing.JButton();
        btnsimpan = new javax.swing.JButton();
        btnlihat_detail = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setText("pelanggan");

        jLabel2.setText("pegawai");

        jLabel3.setText("kurir");

        jLabel4.setText("alamat");

        jLabel5.setText("tanggal pengiriman");

        jLabel6.setText("produk");

        jLabel7.setText("jumlah");

        jLabel8.setText("diskon");

        jLabel9.setText("total harga");

        cbpelanggan.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Item 1", "Item 2", "Item 3", "Item 4" }));
        cbpelanggan.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cbpelangganActionPerformed(evt);
            }
        });

        cbpegawai.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Item 1", "Item 2", "Item 3", "Item 4" }));

        cbkurir.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Item 1", "Item 2", "Item 3", "Item 4" }));

        tftanggalpengiriman.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                tftanggalpengirimanActionPerformed(evt);
            }
        });

        cbproduk.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Item 1", "Item 2", "Item 3", "Item 4" }));

        tblkeranjang.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane1.setViewportView(tblkeranjang);

        tblpesanan.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane2.setViewportView(tblpesanan);

        tadetail_pemesanan.setColumns(20);
        tadetail_pemesanan.setRows(5);
        jScrollPane3.setViewportView(tadetail_pemesanan);

        btntambah.setText("tambah");
        btntambah.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btntambahActionPerformed(evt);
            }
        });

        btnsimpan.setText("simpan");

        btnlihat_detail.setText("lihat detail");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(btntambah)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel1)
                                    .addComponent(jLabel2)
                                    .addComponent(jLabel3)
                                    .addComponent(jLabel4)
                                    .addComponent(jLabel5)
                                    .addComponent(jLabel6)
                                    .addComponent(jLabel7)
                                    .addComponent(jLabel8))
                                .addGap(34, 34, 34))
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                .addComponent(jLabel9)
                                .addGap(72, 72, 72)))
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(tftotalharga, javax.swing.GroupLayout.PREFERRED_SIZE, 90, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                .addComponent(cbkurir, 0, 90, Short.MAX_VALUE)
                                .addComponent(cbpegawai, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(cbpelanggan, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(tfalamat)
                                .addComponent(tftanggalpengiriman)
                                .addComponent(cbproduk, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(tfjumlah)
                                .addComponent(tfdiskon)))))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 332, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(btnsimpan)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 16, Short.MAX_VALUE)
                        .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 358, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, 358, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(72, 72, 72))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(btnlihat_detail)
                .addGap(209, 209, 209))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createSequentialGroup()
                                        .addContainerGap()
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                            .addComponent(jLabel1)
                                            .addComponent(cbpelanggan, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                                        .addGap(7, 7, 7)
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                            .addComponent(jLabel2)
                                            .addComponent(cbpegawai, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                            .addComponent(jLabel3)
                                            .addComponent(cbkurir, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                            .addComponent(jLabel4)
                                            .addComponent(tfalamat, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                            .addComponent(jLabel5)
                                            .addComponent(tftanggalpengiriman, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                                        .addGap(35, 35, 35)
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                                    .addComponent(tfjumlah, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                                            .addComponent(jLabel6)
                                                            .addComponent(cbproduk, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                                        .addComponent(jLabel7)))
                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                                .addComponent(jLabel8))
                                            .addComponent(tfdiskon, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                        .addComponent(btntambah))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(74, 74, 74)
                                        .addComponent(btnsimpan)))
                                .addGap(11, 11, 11)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                    .addComponent(tftotalharga, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(jLabel9)))
                            .addGroup(layout.createSequentialGroup()
                                .addContainerGap()
                                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)))
                        .addGap(8, 8, 8))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 307, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)))
                .addComponent(btnlihat_detail)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jScrollPane3, javax.swing.GroupLayout.DEFAULT_SIZE, 218, Short.MAX_VALUE)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>                        

    private void cbpelangganActionPerformed(java.awt.event.ActionEvent evt) {                                            
        // TODO add your handling code here:
    }                                           

    private void tftanggalpengirimanActionPerformed(java.awt.event.ActionEvent evt) {                                                    
        // TODO add your handling code here:
    }                                                   
    
    private void btntambahActionPerformed(java.awt.event.ActionEvent evt) {                                          

    try {
        detail_pemesanan dp = new detail_pemesanan();
        dp.setJumlah(Integer.parseInt(this.tfjumlah.getText()));
        dp.setProduk(this.Transaksi.getdataproduk().get(this.cbproduk.getSelectedIndex()));
  
        if(this.tfdiskon.getText().equals("")){
            dp.setDiskon(Double.parseDouble("0"));
            Harga_Total += this.Transaksi.getdataproduk().get(this.cbproduk.getSelectedIndex()).getHarga_satuan() * Integer.parseInt (this.tfjumlah.getText());
        }else{
            Double diskon = new Double(this.tfdiskon.getText());
            Integer TotalHargaSebelumDiskon = this.Transaksi.getdataproduk().get(cbproduk.getSelectedIndex()).getHarga_satuan() * Integer.parseInt (this.tfjumlah.getText());
            Double HargaDiskon = TotalHargaSebelumDiskon * diskon;
            dp.setDiskon(diskon);
            Harga_Total += TotalHargaSebelumDiskon - HargaDiskon;
        }
    this.showHargaTotal();
    this.arrKeranjang.add(dp);
    this.showTabelKeranjang();
    this.tfdiskon.setText (" ");
    this.tfdiskon.setText(" ");
        
    } catch (SQLException ex) {
        Logger.getLogger(transaksiview.class.getName()).log(Level.SEVERE, null, ex);
    }
    }                                         

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(transaksiview.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(transaksiview.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(transaksiview.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(transaksiview.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                try {
                    new transaksiview().setVisible(true);
                } catch (SQLException ex) {
  Logger.getLogger(transaksiview.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        });
    }

    // Variables declaration - do not modify                     
    private javax.swing.JButton btnlihat_detail;
    private javax.swing.JButton btnsimpan;
    private javax.swing.JButton btntambah;
    private javax.swing.JComboBox<String> cbkurir;
    private javax.swing.JComboBox<String> cbpegawai;
    private javax.swing.JComboBox<String> cbpelanggan;
    private javax.swing.JComboBox<String> cbproduk;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JTextArea tadetail_pemesanan;
    private javax.swing.JTable tblkeranjang;
    private javax.swing.JTable tblpesanan;
    private javax.swing.JTextField tfalamat;
    private javax.swing.JTextField tfdiskon;
    private javax.swing.JTextField tfjumlah;
    private javax.swing.JTextField tftanggalpengiriman;
    private javax.swing.JTextField tftotalharga;
    // End of variables declaration                   
  
}


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package oraclejava;

import database.koneksi;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import view.transaksiview;

/**
 *
 * @author IT
 */
public class Oraclejava {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        try {
            new transaksiview().show();
        } catch (SQLException ex) {
   Logger.getLogger(Oraclejava.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author IT
 */
public class detail_pemesanan {
    private produk Produk;
    private Integer jumlah;
    private Double diskon;

    public produk getProduk() {
        return Produk;
    }

    public void setProduk(produk Produk) {
        this.Produk = Produk;
    }

    public Integer getJumlah() {
        return jumlah;
    }

    public void setJumlah(Integer jumlah) {
        this.jumlah = jumlah;
    }

    public Double getDiskon() {
        return diskon;
    }

    public void setDiskon(Double diskon) {
        this.diskon = diskon;
    }
    
}


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author IT
 */
public class kategori {
    private Integer id_kategori;
    private String nama_kategori;

    public Integer getId_kategori() {
        return id_kategori;
    }

    public void setId_kategori(Integer id_kategori) {
        this.id_kategori = id_kategori;
    }

    public String getNama_kategori() {
        return nama_kategori;
    }

    public void setNama_kategori(String nama_kategori) {
        this.nama_kategori = nama_kategori;
    }
    
}



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author IT
 */
public class kurir {
    private Integer Id_kurir;
    private String nama_perusahaan;
    private String no_telp;

    public Integer getId_kurir() {
        return Id_kurir;
    }

    public void setId_kurir(Integer Id_kurir) {
        this.Id_kurir = Id_kurir;
    }

    public String getNama_perusahaan() {
        return nama_perusahaan;
    }

    public void setNama_perusahaan(String nama_perusahaan) {
        this.nama_perusahaan = nama_perusahaan;
    }

    public String getNo_telp() {
        return no_telp;
    }

    public void setNo_telp(String no_telp) {
        this.no_telp = no_telp;
    }
    
}



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import java.util.Date;

/**
 *
 * @author IT
 */
public class pegawai {
    private Integer Id_pegawai;
    private String nama_depan;
    private String nama_belakang;
    private Date tanggal_lahir;
    private String alamat;
    private Integer kode_pos;
    private String no_telp;
    
    public Integer getId_pegawai(){
        return Id_pegawai;
    }
    
    public void setId_pegawai(Integer Id_pegawai) {
    this.Id_pegawai = Id_pegawai;
}
    public String getnama_depan(){
        return nama_depan;
}
    public void setnama_depan(String nama_depan) {
    this.nama_depan = nama_depan;
}
    public String getnama_belakang(){
        return nama_belakang;
}
    public void setnama_belakang(String nama_belakang) {
    this.nama_belakang = nama_belakang;
}
     public Date gettanggal_lahir (){
        return tanggal_lahir;
}
    public void settanggal_lahir(Date tanggal_lahir) {
    this.tanggal_lahir = tanggal_lahir;
}
    public String getalamat (){
        return alamat;
}
    public void setalamat(String alamat) {
    this.alamat = alamat;
}
    public Integer getkode_pos (){
        return kode_pos;
}
    public void setkode_pos(Integer kode_pos) {
    this.kode_pos = kode_pos;
    }
    public String getno_telp(){
        return no_telp;
}
    public void setno_telp(String no_telp) {
    this.no_telp = no_telp;
    }
}



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author IT
 */
public class pemasok {
    private Integer Id_pemasok;
    private String nama_perusahaan;
    private String alamat;
    private Integer kode_pos;
    private String no_telp;

    public Integer getId_pemasok() {
        return Id_pemasok;
    }

    public void setId_pemasok(Integer Id_pemasok) {
        this.Id_pemasok = Id_pemasok;
    }

    public String getNama_perusahaan() {
        return nama_perusahaan;
    }

    public void setNama_perusahaan(String nama_perusahaan) {
        this.nama_perusahaan = nama_perusahaan;
    }

    public String getAlamat() {
        return alamat;
    }

    public void setAlamat(String alamat) {
        this.alamat = alamat;
    }

    public Integer getKode_pos() {
        return kode_pos;
    }

    public void setKode_pos(Integer kode_pos) {
        this.kode_pos = kode_pos;
    }

    public String getNo_telp() {
        return no_telp;
    }

    public void setNo_telp(String no_telp) {
        this.no_telp = no_telp;
    }
    
}


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import java.util.Date;

/**
 *
 * @author IT
 */
public class pelanggan {
    private Integer Id_pelanggan;
    private String nama_depan;
    private String nama_belakang;
    private Date tanggal_lahir;
    private String alamat;
    private Integer kode_pos;
    private String no_telp;
   
    public Integer getId_pelanggan() {
        return Id_pelanggan;
    }
    public void setId_pelanggan(Integer Id_pelanggan) {
        this.Id_pelanggan = Id_pelanggan;
    }
    public String getnama_depan() {
        return nama_depan;
    }
    public void setnama_depan(String nama_depan) {
        this.nama_depan = nama_depan;
    }
    public String getnama_belakang() {
        return nama_belakang;
    }
    public void setnama_belakang (String nama_belakang) {
        this.nama_belakang = nama_belakang;
    }
    public Date gettanggal_lahir(){
        return tanggal_lahir;
    }
    public void settanggal_lahir(Date tanggal_lahir) {
        this.tanggal_lahir = tanggal_lahir;
    }
    public String getalamat(){
        return alamat;
    }
    public void setalamat(String alamat){
        this.alamat = alamat;
    }
    public Integer getkode_pos(){
        return kode_pos;
    }
    public void setkode_pos (Integer kode_pos){
        this.kode_pos = kode_pos;
    }
    public String getno_telp(){
        return no_telp;
    }
    public void setno_telp(String no_telp){
        this.no_telp = no_telp;
    }
}



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author IT
 */
public class pemesanan {
    private Integer Id_pemesanan;
    private pelanggan Pelanggan;
    private pegawai Pegawai;
    private kurir Kurir;
    private Date tanggal_pemesanan;
    private Date tanggal_pengiriman;
    private String alamat_pengirim;
    private Double harga_total;
    private ArrayList<detail_pemesanan>arrdetail_pemesanan;

    public Integer getId_pemesanan() {
        return Id_pemesanan;
    }

    public void setId_pemesanan(Integer Id_pemesanan) {
        this.Id_pemesanan = Id_pemesanan;
    }

    public pelanggan getPelanggan() {
        return Pelanggan;
    }

    public void setPelanggan(pelanggan Pelanggan) {
        this.Pelanggan = Pelanggan;
    }

    public pegawai getPegawai() {
        return Pegawai;
    }

    public void setPegawai(pegawai Pegawai) {
        this.Pegawai = Pegawai;
    }

    public kurir getKurir() {
        return Kurir;
    }

    public void setKurir(kurir Kurir) {
        this.Kurir = Kurir;
    }

    public Date getTanggal_pemesanan() {
        return tanggal_pemesanan;
    }

    public void setTanggal_pemesanan(Date tanggal_pemesanan) {
        this.tanggal_pemesanan = tanggal_pemesanan;
    }

    public Date getTanggal_pengiriman() {
        return tanggal_pengiriman;
    }

    public void setTanggal_pengiriman(Date tanggal_pengiriman) {
        this.tanggal_pengiriman = tanggal_pengiriman;
    }

    public String getAlamat_pengirim() {
        return alamat_pengirim;
    }

    public void setAlamat_pengirim(String alamat_pengirim) {
        this.alamat_pengirim = alamat_pengirim;
    }

    public Double getHarga_total() {
        return harga_total;
    }

    public void setHarga_total(Double harga_total) {
        this.harga_total = harga_total;
    }

    public ArrayList<detail_pemesanan> getArrdetail_pemesanan() {
        return arrdetail_pemesanan;
    }

    public void setArrdetail_pemesanan(ArrayList<detail_pemesanan> arrdetail_pemesanan) {
        this.arrdetail_pemesanan = arrdetail_pemesanan;
    }
    
}



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author IT
 */
public class produk {
    private Integer Id_produk;
    private pemasok Pemasok;
    private kategori Kategori;
    private String nama_produk;
    private Integer harga_satuan;
    private Integer stok_produk;

    public Integer getId_produk() {
        return Id_produk;
    }

    public void setId_produk(Integer Id_produk) {
        this.Id_produk = Id_produk;
    }

    public pemasok getPemasok() {
        return Pemasok;
    }

    public void setPemasok(pemasok Pemasok) {
        this.Pemasok = Pemasok;
    }

    public kategori getKategori() {
        return Kategori;
    }

    public void setKategori(kategori Kategori) {
        this.Kategori = Kategori;
    }

    public String getNama_produk() {
        return nama_produk;
    }

    public void setNama_produk(String nama_produk) {
        this.nama_produk = nama_produk;
    }

    public Integer getHarga_satuan() {
        return harga_satuan;
    }

    public void setHarga_satuan(Integer harga_satuan) {
        this.harga_satuan = harga_satuan;
    }

    public Integer getStok_produk() {
        return stok_produk;
    }

    public void setStok_produk(Integer stok_produk) {
        this.stok_produk = stok_produk;
    }
    
}


