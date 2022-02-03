<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>third</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
img.rounded-corners {
  border-radius: 30px;
}
body{
    background-color: black;
}
form {
       border: 3px solid #f1f1f1;
       margin: 0 auto;
       width: 400px;
       float: center;
       background-color: white;

}
h3{
  color: yellow;
  font-family: "Oswald";
  font-size: 45px;
}
input[type=text] {
  width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;

}
h1{
	color:white;
    font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
    font-size: 57px;
	text-align:center;
	 }
h2{
	color:white;
  font-family: "Oswald";
  font-size: 47px;
	text-align:center;
	 }
   .darkened-image {
            filter: brightness(85%);
   }
  header{
    text-align: center;
  }
  .button {
  background-color:white;
  opacity: 9;
  border: none;
  color: black;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}
.button1 {
  background-color:black;
  border: none;
  float:right;
  color: white;
  padding: 10px;
  spacing:5px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 30px;
  margin: 2px 6px;
  cursor: pointer;
}
.button4 {border-radius: 12px;}
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

.modal-content {
  background-color: white;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: none;
  width: 50%; /* Could be more or less, depending on screen size */
}
</style>
</head>
<body>
  <h1 style="display:inline;">&nbsp;SHOPIFY</h1>
</p>
  <header class="w3-display-container w3-wide" id="home">
    <img class="darkened-image" src="Downloads/Shopify Wallpaper.png" style="width:100%">
    <div class="w3-display-middle w3-text-black w3-center w3-padding-large">
      <h1 class="w3-text-black"><b>Welcome to Shopify</b></h1>
      <h1 class="w3-jumbo w3-text-black w3-hide-small"><b>Shop what you love</b></h1>
      <h6><button class="w3-button w3-text-black w3-white w3-padding-large w3-large w3-opacity w3-hover-opacity-off" ><a href="login.jsp" target="bottom">Login</button></a></h6>
      
<a href="login.jsp">BUY</a>
    </div>
  </header>
<br>
<h1>Our Products</h1>
<br>
<!-- First Photo Grid-->
<div class="w3-row-padding">
  <div class="w3-third w3-container w3-margin-bottom">
   <a href="product.jsp"> <img src="https://images.pexels.com/photos/3682293/pexels-photo-3682293.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500" alt="Norway" style="width:100%" class="w3-hover-opacity"></a>
    <div class="w3-container w3-white">
      <p><b>Footwear</b></p>
    </div>
  </div>
  <div class="w3-third w3-container w3-margin-bottom">
    <a href="product.jsp"> <img src="https://images.pexels.com/photos/190819/pexels-photo-190819.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500" alt="Norway" style="width:100%" class="w3-hover-opacity"></a>
    <div class="w3-container w3-white">
      <p><b>Watches</b></p>
    </div>
  </div>
  <div class="w3-third w3-container">
    <a href="product.jsp"><img src="https://images.pexels.com/photos/701877/pexels-photo-701877.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500" alt="Norway" style="width:100%" class="w3-hover-opacity"></a>
    <div class="w3-container w3-white">
      <p><b>Sunglasses</b></p>
    </div>
  </div>
</div>
<!-- Footer -->
<footer class="w3-center w3-black w3-padding-64">
  <h2><b>Subscribe to our newsletter</b></h2>
    <input type="text" name="users_email" id="users_email" placeholder="enter the email"/>
  <h6 style="display: inline;"><button class="w3-button w3-white w3-padding-large w3-large w3-opacity w3-hover-opacity-off" onclick="document.getElementById('subscribe').style.display='block'">SUBSCRIBE</button></h6>
  <br>
  <br>
  <br>
  <a href="#home" class="w3-button w3-light-grey"><i class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
  <div class="w3-xlarge w3-section">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>

</footer>


</body>
</html> 