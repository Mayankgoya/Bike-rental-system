
package com.project.entities;


public class User 
{
    private int id;
    private String name;
    private String password;
    private String mobile;
    private String gender;
    private String email;

    
    public User(int id ,String name, String password, String mobile, String gender , String email) 
    {
        this.id = id;
        this.name = name;
        this.password = password;
        this.mobile = mobile;
        this.gender = gender;
         this.email = email;
    }

    public User() {
    }
    
    public User(String name, String password, String mobile, String gender , String email) 
    {
       
        this.name = name;
        this.password = password;
        this.mobile = mobile;
        this.gender = gender;
         this.email = email;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}    
    
    

