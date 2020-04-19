/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author KARA
 */
public class Veritabani {
    String URL = "jdbc:mysql://localhost?characterEncoding=UTF-8&serverTimezone=UTC";
    
    Connection conn = null;
    Statement stmt = null;
    

    public Veritabani(){
        try{
            conn = DriverManager.getConnection(URL, "root", "");
            stmt = conn.createStatement();
            
           
            stmt.executeUpdate(String.format("USE %s", "reservation"));
            
        }catch(SQLException e){
            e.printStackTrace();
        }
    }
    
    
    // bütün kullanıcıları getirir.
    public ResultSet getUsers(){
        ResultSet rs = null;
        try {
            rs = stmt.executeQuery("SELECT * FROM users");
            
        } catch (SQLException ex) {
            Logger.getLogger(Veritabani.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
    
    public boolean addUser(String adi, String soyadi, String telefon, String rezTarih, String rezZamani, String email){
        String sql = String.format("INSERT INTO users (Adi, Soyadi, Telefon, RezTarih, RezZamani, Email) VALUES('%s', '%s', '%s', '%s', '%s', '%s')", adi, soyadi, telefon, rezTarih, rezZamani, email);
        System.out.println(sql);
        try {
            if(stmt.executeUpdate(sql) == 1){
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(Veritabani.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}
