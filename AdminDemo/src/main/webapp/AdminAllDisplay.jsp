<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <meta charset="ISO-8859-1">
    <title>User Account</title>
    <link
      href="https://fonts.googleapis.com/css?family=Karla"
      rel="stylesheet"/>
    <link
      rel="stylesheet"
      type="text/css"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
    <link href="CSS/adminlldisplay.css" rel="stylesheet">
    <link rel="stylesheet" href="CSS/Home.css" />
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
              <a href="#">About Us</a>
            </li>
          </ul>
        </nav>
        
        <a href="http://localhost:8090/AdminLoginPage/AdminLoginPage.jsp" class="cta">
        	<button>Log Out</button>
        </a>
      
      </header>
    </nav>
       <br><br><br>

		
	<div class="container-display">
      <h1 class="topic-uplode">Register Member <span>Details..</span></h1>
      <br><br>
      <div class="uplodebtn">
        <a href="AdminSearch.jsp">
        <button class="uplode">View Member Details</button>
        </a><br><br><br>
      <a href="AdminInsert.jsp">
        <button class="uplode">Add Member</button>
        </a>
            
      </div>
		   <div class="table-container">
    <table id="users">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>NIC</th>
            <th>Phone</th>
            <th>Address</th>
        </tr>
        <c:forEach var="adm" items="${allAdmins}">
            <tr>
                <td>${adm.id}</td>
                <td>${adm.name}</td>
                <td>${adm.nic}</td>
                <td>${adm.phone}</td>
                <td>${adm.address}</td>
            </tr>
        </c:forEach>
    </table>
    </div>
     </div>
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
    </div>
</body>
</html>
