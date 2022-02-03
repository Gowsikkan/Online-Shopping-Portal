<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Add icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
form {
    margin: 0 auto;
    width: 600px;
	float:center;
}
body {font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
	  background-image: url("https://images.pexels.com/photos/1037992/pexels-photo-1037992.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500");
	  background-repeat:no repeat;
	  background-attachment:fixed;
	  background-size:cover;
    text-align: center;
	}


input[type=text], input[type=password] {
  width: 70%;
  padding: 13px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background:#f1f1f1;;
}
input[type=text]:focus, input[type=password]:focus {
  background-color:white;
  outline: none;
}
.modal-content {
  background-color: white;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: none;
  width: 50%; /* Could be more or less, depending on screen size */
}
button {
  background-color:black;
  color:pink;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}
.container {
  padding: 16px;
  align-content: center;
}
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}
.icon {
  padding: 10px;
  background:black;
  color: powderblue;
  min-width: 50px;
  text-align: center;
}

</style></head>

<body>
<%

response.setHeader("Cache-Control","no-store,must-revalidate");

if(session.getAttribute("username")==null)
{
	response.sendRedirect("login.jsp");
}
%>
<h1 style="text-align: center"> <br> Customer Details </h1>
<h5> Kindly fill the details for the delivery of your order</h5>
<form name="RegForm" action="detials" method="POST" class="modal-content">
<div class="container">
    <p><label for ="Username"><i class="fa fa-user icon"></i></label> <input type="text" size=65 name="username" id = "id = "sign_username"" placeholder="Enter the username"> </p><br>
    <p><label for="Productid"><i class="fa fa-shopping-bag icon"></i> </label> <input type="text" size=65 name="id" placeholder="Enter the Product ID">  </p><br>
    <p><label for="Quantity"><i class="fa fa-shopping-cart icon"></i></label> <input type="text" size=65 name="Quantity"placeholder="Enter the quantity"> </p><br>
    <p><label for="Ph"><i class="fa fa-phone icon"></i></label> <input type="text" size=65 name="phone"placeholder="Enter the Number"> </p><br>
    <p><label for="Delivery"><i class="fa fa-address-card icon"></i></label> <input type="text" size=65 name="Address"placeholder="Enter the Address"> </p><br>

    <p>
	
 <button type="submit" >Order</button>


</div>
    </p>
</form>

</body>
</html>