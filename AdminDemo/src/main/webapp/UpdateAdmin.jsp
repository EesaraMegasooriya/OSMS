<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Member Details</title>
 <link href="CSS/AdminAccount.css" rel="stylesheet">
 <link
      rel="stylesheet"
      type="text/css"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
</head>
<body>
<nav>
        <header>
          <img class="logo" src="CSS/OSMS.png" alt="logo " />
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

<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String nic = request.getParameter("nic");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	
%>

 <h1 class="topic-uplode">Update Member<span> Details..</span></h1>
<div class="uplode-container">

<form action="adminupdate" method="post">
          <div class="uplode-card">
            <div class="details-container">
            <label class="lable-uplode" for="id">ID</label><br />
              <input
                class="uplode-input"
                type="text"
                id="id"
                name="id"
                 value="<%=id%>"
                readonly
              /><br />
              <label class="lable-uplode" for="name">Member Name</label><br />
              <input
                class="uplode-input"
                type="text"
                id="name"
                name="name"
                value="<%=name%>"
                required
              /><br/>

              <label class="lable-uplode" for="nic">NIC</label><br />
              <input class="uplode-input" type="text" id="nic" name="nic" value="<%=nic%>" pattern="[0-9]{9}(?:[Vv])?" required /><br />

              <label class="lable-uplode" for="phone">Phone Number</label>
              <br />
              <input
                class="uplode-input"
                type="text"
                id="phone"
                name="phone"
                value="<%=phone%>"
                pattern="[0-9]{10}"
                required
              /><br />
              <label class="lable-uplode" for="address">Address</label><br />
              <input
                class="uplode-input"
                type="text"
                id="address"
                name="address"
                value="<%=address%>"
                required
              /><br />
              <br />
            </div>
            <div class="button-form">
              <button class="uplode">Update</button>
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
</body>
</html>