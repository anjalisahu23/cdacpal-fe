/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DB;

import com.pojo.Teacher;
import com.pojo.Student;
import com.pojo.User;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author anjali
 */
public class DB_Operation {
    
    String driver = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost/cdacpal";
    String user = "root";
    String passs = "";
    Connection con = null;
    
    
  /*  public static void main(String arg[])
    {
       DB_Operation db = new DB_Operation();
       db.insertRecord();
    }*/
  
    public void getCon()
    {
        try {
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url,user,passs);
            
        } 
        catch (SQLException ex) {
            Logger.getLogger(DB_Operation.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DB_Operation.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    //
    public boolean insertRecord(String name,String coursetype,String dob,String gender,String email,String password,String conpassword,String mobile,String address)
    {
        boolean b = false;
         int i=0; 
        Configuration cfg = new AnnotationConfiguration().configure("hibernate.cfg.xml");
        SessionFactory sf = cfg.buildSessionFactory();
        Session ss = sf.openSession();
        Transaction ts = ss.beginTransaction();
        User s = new User();
        i = 1;
        if(i ==1) 
        {
        s.setName(name);
        s.setCoursetype(coursetype);
        s.setDob(dob);
        s.setGender(gender);
        s.setEmail(email);
        s.setPassword(password);
        s.setConpassword(conpassword);
        s.setMobile(mobile);
        s.setAddress(address);                
        ss.save(s);       
        ts.commit();
        
        ss.close();
        b = true;
      }    
            System.out.println("Inserted successfully");
          
            return b;
    }
    public boolean checkRecords(String email,String pass)
    {
        ResultSet rs = null;
        boolean b=false;
        try {
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url,user,passs);
            String sql=("select * from User where email=? and password =?");
            PreparedStatement ps = con.prepareStatement(sql);
           
           ps.setString(1,email);
           ps.setString(2,pass);
           rs = ps.executeQuery();
           while(rs.next())
           {
               System.out.println("Login successfull @@@@@@@@@@");
               b=true;
           }
            
            
            

        } catch (ClassNotFoundException ex) {
            System.out.println("class not found");
            Logger.getLogger(DB_Operation.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            System.out.println("errorrrrrrrrrrrrrrrrrr");
            Logger.getLogger(DB_Operation.class.getName()).log(Level.SEVERE, null, ex);
        }
        return b;
    }
    
    
   public boolean closeConnection()
   {
       boolean b= false;
       if(con != null)
       {
           try {
               con.close();
               b=true;
           } catch (SQLException ex) {
               Logger.getLogger(DB_Operation.class.getName()).log(Level.SEVERE, null, ex);
           }
       }
       return b;
   }
   
    
    
   
 
   
    
}
