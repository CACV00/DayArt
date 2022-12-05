/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import java.sql.*;


/**
 *
 * @author daniel laiton
 */
public class conexion {
    
    Connection con;
    public conexion(){
    
        
        try {
          Class.forName("com.mysql.cj.jdbc.Driver");
          con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dalyart","root","");
        } catch (Exception e) {
            
            System.out.println("error"+e);
            
        } 
        
        
    }
    
    public Connection getConnection (){
    
        return con;
        
    }
    
}
