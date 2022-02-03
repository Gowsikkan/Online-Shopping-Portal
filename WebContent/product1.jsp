<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>welcome to my display page</title>
<style>
    body {font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
	  background-image: url("https://media.istockphoto.com/photos/pastel-pink-and-blue-angular-abstract-background-picture-id909303758?k=20&m=909303758&s=170667a&w=0&h=zTbXyBFQA3Bzoc-WqF3w_hL3GYs19V9FSLeZ0PvaVHM=");
	  background-repeat:no repeat;
	  background-attachment:fixed;
	  background-size:cover;
    text-align: center;
	}
    #customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: black;
  color: white;
}
    </style>
</head>
<body>

<% 
try
{
       
        Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db2","root","Gowsikkan@13");
        String sql = "select * from watch";
        PreparedStatement stmt = con.prepareStatement(sql);
        ResultSet rs = stmt.executeQuery();
        if(rs.next()==false)
        {
            out.println("No Records in the table");
        }
        else
        {%>
       
        <table border="1">
        <tr><th>Id </th><th>Name</th><th>Rate</th></tr>
        <%
            do
            {%>
           
            <tr><td><%= rs.getString(1)%></td><td><%= rs.getString(2)%></td><td><%= rs.getString(3)%></td></tr>
           
            <%}while(rs.next());
        }
       
}
catch(Exception e)
{
    System.out.println(e.getMessage());
    e.getStackTrace();
}


%>

<a href="detials.jsp" >BUY</a>
</body>
</html>