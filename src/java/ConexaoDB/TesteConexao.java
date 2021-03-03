/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ConexaoDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author ivanyuratakano
 */
public class TesteConexao {

    public static void main(String[] args) {
        
        try {
                Connection con = ConexaoDB.getConexao();
                String query = "select * from cliente";
                PreparedStatement ps = con.prepareStatement(query);
                ResultSet rs = ps.executeQuery();
                while (rs.next()){
                    String nome = rs.getString("nome");
                    Long cpf = rs.getLong("cpf");
                    String email = rs.getString("email");
                    Long numero = rs.getLong("numero");
                    System.out.println(nome);
                    System.out.println(cpf);
                    System.out.println(email);
                    System.out.println(numero);
                }
                
            } catch (Exception e) {
            }
           
                
     }
}
