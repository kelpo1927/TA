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
