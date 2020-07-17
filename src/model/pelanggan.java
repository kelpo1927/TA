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

