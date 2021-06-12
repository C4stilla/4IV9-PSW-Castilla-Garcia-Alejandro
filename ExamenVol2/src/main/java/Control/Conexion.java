/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author C4stilla
 */
package Control;

import java.sql.*;

public class Conexion {
    
    public static Connection getConexion() throws ClassNotFoundException{
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String url, userName, password;
            url = "jdbc:mysql://localhost/examen";
            userName = "root";
            password = "3123";
            return DriverManager.getConnection(url, userName, password);
        
        }catch(SQLException sq){
            System.out.println("Error al conectar a la BD");
            System.out.println(sq.getMessage());
        
        }catch(Exception e){
            System.out.println("Error no encontro la clase");
            System.out.println(e.getMessage());
        }
        return null;
    }
}