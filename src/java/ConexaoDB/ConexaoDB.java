package ConexaoDB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author ivanyuratakano
 */
public class ConexaoDB {
    
    public static Connection getConexao() throws ClassNotFoundException, SQLException{        
        Connection conn = null;
        try {
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/NextSoft", "root", "12345678"); 
            
        } catch (Exception e) {
        }      
        return  conn;
    } 
     
}
