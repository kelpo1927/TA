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
