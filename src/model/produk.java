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