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
<title>Insert title here</title>
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

<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="/webjars/bootstrap/5.0.1/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/style.css">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap"
	rel="stylesheet">

</head>
<body>
	<div id="carouselSlidesOnly" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<p class="d-block commercial" alt="Slide 3">25% off today. Pick
					up available. Options</p>
			</div>
			<div class="carousel-item">
				<p class="d-block commercial" " alt="Slide 3">Subscribe today.</p>
			</div>
			<div class="carousel-item">
				<p class="d-block commercial" " alt="Slide 3">Call us for an
					appointment.</p>
			</div>
		</div>
	</div>


	<div
		style="display: flex; justify-content: flex-end; margin-right: 50px; gap: 10px;">

		<a href="/bag"><img alt="bag" src="/image/shoppingbag.png"
			height="25px"> <c:out value="${cart.products.size()}" /></a>

		<c:if test="${userId != null}">
			<a
				style="font-family: arvo; font-size: 10pt; color: black; align-self: center;"
				href="/logout">Sign Out</a>
		</c:if>
		<c:if test="${userId == null}">
			<a
				style="font-family: arvo; font-size: 10pt; color: black; align-self: center;"
				href="/enter">Sign In</a>
		</c:if>


	</div>






	<div class="logoContainer">
		<c:if test="${panda}">
			<a href="/"><img class="logo" src="/image/panda.png" alt="logo" /></a>
		</c:if>
		<c:if test="${!panda}">
			<a href="/"><img class="logo" src="/image/BW.png" alt="logo" /></a>
		</c:if>

	</div>

	<div class="search">
		<form action="/searchRequest" method="post">
			<input type="search" id="search" placeholder="search for products"
				name="search"> <input class="button" type="submit"
				value="Search">
		</form>

	</div>


	<div class="center">
		<div class="dropdown">
			<ul class="menu">
				<li><a href="/">Home</a></li>
				<li><a href="#">Women</a>
					<ul class="dropdown-content">
						<<<<<<< HEAD
						<li style="font-family: arvo;"><a href="/category/dresses">Wedding
								Dresses</a></li>
						<li style="font-family: arvo;"><a href="/category/bridesmaid">Bridesmaid
								Dresses</a></li>

					</ul></li>
				<li><a href="#">Men</a>
					<ul class="dropdown-content">
						<li style="font-family: arvo;"><a href="/category/tuxedos">Tuxedos</a></li>
						<li style="font-family: arvo;"><a href="/category/suits">Suits</a></li>
					</ul></li>
				<li><a href="#">Accessories</a>
					<ul class="dropdown-content">
						<li style="font-family: arvo;"><a href="/category/veils">Veils</a></li>
						<li style="font-family: arvo;"><a href="/category/jewelry">Jewelry</a></li>
						<li style="font-family: arvo;"><a href="/category/tiaras">Tiaras</a></li>
						<li style="font-family: arvo;"><a href="/category/ties">Ties</a></li>
						=======
						<li style="font-family: arvo;"><a href="/category/dresses">Wedding
								Dresses</a></li>
						<li style="font-family: arvo;"><a href="/category/">Bridesmaid
								Dresses</a></li>

					</ul></li>
				<li><a href="#">Men</a>
					<ul class="dropdown-content">
						<li style="font-family: arvo;"><a href="/category/">Tuxedos</a></li>
						<li style="font-family: arvo;"><a href="/category/">Suits</a></li>

					</ul></li>
				<li><a href="#">Accessories</a>
					<ul class="dropdown-content">
						<li style="font-family: arvo;"><a href="/category/dresses">Veils</a></li>
						<li style="font-family: arvo;"><a href="/category/">Jewelry</a></li>
						<li style="font-family: arvo;"><a href="/category/">Tiaras</a></li>
						<li style="font-family: arvo;"><a href="/category/">Ties</a></li>
						>>>>>>> 4b170d6 (minor changes)
					</ul></li>
				<li><a href="/about">About</a>
			</ul>
		</div>

	</div>
	<!-- about us content starts here -->
	<h3
		style="font-family: arvo; font-weight: bold; text-align: center; margin-top: 5%;">About
		Us</h3>
	<div class="imageabout">

		<img class="aboutImage"
			src="https://images.pexels.com/photos/265722/pexels-photo-265722.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
			alt="fashion" /> <img class="aboutImage"
			src="https://images.pexels.com/photos/1721944/pexels-photo-1721944.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
			alt="fashion" /> <img class="aboutImage"
			src="https://images.pexels.com/photos/2814808/pexels-photo-2814808.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
			alt="fashion" />
	</div>

	<!-- 	<img alt="about image" src="/image/aboutimage.png" width="100px"> -->
	<div class="textContainer">
		<div class="text">
			<p>A keen eye for designs in bringing stylish luxious suits and
				dresses. Started as two enthusiastic goal-driven duos. Here at Black
				&& White, we are highly committed to collaborating with customers to
				make their wedding dreams come true.</p>
			<br>
			<p>High wedding retailer shop, all one-in-all desgination for
				dresses, tuxedos, assessories for women and men. We strive for the
				best to exceed your expectations and desires.</p>
			<br>
			<p>Always striving to keep customer updates and satisfication.
				Contact us anytime. We highly value and appreciate your feedbacks.</p>


		</div>
	</div>
	<!-- footer -->
	<footer>
		<div class="footer">
			<h3 class="text-center">Black&&White © B&W. All rights reserved</h3>
			<div class="contain" style="display: flex; justify-content: center;">

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
				<div class="col social">
					<h1>Social</h1>
					<ul style="display: flex; justify-content: center;">
						<li><img src="/image/fblogo.png" width="32"
							style="width: 32px;"></li>
						<li><img src="/image/iglogo.png" width="32"
							style="width: 32px;"></li>
						<li><img src="/image/twitterlogo.png" width="32"
							style="width: 32px;"></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>

	</footer>
</body>
</html>


