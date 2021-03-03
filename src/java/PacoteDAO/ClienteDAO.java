/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PacoteDAO;

import ConexaoDB.ConexaoDB;
import Entidades.Cliente;
import PacoteServlet.ServletDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ivanyuratakano
 */
public class ClienteDAO {
    public static List<Cliente> getClientes() {
        List<Cliente> listaClientes = new ArrayList();
        try {
            Connection con = ConexaoDB.getConexao();
            String query = "select * from cliente";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                String nome = rs.getString("nome");   
                Long cpf = rs.getLong("cpf");
                String email = rs.getString("email");                    
                String telefone = rs.getString("telefone");
                String logradouro = rs.getString("logradouro");
                String numero = rs.getString("numero");
                String complemento = rs.getString("complemento");
                String bairro = rs.getString("bairro");
                String cidade = rs.getString("cidade");
                String estado = rs.getString("estado");
                listaClientes.add(new Entidades.Cliente(nome, cpf, email, telefone, logradouro, numero, complemento, bairro, cidade, estado));
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ServletDB.class.getName()).log(Level.SEVERE, null, ex);
            
        }
        return listaClientes;
    }

    public static void addCliente(Cliente cliente) throws ClassNotFoundException, SQLException {
        Connection con = ConexaoDB.getConexao();
        String query = "insert into cliente(nome, cpf, email, telefone, logradouro, numero, complemento, bairro, cidade, estado) "
                + "values (?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setString(1, cliente.getNome());
        ps.setLong(2, cliente.getCpf());
        ps.setString(3, cliente.getEmail());
        ps.setString(4, cliente.getTelefone());
        ps.setString(5, cliente.getLogradouro());
        ps.setString(6, cliente.getNumero());
        ps.setString(7, cliente.getComplemento());
        ps.setString(8, cliente.getBairro());
        ps.setString(9, cliente.getCidade());
        ps.setString(10, cliente.getEstado());
        ps.execute();
    }

    public static void updateCliente(Cliente cliente) throws ClassNotFoundException, SQLException {
        Connection con = ConexaoDB.getConexao();
        String query = "update cliente set nome=?,email=?,telefone=?,logradouro=?, numero=?, completo=?, bairro=?, cidadew=?, estado=? where cpf=?";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setString(1, cliente.getNome());
        ps.setString(2, cliente.getEmail());
        ps.setString(3, cliente.getTelefone());
        ps.setString(4, cliente.getLogradouro());
        ps.setString(5, cliente.getNumero());
        ps.setString(6, cliente.getComplemento());
        ps.setString(7, cliente.getBairro());
        ps.setString(8, cliente.getCidade());
        ps.setString(9, cliente.getEstado());
        ps.setLong(10, cliente.getCpf());
        ps.execute();
    }
    
    public static void deleteCliente(Long cpf) throws ClassNotFoundException, SQLException {
        Connection con = ConexaoDB.getConexao();
        String query = "delete from cliente where cpf=?";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setLong(1, cpf);
        ps.execute();
    }

    public static Cliente getCliente(Long cpf) {
        Cliente cliente = null;
        try {
            Connection con = ConexaoDB.getConexao();
            String query = "select * from cliente where cpf=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setLong(1, cpf);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String nome = rs.getString("nome");
                String email = rs.getString("email");
                String telefone = rs.getString("telefone");
                String logradouro = rs.getString("logradouro");
                String numero = rs.getString("numero");
                String complemento = rs.getString("complemento");
                String bairro = rs.getString("bairro");
                String cidade = rs.getString("cidade");
                String estado = rs.getString("estado");
                cliente = new Entidades.Cliente(nome, cpf, email, telefone, logradouro, numero, complemento, bairro, cidade, estado);
            }

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ServletDB.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ServletDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return cliente;
    }
}
