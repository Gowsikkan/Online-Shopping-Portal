package com.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class addtocartDao {
	String Name;
	int price;
	String sql ="select * from product where pid=*";
	String url = "jdbc:mysql://localhost:3306/sys";
	String username = "root";
	String password = "Gowsikkan@13";
	
	public String get(int pid) throws ClassNotFoundException
	{ 
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1,pid);
			ResultSet rs=st.executeQuery();
			if(rs.next())
			{
				 Name = rs.getString("pname");
				 price = rs.getInt("price");
				
			}
		}catch (Exception e) {
		      System.out.println("Something went wrong.");
	    }
		return Name;

	}
	
	public boolean update(String uname, String pname,int prices) throws ClassNotFoundException
	{ 
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","Gowsikkan@13");
			PreparedStatement st = con.prepareStatement("insert into addtocart values(?,?,?)");
			st.setString(1,uname);
			st.setString(2,pname);
			st.setInt(3,prices);
			
			ResultSet rs=st.executeQuery();
			if(rs.next())
			{
				return true;
			}
		}catch (Exception e) {
		      System.out.println("Something went wrong.");
	    }
		return false;

	}


}



