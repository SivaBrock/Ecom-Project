<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class = "container">
<form action="/ProectMVC1/loginSuccess" method = "post">
<div class="form-group">
<label for="uName">User Name:</label>
<input type="text" class="form-control" id ="uName" name="uName" placeholder="Enter the user name">
</div>
<div class="form-group">
<label for="uGender">User Name:</label>
<input type="text" class="form-control" id ="uGender" name="uGender" placeholder="Enter the Gender">
</div>
<div class="form-group">
<label for="uEmail">User EmailID:</label>
<input type="text" class="form-control" id ="uEmail" name="uEmail" placeholder="Enter the Email ID">
</div>
<div class="form-group">
<label for="uAddress">User Address:</label>
<input type="text" class="form-control" id ="uAddress" name="uAddress" placeholder="Enter the Address">
</div>
<div class="form-group">
<label for="uPincode">User Pincode:</label>
<input type="text" class="form-control" id ="uPincode" name="uPincode" placeholder="Enter the Pincode">
</div>
<div class="form-group">
<label for="uPass">User password:</label>
<input type="text" class="form-control" id ="uPass" name="uPass" placeholder="Enter the password">
</div>
 <div class="checkbox">
      <label><input type="checkbox" name="remember"> Remember me</label>
 </div>
<button type="submit" class="btn btn-default">Submit</button>
</form>
</div>
</body>
</html>