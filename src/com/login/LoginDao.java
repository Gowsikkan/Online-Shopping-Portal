package com.login;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;


public class LoginDao {
	String sql ="select * from login where sname=? and pass=?";
	String url = "jdbc:mysql://localhost:3306/db2";
	String username = "root";
	String password = "Gowsikkan@13";
	
	public boolean check(String uname, String pass) throws ClassNotFoundException
	{ 
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1,uname);
			st.setString(2,pass);
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




