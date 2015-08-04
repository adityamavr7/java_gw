package newpackage;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author c0652050
 */
public class Database {
    String url="jdbc:as400:174.79.32.158";
    String userName="IBM81";
    String password="IBM81";
    
    public Connection getConnection(){
        Connection con=null;
        try {
            Class.forName("com.ibm.as400.access.AS400JDBCDriver");
        } catch (ClassNotFoundException e) {
            System.out.println(e.getMessage());
        }
        
        try {
            con=DriverManager.getConnection(url, userName, password);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return con;
    }
    
    public void insertUsers(String first_name,String last_name,String donar_list,String phone,String email){
        try {
            Connection con=getConnection();
            String query="INSERT INTO donars_list(first_name,last_name,donar_list,phone,email) VALUES(?,?,?,?,?)";
            PreparedStatement stmt=con.prepareStatement(query);
            stmt.setString(1, first_name);
            stmt.setString(2, last_name);
            stmt.setString(3, donar_list);
            stmt.setString(4, phone);            
            stmt.setString(5, email);
            stmt.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    
    public ResultSet display(){
        ResultSet rs=null;
        try {
            Connection con=getConnection();
            String query="SELECT * FROM donars_list";
            PreparedStatement stmt=con.prepareStatement(query);
            rs=stmt.executeQuery();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return rs;
    }
    
    
}
