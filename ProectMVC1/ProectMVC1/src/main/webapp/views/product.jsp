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
<h1>${Header}</h1>

<div class = "container">
<form action="/ProectMVC1/success" method = "post">
<div class="form-group">
<label for="pName">Product Name:</label>
<input type="text" class="form-control" id ="pName" name="pName" placeholder="Enter the product name">
</div>
<div class="form-group">
<label for="pCost">Product cost:</label>
<input type="text" class="form-control" id ="pCost" name="pCost" placeholder="Enter the product cost">
</div>
<button type="submit" class="btn btn-default">Submit</button>
</form>
</div>
</body>
</html>