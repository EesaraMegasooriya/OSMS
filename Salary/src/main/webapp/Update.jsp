<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Edit salary details</title>
    <link rel="stylesheet" href="CSS/updatee.css" />
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
      <h1 class="abc">Update Salary Details..</h1>
      <br />
      <div class="container">
        <div class="dcolumn bki"></div>

        <div class="dcolumn">
          <h1> Update Your Personal Details</h1>
        
        <form  action="update" method="post">     
        
        <div class="form-group">
    <label>ID</label>
    <input type="text" id="id" name="id" value="<%= id %>" readonly  />
  </div>
        
        
          <div class="form-group">
    <label>Employee Name</label>
    <input type="text" id="name" name="name" value="<%= name %>" required />
  </div>

  <div class="form-group">
    <label>Employee NIC</label>
    <input type="text" id="nic" name="nic"  value="<%= nic %>" required />
  </div>

  <div class="form-group">
    <label>Basic Salary</label>
    <input type="text" id="salary" name="salary" value="<%= salary %>" required />
  </div>

  <div class="form-group">
    <label>Increment</label>
    <input type="number" id="increment" name="increment" min="0" step="0.01" value="<%= increment %>" required />
  </div>

  <div class="form-group">
    <label>Decrement</label>
    <input type="number" id="decrement" name="decrement" min="1" value="<%= decrement %>" required />
  </div>

   <div class="form-group">
    <label>Total Price</label>
    <input type="text" id="total" name="total" value="<%= total %>" readonly />
  </div>
          
          
          <button type="submit">UPDATE</button>
        </form>
        
        
      </div>
    </div>
    </div>
    
      <script>
  document.addEventListener('DOMContentLoaded', function() {
    // Add event listeners to the input fields
    document.getElementById('salary').addEventListener('input', updateTotal);
    document.getElementById('increment').addEventListener('input', updateTotal);
    document.getElementById('decrement').addEventListener('input', updateTotal);
  });

  function updateTotal() {
    // Get values from the input fields
    var salary = parseFloat(document.getElementById('salary').value) || 0;
    var increment = parseFloat(document.getElementById('increment').value) || 0;
    var decrement = parseFloat(document.getElementById('decrement').value) || 0;

    // Calculate the total
    var total = salary + increment - decrement;

    // Update the total input field
    document.getElementById('total').value = total;
  }
</script>
    
  </body>
</html>
