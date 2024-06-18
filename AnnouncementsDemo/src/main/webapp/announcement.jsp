<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OSMS | Admin Announcement-OSMS</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
	<script src="https://kit.fontawesome.com/8728c1f79f.js" crossorigin="anonymous"></script>
	<link href="HeaderFooter.css" rel="stylesheet">
	<link href="ann-style.css" rel="stylesheet">
	<link href="annview.css" rel="stylesheet">
	
<script>
    function updateRecord(id) {
        window.location.href = "UpdateAnnouncementServlet?id=" + id
    }
   
    function deleteRecord(id) {
        window.location.href = "announcementDeleteServlet?id=" + id
    }
    </script>
	
</head>
<body style="background-color: black;">
<!-- HEADER -->
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
	
	<div class="container1">
	<div class="topic">Announcemenets</div><br>
	<table class="annviewtable" >
	
		<tr class="tablehead">
			<th>Id</th>
			<th>Title</th>
			<th>Description</th>
			<th>Posted Date</th>
			<th>Editor's Name</th>
			<th>Status</th>
		</tr>
		
	<c:forEach var="ann" items="${announcementDetails}">
	
		<c:set var="id" value="${ann.id}"/>
		<c:set var="title" value="${ann.title}"/>
		<c:set var="description" value="${ann.description}"/>
		<c:set var="postedDate" value="${ann.postedDate}"/>
		<c:set var="editorname" value="${ann.editorname}"/>
		<c:set var="status" value="${ann.status}"/>
	
		<tr>
			<td>${ann.id}</td>
			<td>${ann.title}</td>
			<td>${ann.description}</td>
			<td>${ann.postedDate}</td>
			<td>${ann.editorname}</td>
			<td>${ann.status}</td>
			
    		<td>
            	<button class="updatebtn" onclick='updateRecord(${ann.id})'>Update</button>
                    
                <button class="delebtn" onclick='deleteRecord(${ann.id})'>Delete</button></td>
		</tr>
			
	</c:forEach>
	</table>
	</div>
	
	<br><br><br>
	<center> <a href="http://localhost:8090/AnnouncementsDemo/announcementinsert.jsp" class="createbtn">Create Announcement</a> </center>
	<br><br><br>

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