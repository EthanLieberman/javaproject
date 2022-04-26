<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BLack && White</title>
<link rel="stylesheet"
	href="/webjars/bootstrap/5.0.1/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/style.css">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Abril+Fatface&family=Josefin+Sans:wght@200&family=Arvo&family=Oleo+Script&display=swap"
	rel="stylesheet">
  <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="commercial">
		25% off today. Pick up available. <a href="/" style="color: white;">Options</a>
	</div>

	<!-- <a href="/logout">Logout</a> -->
	<div class="logoContainer">
	<a href="/"><img class="logo" src="/image/BW.png" alt="logo" /></a>
	</div>
	

	<div class="search">
		<a style="font-family: arvo; font-size: 10pt; color: black;"
			href="/enter">Sign In</a>
			
			<form action="/searchRequest" method="post">
			<input type="search" id="search" placeholder="search for products" name="search">
			<input class="button" type="submit" value="Search">
			</form>

	</div>




	<%-- <p>Hi ${userName}</p> --%>

<div class="center">
	<div class="dropdown">
		<ul class="menu">
			<li><a href="/">Home</a></li>
			<li><a href="#">Women</a>
				<ul class="dropdown-content">
					<li style="font-family: arvo;"><a href="/category/dresses">Dresses</a></li>
					<li style="font-family: arvo;"><a href="/category/">gold</a></li>
					<li style="font-family: arvo;"><a href="/category/">diamonds</a></li>
				</ul></li>
			<li><a href="#">Men</a>
				<ul class="dropdown-content">
					<li style="font-family: arvo;"><a href="/category/">Black</a></li>
					<li style="font-family: arvo;"><a href="/category/">Gold</a></li>
					<li style="font-family: arvo;"><a href="/category/">White</a></li>
				</ul></li>
				<li><a href="#">Accesories</a>
				<ul class="dropdown-content">
					<li style="font-family: arvo;"><a href="/category/dresses">Women</a></li>
					<li style="font-family: arvo;"><a href="/category/">Men</a></li>
					<li style="font-family: arvo;"><a href="/category/">Misc</a></li>
				</ul></li>
			<li><a href="/about">About</a>
		</ul>
		</div>
	
	</div>
		<!-- image -->
		<div class="image">
			<img class="image"
				src="https://images.pexels.com/photos/3352398/pexels-photo-3352398.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
				alt="logo" />
		</div>


	<!--carousel-->
<!-- 	<div id="carousel" class="carousel slide carousel-fade" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://images.pexels.com/photos/265720/pexels-photo-265720.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://images.pexels.com/photos/2122361/pexels-photo-2122361.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://images.pexels.com/photos/3342697/pexels-photo-3342697.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div> -->
<div id="carouselCrossfade" class="carousel slide carousel-fade" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item">
      <img src="https://images.pexels.com/photos/2122361/pexels-photo-2122361.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" class="d-block w-100" alt="Slide 1">
    </div>
    <div class="carousel-item active">
      <img src="https://images.pexels.com/photos/3342697/pexels-photo-3342697.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" class="d-block w-100" alt="Slide 2">
    </div>
    <div class="carousel-item">
      <img src="https://images.pexels.com/photos/265720/pexels-photo-265720.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" class="d-block w-100" alt="Slide 3">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselCrossfade" role="button" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselCrossfade" role="button" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </a>
</div>






	<%-- ${cart} --%>
	<!-- footer -->
	<!-- footer -->
	<footer>
		<div class="footer">
			<div class="contain">
				<h3 class="text-center">Black&&White © B&W. All rights reserved</h3>

				<div class="col">
					<h1>Company</h1>
					<ul>
						<li><a href="/about">About Us</a></li>
						<li>Press Releases</li>
						<li>Social Blogs</li>
						<li>Get in touch</li>
					</ul>
				</div>

				<div class="col">
					<h1>Customer Service</h1>
					<ul>
						<li><a href="/contact">Contact Us</a></li>
						<li>Order Status</li>
						<li>Shipping/Handling</li>
						<li>Return Policy</li>
						<li>FAQ</li>
					</ul>
				</div>

				<div class="col">
					<h1>Legal</h1>
					<ul>
						<li>Terms Conditions</li>
						<li>Privacy and Safely</li>
					</ul>
				</div>
				<div class="col social ">
					<h1>Social</h1>
					<ul>
						<li><img src="https://svgshare.com/i/5fq.svg" width="32"
							style="width: 32px;"></li>
						<li><img src="https://svgshare.com/i/5eA.svg" width="32"
							style="width: 32px;"></li>
						<li><img src="https://svgshare.com/i/5f_.svg" width="32"
							style="width: 32px;"></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>

	</footer>

</body>
</html>
