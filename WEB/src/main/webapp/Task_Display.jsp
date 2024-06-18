<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Task Details</title>
<link href="CSS/AdminAccount.css" rel="stylesheet">
</head>
<body>
	<nav>
        <header>
          <img class="logo" src="CSS/Logo.png" alt="logo " />
          <nav>
            <ul class="nav__links">
              <li>
              <a href="http://localhost:8090/AdminDemo/Home.jsp">Home</a>
              <a href="http://localhost:8090/WEB/Task_Insert.jsp">Task</a>
              <a href="#">FeedBack</a>
               <a href="AdminLogin.jsp">Admin</a>
              </li>
            </ul>
          </nav>
        <a href="#" class="cta">
        	<button>Account</button>
        </a>
        </header>
       
      </nav>
       <br><br><br>
<c:forEach var="cus" items="${cusDetails}">
	
	<c:set var="id" value="${ cus.id}" />
	<c:set var="title" value="${ cus.title}" />
	<c:set var="description" value="${ cus.description}" />
	<c:set var="ddate" value="${ cus.ddate}" />
	
			<div class="uplode-container">
        <div class="uplode-card">
          <div class="details-container">

	        <label class="lable-uplode" for="name">Task Title</label><br />
            <input class="uplode-input" value="${cus.title}" readonly /><br />
            <label class="lable-uplode" for="name">Task Description</label><br />
            <input class="uplode-input" value=" ${cus.description}" readonly /><br />
            <label class="lable-uplode" for="name">Task Description</label><br />
            <input class="uplode-input" value="  ${cus.ddate}" readonly /><br />
            
	

	</c:forEach>
	
	<c:url value="Task_Update.jsp" var="cusupdate">
	<c:param name="id" value="${id}"/>
	<c:param name="title" value="${title}"/>
	<c:param name="description" value="${description}"/>
	<c:param name="ddate" value="${ddate}"/>
	 </c:url>
	 
	 <c:url value="Task_Delete.jsp" var="cusdelete">
	<c:param name="id" value="${id}"/>
	<c:param name="title" value="${title}"/>
	<c:param name="description" value="${description}"/>
	<c:param name="ddate" value="${ddate}"/>
	 </c:url>
	 
	 
	          <a href="${cusupdate }"><button name="update" >Update Task</button></a>
               <a href="${cusdelete }"><button name="delete">Delete</button></a>
	</div>
	</div></div>
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