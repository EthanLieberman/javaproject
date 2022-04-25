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
<title>Registration & Login</title>
<link rel="stylesheet"
	href="/webjars/bootstrap/5.0.1/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/style.css">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Abril+Fatface&family=Josefin+Sans:wght@200&family=Arvo&family=Oleo+Script&display=swap"
	rel="stylesheet">
</head>
<body>

<div class="commercial">
		25% off today. Pick up available. <a href="/" style="color: white;">Options</a>
	</div>

	<!-- <a href="/logout">Logout</a> -->
	<img class="logo" src="/image/BW.png" alt="logo" />

	<div class="search">
		<a style="font-family: arvo; font-size: 10pt; color: black;"
			href="/enter">Sign In</a> <label for="search"></label> <input
			type="search" id="search" placeholder="search for products"
			name="search">

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
	
	</div>

	<div style="display: flex;" class="register">
		<div class="register">
			<h3>Register</h3>
			<form:form action="/register" method="post" modelAttribute="newUser">
				<p>
					<form:label path="userName">UserName</form:label>
					<form:errors path="userName"  style="color: red;"/>
					<form:input path="userName" />

				</p>
				<p>
					<form:label path="email">Email</form:label>
					<form:errors path="email" style="color: red;" />
					<form:input path="email" />
				</p>
				<p>
					<form:label path="password">Password</form:label>
					<form:errors path="password" style="color: red;" />
					<form:password path="password" />
				</p>
				<p>
					<form:label path="confirm">Confirm Password</form:label>
					<form:errors path="confirm"  style="color: red;" />
					<form:password path="confirm" />
				</p>

				<input type="submit" value="Submit" />
			</form:form>

		</div>

		<div>
			<h3>Log In</h3>
			<form:form action="/login" method="post" modelAttribute="newLogin">
				<p>
					<form:label path="email">Email</form:label>
					<form:errors path="email"  style="color: red;"/>
					<form:input path="email" />
				</p>
				<p>
					<form:label path="password">Password</form:label>
					<form:errors path="password"  style="color: red;"/>
					<form:password path="password" />
				</p>
				<input type="submit" value="Submit" />
			</form:form>
		</div>
	<footer>
	
		<ul class="footer">
			<li>Black&White © B&W. All rights reserved.</li>
			<li>contact us</li>
			<li>privacy & concern</li>
			<li>privacy & concern</li>
		</ul>
	</footer>

	</div>
</body>
</html>
