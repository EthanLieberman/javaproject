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
<title>B&W</title>
<link rel="stylesheet"
	href="/webjars/bootstrap/5.0.1/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/style.css">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Abril+Fatface&family=Josefin+Sans:wght@200&family=Arvo&family=Oleo+Script&display=swap"
	rel="stylesheet">
<script type="text/javascript" src="/js/js.js"></script>
</head>
<body>
	<div class="commercial">
		25% off today. Pick up available. <a href="/" style="color: white;">Options</a>
	</div>

	<!-- <a href="/logout">Logout</a> -->
	<img class="logo" src="/image/BW.png" alt="logo" />

	<div class="search">
		<a style="font-family: arvo; font-size: 10pt; color: black;"
			href="/enter">Sign In</a>
			
			<form action="/searchRequest" method="post">
			<input type="search" id="search" placeholder="search for products" name="search">
			<input type="submit" value="Search">
			</form>

	</div>




	<%-- <p>Hi ${userName}</p> --%>


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
			<li><a href="#">About</a>
			<li><a href="#">Contact</a>
		</ul>
		<!-- image -->
		<div class="image">
			<img class="image"
				src="https://images.pexels.com/photos/3352398/pexels-photo-3352398.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
				alt="logo" />
		</div>
	</div>


	<!--carousel-->






	<%-- ${cart} --%>
	<!-- footer -->
	<footer>
	
		<ul class="footer">
			<li>Black&White © B&W. All rights reserved.</li>
			<li>contact us</li>
			<li>privacy & concern</li>
			<li>privacy & concern</li>
		</ul>
	</footer>

</body>
</html>
