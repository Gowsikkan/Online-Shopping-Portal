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
	//https://www.w3resource.com/javascript/form/password-validation.php
    var name = document.forms["RegForm"]["sign_username"];
    var email = document.forms["RegForm"]["sign_email"];
    var phone = document.forms["RegForm"]["sign_phone"];
    var password = document.forms["RegForm"]["sign_pass"];

    if (name.value == "") // OK
    {
        window.alert("Please enter your name.");
        name.focus();
        return false;
    }
    else
    {
    	var letters = /^[A-Za-z .]+$/;
   		if(!name.value.match(letters))
   		{
			window.alert("Alphabets are only allowed in name.");
        	name.focus();
	        return false;
	    }
    }


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


    if (phone.value == "")	// OK
    {
        window.alert("Please enter your telephone number.");
        phone.focus();
        return false;
    }
    else
    {
		var phoneno = /^\d{10}$/;
  		if(!phone.value.match(phoneno))
  		{
  			window.alert("You have entered wrong mobile number!");
		    phone.focus();
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
}</style>
</head>
<body>
<h1 style="text-align: center"> <br>Join our Community </h1>
<form name="RegForm" action="Signin" method="post" class="modal-content">
<div class="container">
    <p><label for="sign_username"><i class="fa fa-user icon"></i></label> <input type="text" size="65" name="sign_username" id="sign_username" placeholder="enter the username"> </p><br>
    <p><label for="sign_email"><i class="fa fa-envelope icon"></i> </label> <input type="text" size="65" name="sign_email" id="sign_email" placeholder="enter the email">  </p><br>
    <p><label for="sign_pass"><i class="fa fa-key icon"></i></label> <input type="password" size="65" name="sign_pass" placeholder="enter the password" id="sign_pass"> </p><br>
    <p><label for="sign_phone"><i class="fa fa-phone icon"></i></label> <input type="text" size="65" name="sign_phone" placeholder="enter the number" id="sign_phone"> </p><br>

    <p>
	
	<button type="submit" onclick="return ValidateFormFields()">SIGNUP</button></p>


	</div>
</form>
</body>
</html>