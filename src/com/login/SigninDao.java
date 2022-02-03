package com.login;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;


public class SigninDao {
	
	 public int save(String sname,String pass,String email,String contact){
			int status=0;
			try{
	                        String url="jdbc:mysql://localhost:3306/sys";
	                        String uname="root";
	                        String upass="Gowsikkan@13";
	                        Class.forName("com.mysql.cj.jdbc.Driver");
	                        Connection con= DriverManager.getConnection(url,uname,upass);
	                        PreparedStatement ps=con.prepareStatement("insert into users(sname,email,contact,pass) values(?,?,?,?)");
	                        ps.setString(1,sname);
	                        ps.setString(2,email);
	                        ps.setString(3,contact);
	                        ps.setString(4,pass);
	                        status=ps.executeUpdate();
				            con.close();
	                    }catch(Exception e){
	                        System.out.println(e);
	                        
	                    }
	                    return status; 
	        }
}


