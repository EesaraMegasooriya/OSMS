<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>OSMS | Search Salary Details</title>
      <link href="CSS/search.css" rel="stylesheet">
  </head>
  <body>
    <div class="scontainer">
      <div class="right-half">
        <h1>Search Salary Details </h1>
        <form action="search" method="post">
		User Name <input type="text" name="name" class="form-group" placeholder="Enter your Name"><br><br>
		NIC <input type="text" name="nic" class="form-group" placeholder="Enter your NIC"><br>
		<input class="btnn" type="submit" name="submit" value="Search">
	</form>
	 <p class="per">
          Do you want add new Salary ?
          <a href="Insert.jsp" class="xt">Click here</a>
        </p>
      </div>
    </div>
  </body>
</html>
