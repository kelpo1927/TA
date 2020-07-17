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
