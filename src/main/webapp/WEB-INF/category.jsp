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
<title>cat placeholder</title>
<link rel="stylesheet"
	href="/webjars/bootstrap/5.0.1/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/showone.css">

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
		<div>
			25% off today. Pick up available. <a href="/" style="color: white;">Options</a>
		</div>
	</div>

	<div
		style="display: flex; justify-content: flex-end; margin-right: 50px; gap: 10px;">

		<a href="/cart"><img alt="cart" src="/image/shoppingbag.png"
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




	<!-- <a href="/logout">Logout</a> -->
	<div class="logoContainer">
		<a href="/"><img class="logo" src="/image/BW.png" alt="logo" /></a>
	</div>

	<div class="search">
		<form action="/searchRequest" method="post">
			<input type="search" id="search" placeholder="search for products"
				name="search"> <input class="button" type="submit"
				value="Search">
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
						<li style="font-family: arvo;"><a href="/category/">Lace</a></li>
						<li style="font-family: arvo;"><a href="/category/">Diamonds</a></li>
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
	<div class="coverImage">

		<img class="firstDress"
			src="https://images.unsplash.com/photo-1502727135886-df285cc8379f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80"
			alt="wedding dresses" /> <img class="secondDress"
			src="https://images.unsplash.com/photo-1534875756527-5e8e4392005f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=732&q=80"
			alt="wedding dresses" /> <img class="secondDress"
			src="https://images.unsplash.com/photo-1523264058183-49ea5572cdf4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"
			alt="wedding dresses" />
	</div>

	<h3 style="padding: .7%; margin-left: 5%; font-family: arvo;">Wedding</h3>
	<div class="dressesContainer">
		<c:forEach items="${products }" var="i">

			<div>
				<a style="color: black;" href="/category/${i.category}/${i.id}">
					<img class="allDresses" src="${i.url}" alt="product1" />
					<p class="dressname" style="margin-top: .8%;">${i.name}</p>
				</a>

				<p>$${i.price}</p>
			</div>
		</c:forEach>
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