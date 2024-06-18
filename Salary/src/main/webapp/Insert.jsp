<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Add Salary Details</title>
    <link rel="stylesheet" href="CSS/insert.css" />
  </head>
  <body>
      <div class="row">
      <br /><br/>
      <h1 class="abc">Add Salary Details</h1>
      <br />
    <div class="container">
<div class="column bk"></div>


        <div class="column">
          <h1>Fill Your Details</h1>
        
        <form action="insert" method="post">
<br />
  <div class="form-group">
    <label>Name</label>
    <input type="text" id="name" name="name" required />
  </div>

  <div class="form-group">
    <label>NIC</label>
    <input type="text" id="nic" name="nic" required />
  </div>

  <div class="form-group">
    <label>Basic Salary</label>
    <input type="text" id="salary" name="salary" required />
  </div>

  <div class="form-group">
    <label>Increment</label>
    <input type="text" id="increment" name="increment"  required />
  </div>

  <div class="form-group">
    <label>Decrement</label>
    <input type="text" id="decrement" name="decrement"  required />
  </div>



  <div class="form-group">
    <label>Total Price</label>
    <input type="text" id="total" name="total" readonly />
  </div>
<br><br>

  <button type="submit">Submit</button>
</form>

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
</div>
    
  </body>
</html>
