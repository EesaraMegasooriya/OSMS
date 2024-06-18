<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Task Details | OSMS</title>
<link href="CSS/Home.css" rel="stylesheet">
    <link
      rel="stylesheet"
      type="text/css"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
    />
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

		<%
		    String id = request.getParameter("id");
		    String title = request.getParameter("title");
			String description = request.getParameter("description");  
			String ddate = request.getParameter("ddate");
		%>
					<div class="uplode-container">
        <div class="uplode-card">
          <div class="details-container">
		<form  action="task_update" method="post">
		  
		  
		<label class="lable-uplode">ID</label>
		<input class="uplode-input" type="text" name="id" value="<%= id %>" readonly /> 
		
		 <label class="lable-uplode" >Task Tile</label>
		<input class="uplode-input" type="text" name="title" value="<%= title %>"  />
		
		<label class="lable-uplode" >Task Description</label>
		<input class="uplode-input" type="text" name="description" value="<%= description %>"  />
		
		
		<label class="lable-uplode" >Due Date </label>
		<input class="uplode-input" type="date" name="ddate"  value="<%= ddate %>"  />
		
		<button type="submit">Update</button>
		
		</form>
</div>
</div>
</div><br><br><br><br><br><br>
</body>
</html>