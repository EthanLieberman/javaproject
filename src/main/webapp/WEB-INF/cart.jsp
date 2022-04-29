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
<title>Shopping Bag</title>
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

						<li style="font-family: arvo;"><a
							href="/category/weddingdresses">Wedding Dresses</a></li>
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

					</ul>
			</ul>
		</div>

	</div>




	<div class="logoContainer">
		<c:if test="${panda}">
			<a href="/"><img class="logo" src="/image/panda.png" alt="logo" /></a>
		</c:if>
		<c:if test="${!panda}">
			<a href="/"><img class="logo" src="/image/BW.png" alt="logo" /></a>
		</c:if>

	</div>



	<div style="width: 75%; margin: auto;">
		<h1>Shopping bag</h1>
	</div>
	<div class="tableCenter">
		<table class="table  table-hover w-75">
			<thead>
				<tr>
					<th scope="col">product</th>
					<th scope="col">quantity</th>
					<th scope="col">price</th>


				</tr>
			</thead>
			<tbody>
				<c:forEach items="${cart.products}" var="i" varStatus="loop">
					<tr>
						<td scope="row">${i.name}<img class="aboutImage" alt="item"
							src="${i.url}">
							<form action="/removefromcart/${loop.index}" method="post">
								<input type="image" src="/image/recycle.png"
									alt="Remove from cart" width="20px">
							</form>
						</td>
						<td>1</td>
						<td>$${i.price}</td>


					</tr>
					<c:set var="sum" value="${sum + i.price}" />

					<c:set var="taxes" value="${sum * .07}" />

				</c:forEach>
			</tbody>
		</table>

	</div>
	<div class="center">
		<div class="total" style="display: flex; align-items: flex-end;">
			<h4>Sub Total:</h4>

			<p>
				Taxes:
				<fmt:formatNumber type="currency" maxFractionDigits="2"
					minFractionDigits="2" currencySymbol="$" value="${taxes}" />
			</p>
			<p>
				Total:
				<fmt:formatNumber type="currency" maxFractionDigits="2"
					minFractionDigits="2" currencySymbol="$" value="${sum + taxes}" />
			</p>
		</div>
	</div>

	<div
		style="margin: auto; display: flex; flex-direction: column; align-items: center;">

		<div class="center" style="gap: 3%;">
			<form action="/" method="get">
				<input class="button3" type="submit" value="continue shopping">
			</form>
			<form action="/checkout" method="get">
				<input class="button" type="submit" value="checkout">
			</form>
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