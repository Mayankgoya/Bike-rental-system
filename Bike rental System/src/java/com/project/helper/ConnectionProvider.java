
package com.project.helper;

import java.sql.*;

public class ConnectionProvider 
{
    private static Connection con;
    
    public static Connection getConnection()
    {
        try
        {
            if(con==null)
            {
                // Driver class load
                Class.forName("com.mysql.jdbc.Driver");
            
                String url="jdbc:mysql://localhost:3306?user=root&password=12345";
                
                //establish connection
                con=DriverManager.getConnection(url);
            
            }
        } 
        catch (Exception e) 
        {
            System.out.println("connection fail");
            e.printStackTrace();
        }
        return con;
    }
}
