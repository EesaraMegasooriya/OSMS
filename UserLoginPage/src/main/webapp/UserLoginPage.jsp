<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://kit.fontawesome.com/8728c1f79f.js" crossorigin="anonymous"></script>
<link href="CSS/log-style.css" rel="stylesheet">
<title>User Login | OSMS</title>
</head>
<body>
<div class="HomeTitle">
<center>
Welcome to OSMS !!
</center>
</div>
<Br>


<center>
            <div class="container">
                <div class="title"><i class="fa-solid fa-user"></i> User Login</div>
                <form action ="UserLoginServlet" method = "POST" >
                    <div class="user-details">
                        <div class="input-box">
                            <span class="details">Username</span>
                            <input type="text" placeholder="Enter Username" id="uid" name="uid" required>
                        </div>
                        <div class="input-box">
                            <span class="details">Password</span>
                            <input type="password" placeholder="Enter Password" id="pass" name="pass" required>
                        </div>

                        </div>
                        <div class="button">
                            <input type="submit" value="Login">
                            <br><br>
                        </div>
                        
                    
                </form>

            </div>
            <br><br><br>
            <a href="http://localhost:8090/WEB/HomePage.jsp">
            <button type="button" class="home-button">
	<span class="home-button-icon">
		<i class="fa fa-home"></i>
	</span>
	<span class="home-button-text">
		<span>Return Home</span>
	</span>
</button></a>
            
</body>
</html>