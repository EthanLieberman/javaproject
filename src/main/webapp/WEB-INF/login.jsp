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

<div id="carouselSlidesOnly" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <p class="d-block commercial" alt="Slide 3">25% off today. Pick up available. Options</p>
    </div>
    <div class="carousel-item">
        <p class="d-block commercial"" alt="Slide 3">Subscribe today.</p>
    </div>
    <div class="carousel-item">
    <p class="d-block commercial"" alt="Slide 3">Call us for an appointment.</p>
    </div>
  </div>
</div>

	<!-- <a href="/logout">Logout</a> -->
	<div class="logoContainer">
		<c:if test="${panda}">
			<a href="/"><img class="logo" src="/image/panda.png" alt="logo" /></a>
		</c:if>
		<c:if test="${!panda}">
			<a href="/"><img class="logo" src="/image/BW.png" alt="logo" /></a>
		</c:if>

	</div>




	<%-- <p>Hi ${userName}</p> --%>


	<div class="center">
		<div class="dropdown">
			<ul class="menu">
				<li><a href="/">Home</a></li>
				<li><a href="#">Women</a>
					<ul class="dropdown-content">
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
					</ul></li>
				<li><a href="/about">About</a>
			</ul>
		</div>

	</div>

	<div
		style="display: flex; justify-content: center; padding: 2%; flex-direction: row-reverse;">
		<div class="register">
			<h3>Sign Up</h3>
			<form:form action="/register" method="post" modelAttribute="newUser">
				<div>
					Profile Name:
					<form:label path="userName" for="floatingInput">
					</form:label>
					<form:errors style="color: red;" path="userName" />
					<form:input path="userName" class="form-control form-control-sm"
						type="text" aria-label=".form-control-sm" />
				</div>
				<div>
					Email:
					<form:label path="email" for="floatingInput">
					</form:label>
					<form:errors style="color: red;" path="email" />
					<form:input path="email" class="form-control form-control-sm"
						type="text" aria-label=".form-control-sm" />
				</div>

				<div>
					Password:
					<form:label path="password" for="floatingInput">
					</form:label>
					<form:errors style="color: red;" path="password" />
					<form:input path="password" class="form-control form-control-sm"
						type="password" aria-label=".form-control-sm" />
				</div>
				<div>
					Confirm Password:
					<form:label path="confirm" for="floatingInput">
					</form:label>
					<form:errors style="color: red;" path="confirm" />
					<form:input path="confirm" class="form-control form-control-sm"
						type="password" aria-label=".form-control-sm" />
				</div>

				<input class="button" type="submit" value="Submit" />
			</form:form>

		</div>

		<div>
			<h3>Sign In</h3>
			<form:form action="/login" method="post" modelAttribute="newLogin">
				<div>
					Email:
					<form:label path="email" for="floatingInput">
					</form:label>
					<form:errors style="color: red;" path="email" />
					<form:input path="email" class="form-control form-control-sm"
						type="text" aria-label=".form-control-sm" />
				</div>
				<div>
					Password:
					<form:label path="password" for="floatingInput">
					</form:label>
					<form:errors style="color: red;" path="password" />
					<form:input path="password" class="form-control form-control-sm"
						type="password" aria-label=".form-control-sm" />
				</div>

				<input class="button" type="submit" value="Submit" />
			</form:form>
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
