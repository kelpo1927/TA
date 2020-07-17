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
