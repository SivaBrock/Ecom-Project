<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Online Purchase website</title>
</head>

<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
<div class="container-fluid">
<ul class="nav navbar-nav">
<li class="active"> <a  href="/ProectMVC1">Home</a></li>
<li cla	ss="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">Product
<span class="caret"></span></a>
<ul class="dropdown-menu">
<li> <a href="/ProectMVC1/product">Product insert</a></li>
<li> <a href="/ProectMVC1/getproducts">Laptops</a></li>
<li> <a href="#">Mobiles</a></li>
</ul>
</li>
<li> <a href="#">Page2</a></li>
<li> <a href="#">Page3</a></li>
</ul>

<ul  class="nav navbar-nav navbar-right">
<li><a href="/ProectMVC1/login">sign up</a></li>
<li><a href="#">login</a></li>
</ul>

<form class="navbar-form navbar-left" action="/action_page.php">
  <div class="input-group">
    <input type="text" class="form-control" placeholder="Search">
    <div class="input-group-btn">
      <button class="btn btn-default" type="submit">
        <i class="glyphicon glyphicon-search"></i>
      </button>
    </div>
  </div>
</form>
</div>
</nav>

<div class="container">
 
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="/resources/images/Echo.jpg" alt="Echo" style="width:100%;">
      </div>

      <div class="item">
        <img src="/resources/images/JBL.jpg" alt="JBL" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="/resources/images/Nokia.jpg" alt="Nokia" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

</body>
</html>