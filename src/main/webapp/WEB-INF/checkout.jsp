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

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Checkout</title>
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

	<div class="logoContainer">
		<a href="/"><img class="logo" src="/image/BW.png" alt="logo" /></a>
	</div>


	<div class="center">
		<form:form action="/checkoutProcess" method="post"
			modelAttribute="checkout" style="display: flex; gap: 50px;">
			<div>
				<p>
					<form:label path="firstName">First Name</form:label>
					<form:errors path="firstName" style="color: red;" />
					<form:input path="firstName" />
				</p>
				<p>
					<form:label path="lastName">Last Name</form:label>
					<form:errors path="lastName" style="color: red;" />
					<form:input path="lastName" />
				</p>
				<p>
					<form:label path="email">Email</form:label>
					<form:errors path="email" style="color: red;" />
					<form:input path="email" />
				</p>
				<p>
					<form:label path="phone">Phone #</form:label>
					<form:errors path="phone" style="color: red;" />
					<form:input path="phone" />
				</p>
				<p>
					<form:label path="address">Address</form:label>
					<form:errors path="address" style="color: red;" />
					<form:input path="address" />
				</p>
				<p>
					<form:label path="city">City</form:label>
					<form:errors path="city" style="color: red;" />
					<form:input path="city" />
				</p>
				<p>
					<form:label path="state">State</form:label>
					<form:errors path="state" style="color: red;" />
					<form:select path="state">
						<form:option value="AL" />
						<form:option value="AK" />
						<form:option value="AZ" />
						<form:option value="AR" />
						<form:option value="CA" />
						<form:option value="CZ" />
						<form:option value="CO" />
						<form:option value="CT" />
						<form:option value="DE" />
						<form:option value="DC" />
						<form:option value="FL" />
						<form:option value="GA" />
						<form:option value="GU" />
						<form:option value="HI" />
						<form:option value="ID" />
						<form:option value="IL" />
						<form:option value="IN" />
						<form:option value="IA" />
						<form:option value="KS" />
						<form:option value="KY" />
						<form:option value="LA" />
						<form:option value="ME" />
						<form:option value="MD" />
						<form:option value="MA" />
						<form:option value="MI" />
						<form:option value="MN" />
						<form:option value="MS" />
						<form:option value="MO" />
						<form:option value="MT" />
						<form:option value="NE" />
						<form:option value="NV" />
						<form:option value="NH" />
						<form:option value="NJ" />
						<form:option value="NM" />
						<form:option value="NY" />
						<form:option value="NC" />
						<form:option value="ND" />
						<form:option value="ND" />
						<form:option value="OH" />
						<form:option value="OK" />
						<form:option value="OR" />
						<form:option value="PA" />
						<form:option value="PR" />
						<form:option value="RI" />
						<form:option value="SC" />
						<form:option value="SD" />
						<form:option value="TN" />
						<form:option value="TX" />
						<form:option value="UT" />
						<form:option value="VT" />
						<form:option value="VI" />
						<form:option value="VA" />
						<form:option value="WA" />
						<form:option value="WV" />
						<form:option value="WI" />
						<form:option value="WY" />
					</form:select>
				</p>
				<p>
					<form:label path="cardnum">Card Number</form:label>
					<form:errors path="cardnum" style="color: red;" />
					<form:input type="number" path="cardnum" />
				</p>
				<p>
					<form:label path="cvv">CVV</form:label>
					<form:errors path="cvv" style="color: red;" />
					<form:input path="cvv" />
				</p>
				<p>
					<form:label path="expirationdate">Expiration Date</form:label>
					<form:errors path="expirationdate" style="color: red;" />
					<form:input type="month" path="expirationdate" />
				</p>

			</div>
			<div>
				<div style="background-color: gray; padding: 10px;">
					<h3>Order</h3>
					<c:forEach items="${cart.products}" var="i">
						<p>
							<c:out value="${i.name}" />
							<c:out value="${i.price}" />
						</p>
						<c:set var="sum" value="${sum + i.price}" />
					</c:forEach>
					<c:set var="taxes" value="${sum * .07}" />

					<p>
						Taxes:
						<fmt:formatNumber type="number" maxFractionDigits="2"
							value="${taxes}" />
					</p>
					<p>
						Total:
						<fmt:formatNumber type="number" maxFractionDigits="2"
							value="${sum + taxes}" />
					</p>
				</div>

				<div
					style="background-color: darkgray; width: 300px; height: 100px; padding: 10px;">
					<input type="submit" value="Pay" />
					<div style="display: flex; justify-content: space-between; margin-top: 10px; align-items: center;">
						<img alt="visa" src="/image/visa.png" height="25px"> <img
							alt="paypal" src="/image/paypal.png" height="25px"> <img
							alt="mastercard" src="/image/mastercard.png" height="25px">
						<img alt="bitcoin" src="/image/bitcoin.png" height="15px">
					</div>
				</div>
			</div>


		</form:form>
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