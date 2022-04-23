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
</head>
<body>

	<h1>Black & White</h1>

	<div style="display: flex;">
		<div>
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


	</div>
</body>
</html>