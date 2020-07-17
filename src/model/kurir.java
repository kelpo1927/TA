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
