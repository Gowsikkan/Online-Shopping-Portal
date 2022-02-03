package com.login;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;


public class detialsDao {
	
	 public int saves(String uname,String product,String quantity,String phone,String delivery){
			int status=0;
			try{
	                        String url="jdbc:mysql://localhost:3306/db2";
	                        String unamee="root";
	                        String upass="Gowsikkan@13";
	                        Class.forName("com.mysql.cj.jdbc.Driver");
	                        Connection con= DriverManager.getConnection(url,unamee,upass);
	                        PreparedStatement ps=con.prepareStatement("insert into orders(username,Pid,quantity,ph,address) values(?,?,?,?,?)");
	                        ps.setString(1,uname);
	                        ps.setString(2,product);
	                        ps.setString(3,quantity);
	                        ps.setString(4,phone);
	                        ps.setString(5,delivery);
	                        status=ps.executeUpdate();
				            con.close();
	                    }catch(Exception e){
	                        System.out.println(e); 
	                    }
	                    return status; 
	        }
}




