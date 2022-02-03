<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
function ValidateFormFields()
{
    var email = document.forms["login"]["users_email"];
    var password = document.forms["login"]["users_pass"];

    

    if (email.value == "")	// OK
    {
        window.alert("Please enter a valid e-mail address.");
        email.focus();
        return false;
    }
    else
    {
    	var letters = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    	if (!email.value.match(letters))
    	{
        	window.alert("You have entered an invalid email address!");
        	email.focus();
        	return false;
        }


    }


 

    if (password.value == "")
    {
        window.alert("Please enter your password");
        password.focus();
        return false;
    }
    else
    {
      	var passw=  /^[A-Za-z]\w{7,14}$/;
	  	if(!password.value.match(passw))
  		{
	  		window.alert('Password should have upper and lowercase letters and its width should be in range of 7-14');
	  		password.focus();
	  		return false;
		}
    }


    return true;
}

</script>
<style>
form {
       border: 3px solid #f1f1f1;
       margin: 0 auto;
       width: 600px;
       float: center;
       background-color: white;

}
body {font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
	  background-image: url("https://media.istockphoto.com/illustrations/material-design-background-teal-and-pink-candy-colors-abstract-flat-illustration-id1178426709?k=20&m=1178426709&s=612x612&w=0&h=xHJt1XTMB_zWVBmcmxUB3w8eG7AjYIFAou-9ZSCJVGw=");
	  background-repeat:no repeat;
	  background-attachment:fixed;
	  background-size:cover;
    text-align: center;
	}

input[type=text], input[type=password] {
  width: 70%;
  padding: 13px;;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  backgroung: #f1f1f1;;
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
  background-color: powderblue;
  color: rgb(241, 114, 135);
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  
}

button:hover {
  opacity: 1;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: black;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 20%;
  border-radius: 20%;
}

.container {
  padding: 16px;
  align-text: center;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 500px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}



/* Modal Content */
.modal-content {
  background-color: white;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: none;
  width: 50%; /* Could be more or less, depending on screen size */
}

/* Add Animation */
@-webkit-keyframes animatetop {
  from {top:-300px; opacity:0} 
  to {top:0; opacity:1}
}

@keyframes animatetop {
  from {top:-300px; opacity:0}
  to {top:0; opacity:1}
}

/* The Close Button */
.close {
  color: white;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}

.modal-header {
  padding: 2px 16px;
  background-color: #5cb85c;
  color: white;
}

.modal-body {padding: 2px 16px;}

.modal-footer {
  padding: 2px 16px;
  background-color: #5cb85c;
  color: white;
}
.icon {
  padding: 10px;
  background:black;
  color: powderblue;
  min-width: 50px;
  text-align: center;
}

</style>
</head>
<body>
    <h2 style="text-align:center;">Login Form</h2>

<form action="Login" method="post">
  <div class="imgcontainer">
    <img src="data:image/png;base64,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" alt="Avatar" class="avatar">
  </div>
  <div class="container">
  <label for="users_email"><i class="fa fa-envelope icon"></i></label>
  <input type="text" name="uname" id="users_email" placeholder="enter the email"/><br /><br />
        <label for="login_pass"><i class="fa fa-key icon"></i></label>
    <input type="password" id="users_pass" name="pass" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" placeholder="enter the password"><br>
  
      
    <button type="submit" onclick="ValidateFormFields()" >Login</button>

</form>    
	<form action='Signin' method='post'>
	
 <button type="submit" >Create an account</button>
</form>
  </div>


</body>
</html>

 