<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>About Us | OSMS</title>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
    <script src="https://kit.fontawesome.com/8728c1f79f.js" crossorigin="anonymous"></script>
    
    <link href="Home.css" rel="stylesheet">
    <link href="about-style.css" rel="stylesheet">
</head>
<body>
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
	
	<div class="abback">
        <div class="whcontainer">
            <div class="whcontainertitle">
                Who We Are ...
            </div>
            <div class="whcontainertext">
                <li> 20+ Years Experience</li>
                <li> 500+ Friendly Staff</li>
                <li> 5+ Awards won <i>GOLD IN BEST COMPANY OF THE YEAR</i> at SMO Awards in several years
            </div>
            <div class="whcontainerdown">
                Best Staff, Best Company ...
            </div>

        </div>
        <hr>
        <div class="urcontainer">
            Contact Us
            <div class="urev">
                <div class="reuser"> Head Office:
                    <div class="review">
                        No.25, Hansagiri Mawatha, Colombo 07 <br><br>
						pathum@osms.com <br><br>
						(+94)11 248 764
                    </div>
                    
                </div>
                <div class="reuser"> Branches:
                    <div class="review">
                        0112457852 - No.234, Nawala Road, Nawala <br><br>
						0812555777 - No.100, Kandy <br><br>
						0315457968 - No.74, Negambo Road, Negambo <br><br>
						0382147754 - No.128, Mahanama Junction, Panadura
                    </div>
                    
                </div>
                <div class="reuser"> Hotline:
                    <div class="review">
                        0714857126 - Dhananjaya <br><br>
						076888742 - Pathum
                    </div>
                    
                </div>
            </div>
<br>
            <div class="urdesign">
                <i class="fa-solid fa-circle"></i>
                <i class="fa-regular fa-circle"></i>
                <i class="fa-solid fa-circle"></i>
                <i class="fa-regular fa-circle"></i>
                <i class="fa-solid fa-circle"></i>
                <i class="fa-regular fa-circle"></i>
            </div>
            <div class="urele">
                <i class="fa-regular fa-star"></i>
                <div class="ereletitle">
                    Best Staff
                </div>
                <div class="ereletitle2">
                    Best Company
                </div>
            </div>
        </div>
    </div>
    
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
    </div>
</body>
</html>