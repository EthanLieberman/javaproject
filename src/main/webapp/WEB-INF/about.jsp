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
</head>
<body>








	<!DOCTYPE html>
<html>
<head>
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
	<div class="commercial">
		25% off today. Pick up available. <a href="/" style="color: white;">Options</a>
	</div>
	<div class="logoContainer">
		<img class="logo" src="/image/BW.png" alt="logo" />
	</div>

	<div class="search">
		<a style="font-family: arvo; font-size: 10pt; color: black;"
			href="/enter">Sign In</a>

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
						<li style="font-family: arvo;"><a href="/category/dresses">dresses</a></li>
						<li style="font-family: arvo;"><a href="/">gold</a></li>
						<li style="font-family: arvo;"><a href="/">diamonds</a></li>
					</ul></li>
				<li><a href="#">Men</a>
					<ul class="dropdown-content">
						<li style="font-family: arvo;"><a href="/">Black</a></li>
						<li style="font-family: arvo;"><a href="/">Gold</a></li>
						<li style="font-family: arvo;"><a href="/">White</a></li>
					</ul></li>
				<li><a href="#">Accessories</a>
					<ul class="dropdown-content">
						<li style="font-family: arvo;"><a href="/">Women</a></li>
						<li style="font-family: arvo;"><a href="/">Men</a></li>

					</ul></li>

				
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
			<div class="contain">
				<h3 class="text-center">Black&&White © B&W. All rights reserved</h3>

				<div class="col">
					<h1>Company</h1>
					<ul>
						<li>About Us</li>
						<li>Press Releases</li>
						<li>Social Blogs</li>
						<li>Get in touch</li>
					</ul>
				</div>

				<div class="col">
					<h1>Customer Service</h1>
					<ul>
						<li>Contact Us</li>
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



