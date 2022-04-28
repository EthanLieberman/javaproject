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
<title>Order Complete</title>
<link rel="stylesheet"
	href="/webjars/bootstrap/5.0.1/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/style.css">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap"
	rel="stylesheet">
</head>
<body>

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

	<div class="logoContainer">
		<c:if test="${panda}">
			<a href="/"><img class="logo" src="/image/panda.png" alt="logo" /></a>
		</c:if>
		<c:if test="${!panda}">
			<a href="/"><img class="logo" src="/image/BW.png" alt="logo" /></a>
		</c:if>

	</div>


	<div class="center">
		<div style="background-color: gray; width: 500px; display: flex; justify-content: center;">
			<h5>Order Number: xxxxxxxxxx</h5>
		</div>
	</div>





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