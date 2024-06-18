<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://fonts.googleapis.com/css?family=Karla"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
    />
    <link rel="stylesheet" href="CSS/Home.css"/>
    <link href="CSS/Home.css" rel="stylesheet">
    <link
      rel="stylesheet"
      type="text/css"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
    />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>User Home | OSMS</title>
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
    <!--Body-->
   
    <div class="btn-container">
    <a href="http://localhost:8090/WEB/userTaskDisplayServlet" class="cta">
    <button type="button" class="css-utaskbutton">
	<span class="css-utaskbutton-icon">
		<i class="fa fa-file-text"></i>
	</span>
	<span class="css-utaskbutton-text">
		<span>View Tasks</span>
	</span>
</button></a>

      <a href="http://localhost:8090/AnnouncementsDemo/userannouncementDisplayServlet" class="cta">
        <button type="button" class="css-uannbutton">
	<span class="css-uannbutton-icon">
		<i class="fa fa-bell"></i>
	</span>
	<span class="css-uannbutton-text">
		<span>View Announcements</span>
	</span>
</button></a>

<a href="http://localhost:8090/AnnouncementsDemo/onlinePortal.jsp" class="cta">
<button type="button" class="css-withdrowsalbutton">
	<span class="css-withdrowsalbutton-icon">
		<i class="fa fa-dollar"></i>
	</span>
	<span class="css-withdrowsalbutton-text">
		<span>Withdraw Salary</span>
	</span>
</button></a>

<!--  
<a href="http://localhost:8090/Salary/Display.jsp" class="cta">
<button type="button" class="css-upaybutton">
	<span class="css-upaybutton-icon">
		<i class="fa fa-money"></i>
	</span>
	<span class="css-upaybutton-text">
		<span>View Payments</span>
	</span>
</button></a>


      <a href="http://localhost:8090/AdminDemo/AdminAllDisplay.jsp" class="cta">
       <button type="button" class="css-uotherbutton">
	<span class="css-uotherbutton-icon">
		<i class="fa fa-gear"></i>
	</span>
	<span class="css-uotherbutton-text">
		<span>View Other </span>
	</span>
</button>
      </a>-->
      
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
    