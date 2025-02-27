<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Member Details</title>
 <link href="CSS/AdminAccount.css" rel="stylesheet">
</head>
<body>
<nav>
      <header>
        <img class="logo" src="CSS/OSMS.png" alt="logo" id="logo"/>
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
       <br><br><br>
        <h1 class="topic-uplode">Insert Member<span> Details..</span></h1>
		<div class="uplode-container">
       
        <form action="admininsert" method="post">
          <div class="uplode-card">
            <div class="details-container">
              <label class="lable-uplode" for="name">Member Name</label><br />
              <input
                class="uplode-input"
                type="text"
                id="name"
                name="name"
                required
              /><br />

              <label class="lable-uplode" for="date">NIC</label><br />
              <input class="uplode-input" type="text" id="nic" name="nic" pattern="[0-9]{9}(?:[Vv])?" required /><br/>

              <label class="lable-uplode" for="description">Phone Number</label
              ><br />
              <input
                class="uplode-input"
                type="text"
                id="phone"
                name="phone"
                pattern="[0-9]{10}"
                required
              /><br />
              <label class="lable-uplode" for="date">Address</label><br />
              <input
                class="uplode-input"
                type="text"
                id="address"
                name="address"
                required
              /><br />
              <br />
            </div>
            <div class="button-form">
              <button class="uplode">Submit</button>
            </div>
          </div>
        </form>
        </div>
        <br><br><br>
         <!--Footer-->
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
      </div>>
</body>
</html>