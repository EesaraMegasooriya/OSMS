<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Announcement Update-OSMS</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
	<script src="https://kit.fontawesome.com/8728c1f79f.js" crossorigin="anonymous"></script>
	<link href="HeaderFooter.css" rel="stylesheet">
	<link href="form.css" rel="stylesheet">
</head>
<body style="background-color: black;">
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
    <c:forEach var="ann" items="${annDetails}">
    
    <center><div class="background">
		<div class="container">
    	<div class="title"><i class="fa-solid fa-user-plus"></i> Update Announcement</div>
    	
        <form action="update" method="post">
        
        	<div class="user-details">
        
        	<div class="input-box">
        		<span class="details">Id :</span>
            	<input type="text" name="id" value="${ann.id}"><br>
            </div>
            
            <div class="input-box">
            	<span class="details">Title:</span>
            	<input type="text" name="title" value="${ann.title}" required><br>
            </div>
            
            <div class="input-box">
            	<span class="details">Description:</span>
            	<input type="text" name="description" value="${ann.description}" required><br>
            </div>
            
            <div class="input-box">
            	<span class="details">Editor's name:</span>
            	<input type="text" name="editorname" value="${ann.editorname}" required><br>
            </div>
            
            <div class="input-box">
            	<span class="details">Status:</span>
            	<input type="text" name="status" value="${ann.status}" required><br>
            </div>
            
            <div class="button">
            	<input type="submit" value="Update Announcement Details">
            </div>
            
            </div>
        </form>
        
        </div>
        </div></center>
    </c:forEach>
    
<!--Footer-->
    <div className="ft">
      <footer class="ffooter">
        <div class="icontainer">
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



    
    
    
