
package com.project.dao;

import com.project.entities.User;
import java.sql.*;

public class UserDao 
{
    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }
    
    // Method to insert user to data base
    public boolean saveUser(User user)
    {
        boolean f = false;
        try
        {
            String query = "insert into project.user(name , password , gender , mobile , mail) values (?,?,?,?,?)";
            PreparedStatement statement = this.con.prepareStatement(query);
            
            statement.setString(1, user.getName());
            statement.setString(2, user.getPassword());
            statement.setString(3, user.getGender());
            statement.setString(4, user.getMobile());
            statement.setString(5, user.getEmail());
                   
            statement.executeUpdate();
            f= true;
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
        return f;
    }
    
    // get user by user email and password
    
    public User getUserByUserEmail(String email , String password)
    {
        User user = null;
        
        try 
        {
            String query = "select * from project.user where mail = ? and password = ? ";
            PreparedStatement statement = con.prepareStatement(query);
            
            statement.setString(1, email);
            statement.setString(2, password);
            
           ResultSet result = statement.executeQuery();
           
           if(result.next())
           {
               user = new User();
               
               // data from DB
               String name = result.getString("name");
               // set to user name
               user.setName(name);
               
               user.setEmail(result.getString("mail"));
               user.setMobile(result.getString("mobile"));
               user.setGender(result.getString("gender"));
               user.setPassword(result.getString("password"));
           }
                     
        } 
        catch (Exception e)
        {
            e.printStackTrace();
        }
        
        return user;
    }
}
