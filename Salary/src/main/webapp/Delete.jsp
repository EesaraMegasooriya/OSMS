 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Delete Salary Details</title>
	<link href="CSS/deletee.css" rel="stylesheet">
</head>
<body>

	<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String nic = request.getParameter("nic");
	String salary = request.getParameter("salary");
	String increment = request.getParameter("increment");
	String decrement = request.getParameter("decrement");
	String total = request.getParameter("total");
%>
	
	

    <div class="row">
      <br />
      <h1 class="abc">Delete Salary Details</h1>
      <br />
      <div class="container">
        <div class="dltcolumn bkdlt"></div>

        <div class="dltcolumn">
        <form action="delete" method="post">
          <div class="form-group">
            <label>Employee ID</label>
            <input type="text" id="id" name="id"  value="<%= id %>"  readonly />
          </div>
          <div class="form-group">
            <label>Employee Name</label>
            <input
              type="text"
              id="name"
              name="name"
              value="<%= name %>"
              readonly
            />
          </div>
      <div class="form-group">
        <label>Employee NIC</label>
        <input type="text" id="nic" name="nic"  value="<%= nic %>" readonly />
      </div>

          
          <button type="submit">Delete Salary Details</button>
          </form>
        </div>
      </div>
      
    </div>

</body>
</html>