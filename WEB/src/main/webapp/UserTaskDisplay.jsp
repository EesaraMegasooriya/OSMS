<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Task Details | OSMS</title>
<link
      href="https://fonts.googleapis.com/css?family=Karla"
      rel="stylesheet"
    />
    <link href="CSS/Home.css" rel="stylesheet">
    <link
      rel="stylesheet"
      type="text/css"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
    />
<link href="CSS/AdminAccount.css" rel="stylesheet">
<link href="CSS/taskviewtable.css" rel="stylesheet">
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
       <br><br>
       <div class="taskvtitle"><b>Task <span class="spangg">Details ...</b></span></div>
       
       <br><!-- 
<c:forEach var="task" items="${taskDetails}">
	
	<c:set var="id" value="${ task.id}" />
	<c:set var="title" value="${ task.title}" />
	<c:set var="description" value="${ task.description}" />
	<c:set var="ddate" value="${ task.ddate}" />
	
			<div class="uplode-container">
        <div class="uplode-card">
          <div class="details-container">

	        <label class="lable-uplode" for="name">Task Title</label><br />
            <input class="uplode-input" value="${task.title}" readonly /><br />
            <label class="lable-uplode" for="name">task Description</label><br />
            <input class="uplode-input" value=" ${task.description}" readonly /><br />
            <label class="lable-uplode" for="name">Task Description</label><br />
            <input class="uplode-input" value="  ${task.ddate}" readonly /><br />
            
	

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
	 </c:url> -->
	 
	 
	 
	 <table>
	
		<tr class="tablehead">
			<th>Task Id</th>
			<th>Task Title</th>
			<th>Task Description</th>
			<th>Task Due Date</th>
		</tr>
		
	<c:forEach var="task" items="${taskDetails}">
	
		<c:set var="id" value="${task.id}"/>
		<c:set var="title" value="${task.title}"/>
		<c:set var="description" value="${task.description}"/>
		<c:set var="tdd" value="${task.ddate}"/>
	
		<tr>
			<td>${task.id}</td>
			<td>${task.title}</td>
			<td>${task.description}</td>
			<td>${task.ddate}</td>			
			
		</tr>
		
	</c:forEach>
	</table>
	        
	</div>
	</div></div>
	      <br><br><br><center>
	      <a href="http://localhost:8090/WEB/UserHome.jsp">
	      <button type="button" class="css-ususbutton">
	<span class="css-ususbutton-icon">
		<i class="fa fa-suitcase"></i>
	</span>
	<span class="css-ususbutton-text">
		<span>User Home Page</span>
	</span>
</button></a></center><br><br><br>
	
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