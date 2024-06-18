<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>OSMS | Online Portal</title>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
	<script src="https://kit.fontawesome.com/8728c1f79f.js" crossorigin="anonymous"></script>
	<link href="HeaderFooter.css" rel="stylesheet">
	<link href="pay-style.css" rel="stylesheet">
	
	<style>
		html, body{
			height: 100%;
			margin: 0;
			padding: 0;
		}
	</style>

</head>
<body>
<!-- HEADER -->
<div>
	<nav>
      <header>
        <img class="logo" src="OSMS.png" alt="logo" id="logo"/>
        <nav>
          <ul class="nav__links">
            <li>
              <a href="http://localhost:8090/WEB/HomePage.jsp">Home</a>
              
              <a href="http://localhost:8090/AdminLoginPage/AdminLoginPage.jsp">Admin</a>
              <a href="http://localhost:8090/AnnouncementsDemo/aboutus.jsp">About Us</a>
            </li>
          </ul>
        </nav>
        
        <a href="http://localhost:8090/UserLoginPage/UserLoginPage.jsp" class="cta">
        	<button>Log Out</button>
        </a>
      
      </header>
    </nav>
 </div>    
 <!-- My Content -->
 
 <div class="topic">
		<p><center>ONLINE PORTAL</center></p>
	</div>
	
	<div class="container1">
	
		<div class="section">
			<h2><i><center>Customer Information</center></i></h2><br>
			Name <br>
			<input type="text" name="name" size="75"> <br><br>
			Mobile number <br>
			<input type="text" name="number" size="75"> <br><br>
			E-mail <br>
			<input type="text" name="mail" size="75"> <br><br>
			NIC <br>
			<input type="text" name="nic" size="75"> <br><br>
			Type of payment method <br>
			<select name="method">
			<option value="1">Select</option>
			<option value="2">Credit/Debit card</option>
			<option value="3">Pay Pal</option>
			<option value="4">AMX</option>
			</select>
		</div>
		<div class="section">
			<h2><i><center>Credit / Debit Card Details</center></i></h2><br>
			
			Cardholder's Name <br> 
			<input type="text" name="cardname" size="75"> <br><br>
			Card Number <br>
			<input type="text" name="cardnumber" size="75"> <br><br>
			<label for="monthInput">Expiry</label> <br>
			<input type="month" id="monthInput" name="monthInput"> <br><br>
			CVC <br>
			<input type="text" name="cvc" size="3"> <font size="1">128-bit secured</font><br><br>
			<input type="checkbox" name="q1" value="a" checked> Accept User Agreement <br><br>
			<input type="checkbox" name="q2" value="p" checked> Accept privacy & policy <br><br>
			<button type="button" onclick="cancel()">Cancel</button>
			<button onclick="showAlert()" type="submit">Proceed</button>
		</div>
	</div>
	
	<script>
		function Cancel(){
			<a href="index.html">Cancel</a>
		}
	</script>
	
	<script>
		function showAlert(){
			alert("Your payment is Successfull....");
		}
	</script>
 
 
 
 
 <!-- FOOTER -->
<div className="ft">
      <footer class="footer">
        <div class="container">
          <div class="row">
            <div class="footer-col">
              <h4><b>Discover</b></h4>
              <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">Categories</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Contact Us</a></li>
              </ul>
            </div>
            <div class="footer-col">
              <h4><b>About</b></h4>
              <ul>
                <li><a href="#">Clients</a></li>
                <li><a href="#">Team</a></li>
                <li><a href="#">Career</a></li>
                <li><a href="#">Journal</a></li>
              </ul>
            </div>
            <div class="footer-col">
              <h4><b>Help</b></h4>
              <ul>
                <li><a href="#">Privacy Policy</a></li>
                <li><a href="#">Terms & Conditions</a></li>
                <li><a href="#">Partners</a></li>
                <li><a href="#">Legalty</a></li>
              </ul>
            </div>
            <div class="footer-col">
              <h4><b>Follow us</b></h4>
              <div class="social-links">
                <a href="#"><i class="fab fa-facebook-f"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
                <a href="#"><i class="fab fa-linkedin-in"></i></a>
              </div>
            </div>
          </div>
        </div>
      </footer>
    </div>
</body>
</html>