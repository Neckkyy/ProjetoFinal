/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.DAO;
//imports da classe Roupa, da classe ConectaDB, das bibliotecas SQLs e das bibliotecas referentes a listas
import Model.Roupa;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import util.ConectaDB;
/**
 *
 * @author Carlos Eduardo
 */
public class RoupaDAO {
    
    public boolean insereRoupa(Roupa r) throws ClassNotFoundException{
        Connection conexao = null;
        try{
            //estabelecendo conexão
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();
            //comando sql
            String sql = "insert into roupa(nomeroupa, valorroupa, marcaroupa) values('" + r.getNomeroupa() + "', " 
                    + r.getValorroupa() + ", '" + r.getMarcaroupa() + "');";
            //execução do comando
            stmt.executeUpdate(sql);
            return true;
        }
        catch(SQLException e){
            System.out.println("Erro:" + e);
            return false;
        }
    }
    
    public boolean deletaRoupa(Roupa r) throws ClassNotFoundException{
        Connection conexao = null;
        try{
            //estabelecendo conexão
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();
            //comando sql
            String sql = "Delete from roupa where id = " + r.getId();
            //execução do comando
            stmt.executeUpdate(sql);
            return true;
        }
        catch(SQLException e){
            System.out.println("Erro:" + e);
            return false;
        }
    }
    
    public boolean alteraRoupa(Roupa r) throws ClassNotFoundException{
        Connection conexao = null;
        try{
            //estabelecendo conexão
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();
            //comando sql
            String sql = "Update roupa set nomeroupa = '" + r.getNomeroupa() + 
                    "', valorroupa = " + r.getValorroupa() + ", marcaroupa = '" + r.getMarcaroupa() + "' where id = " + r.getId();
            //execução do comando
            stmt.executeUpdate(sql);
            return true;
        }
        catch(SQLException e){
            System.out.println("Erro:" + e);
            return false;
        }
    }
    
    public List consultaRoupaNome(Roupa r) throws ClassNotFoundException{
        Connection conexao = null;
        //criação da lista para armazenar os resultados do Select
        List listaRoupa = new ArrayList();
        try{
            //estabelecendo conexão
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();
            //comando sql
            String sql = "Select * from roupa where nomeroupa = '" + r.getNomeroupa() + "';";
            //execução do comando
            ResultSet rs = stmt.executeQuery(sql);
            //varíavel que armazenará a quantidade de ocorrências no banco
            int registro = 0;
            //Fazendo um loop que criará novas instâncias de Roupas e armazenará em uma lista
            while(rs.next()){
                Roupa r1 = new Roupa();
                r1.setId(Integer.parseInt(rs.getString("id")));
                r1.setNomeroupa(rs.getString("nomeroupa"));
                r1.setValorroupa(Double.parseDouble(rs.getString("valorroupa")));
                r1.setMarcaroupa(rs.getString("marcaroupa"));
                listaRoupa.add(r1);
                registro ++;
            }
            //fechando conexão
            conexao.close();
            
            if(registro == 0){
                return null;
            }
            else{
                return listaRoupa;
            }
        }
        catch(SQLException e){
            System.out.println("Erro:" + e);
            return null;
        }
    }
    
    public List consultaRoupaMarca(Roupa r) throws ClassNotFoundException{
        Connection conexao = null;
        //criação da lista para armazenar os resultados do Select
        List listaRoupa = new ArrayList();
        try{
            //estabelecendo conexão
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();
            //comando sql
            String sql = "Select * from roupa where marcaroupa = '" + r.getMarcaroupa()+ "';";
            //execução do comando
            ResultSet rs = stmt.executeQuery(sql);
            //varíavel que armazenará a quantidade de ocorrências no banco
            int registro = 0;
            //Fazendo um loop que criará novas instâncias de Roupas e armazenará em uma lista
            while(rs.next()){
                Roupa r1 = new Roupa();
                r1.setId(Integer.parseInt(rs.getString("id")));
                r1.setNomeroupa(rs.getString("nomeroupa"));
                r1.setValorroupa(Double.parseDouble(rs.getString("valorroupa")));
                r1.setMarcaroupa(rs.getString("marcaroupa"));
                listaRoupa.add(r1);
                registro ++;
            }
            
            conexao.close();
            
            if(registro == 0){
                return null;
            }
            else{
                return listaRoupa;
            }
        }
        catch(SQLException e){
            System.out.println("Erro:" + e);
            return null;
        }
    }
    
    public List consultaRoupa(Roupa r) throws ClassNotFoundException{
        Connection conexao = null;
        //criação da lista para armazenar os resultados do Select
        List listaRoupa = new ArrayList();
        try{
            //estabelecendo conexão
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();
            //comando sql
            String sql = "Select * from roupa where id = " + r.getId() + ";";
            //execução do comando
            ResultSet rs = stmt.executeQuery(sql);
            //varíavel que armazenará a quantidade de ocorrências no banco
            int registro = 0;
            //Fazendo um loop que criará novas instâncias de Roupas e armazenará em uma lista
            while(rs.next()){
                r.setId(Integer.parseInt(rs.getString("id")));
                r.setNomeroupa(rs.getString("nomeroupa"));
                r.setValorroupa(Double.parseDouble(rs.getString("valorroupa")));
                r.setMarcaroupa(rs.getString("marcaroupa"));
                listaRoupa.add(r);
                registro ++;
            }
            
            conexao.close();
            
            if(registro == 0){
                return null;
            }
            else{
                return listaRoupa;
            }
        }
        catch(SQLException e){
            System.out.println("Erro:" + e);
            return null;
        }
    }
    
    public List consultaRoupaGeral() throws ClassNotFoundException{
        Connection conexao = null;
        //criação da lista para armazenar os resultados do Select
        List listaRoupa = new ArrayList();
        try{
            //estabelecendo conexão
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();
            //comando sql
            String sql = "Select * from roupa;";
            //execução do comando
            ResultSet rs = stmt.executeQuery(sql);
            //varíavel que armazenará a quantidade de ocorrências no banco
            int registro = 0;
            //Fazendo um loop que criará novas instâncias de Roupas e armazenará em uma lista
            while(rs.next()){
                Roupa r = new Roupa();
                r.setId(Integer.parseInt(rs.getString("id")));
                r.setNomeroupa(rs.getString("nomeroupa"));
                r.setValorroupa(Double.parseDouble(rs.getString("valorroupa")));
                r.setMarcaroupa(rs.getString("marcaroupa"));
                listaRoupa.add(r);
                registro ++;
            }
            
            conexao.close();
            
            if(registro == 0){
                return null;
            }
            else{
                return listaRoupa;
            }
        }
        catch(SQLException e){
            System.out.println("Erro:" + e);
            return null;
        }
    }
}
