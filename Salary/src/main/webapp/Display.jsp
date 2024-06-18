<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Salary Details Page</title>
    <link rel="stylesheet" href="CSS/displayu.css" />
  </head>
  <body>     
	<c:forEach var="cus" items="${cusDetails}">
		<c:set var="id" value="${ cus.id}" />
		<c:set var="name" value="${ cus.name}" />
		<c:set var="nic" value="${ cus.nic}" />
		<c:set var="salary" value="${ cus.salary}" />
		<c:set var="increment" value="${ cus.increment}" />
		<c:set var="decrement" value="${ cus.decrement}" />
		<c:set var="total" value="${cus.total}" />
	
	
		<div class="row">
		
			<br />
			<h1 class="abc">Salary Details..</h1>
			<br />
			<div class="container">
			  <div class="dcolumn bki"></div>
			  <div class="dcolumn">
				<h1>Employee Details</h1>
	  
				<div class="form-group">
				  <label>Item ID</label>
				  <input type="text" id="id" name="id" value=" ${cus.id}" readonly />
				</div>
				<div class="form-group">
				  <label>Name</label>
				  <input
					type="text"
					id="name"
					name="name"
					value=" ${cus.name}"
					readonly
				  />
				</div>
	  
				<div class="form-group">
				  <label>NIC</label>
				  <input
					type="text"
					id="nic"
					name="nic"
					value=" ${cus.nic}"
					readonly
				  />
				</div>
	  
				<h1>Salary Details</h1>
				<div class="form-group">
				  <label>Salary</label>
				  <input
					type="text"
					id="salary"
					name="salary"
					value=" ${cus.salary}"
					readonly
				  />
				</div>
	  
				<div class="form-group">
				  <label>Increment Salary</label>
				  <input
					id="price"
					name="increment"
					value=" ${cus.increment}"
					readonly
				  />
				</div>
	  
				<div class="form-group">
				  <label>Decrement Salary</label>
				  <input name="decrement" value=" ${cus.decrement}" readonly />
				</div>
	  
				<div class="form-group">
				  <label>Total Salary</label>
				  <input
					value="${cus.total}"
					readonly
				  />
				</div>
	

	</c:forEach>
	
	<c:url value="Update.jsp" var="cusupdate">
	
	<c:param name="id" value="${id}"/>
	<c:param name="name" value="${name}"/>
	<c:param name="nic" value="${nic}"/>
	<c:param name="salary" value="${salary}"/>
	<c:param name="increment" value="${increment}"/>
	<c:param name="decrement" value="${decrement}"/>
	<c:param name="total" value="${total}"/>
	
	 </c:url>
	 
	 <c:url value="Delete.jsp" var="cusdelete">
	 
<c:param name="id" value="${id}"/>
	<c:param name="name" value="${name}"/>
	<c:param name="nic" value="${nic}"/>
	<c:param name="salary" value="${salary}"/>
	<c:param name="increment" value="${increment}"/>
	<c:param name="decrement" value="${decrement}"/>
	<c:param name="total" value="${total}"/>
	
	 </c:url>
	 
	 
	 <a href="${cusupdate }"><button type="submit">Update Salary Details</button></a>
     <a href="${cusdelete }"><button type="submit">Delete Salary Details</button></a>
        </div>
      </div>
    </div>
    
    
    
  </body>
</html>

