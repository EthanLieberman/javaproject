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
<title>Administrator Add product</title>
</head>
<body style="display: flex; justify-content: center; background-color: #404040;">
	<div>
		<h1>Add product</h1>

		<form:form action="/product/create" method="post"
			modelAttribute="product">
			<p>
				<form:label path="name">Name</form:label>
				<form:errors path="name" style="color: red;" />
				<form:input path="name" />
			</p>
			<p>
				<form:label path="url">Image URL</form:label>
				<form:errors path="url" style="color: red;"/>
				<form:input path="url" />
			</p>
			<p>
				<form:label path="price">Price</form:label>
				<form:errors path="price" style="color: red;"/>
				<form:input path="price" />
			</p>
			<p>
				<form:label path="category">Category</form:label>
				<form:errors path="category" />
				<form:select path="category">
					<form:option value="Suits" />
					<form:option value="Dresses" />
					<form:option value="Tops" />
					<form:option value="Skirts" />
					<form:option value="Test" />
					<form:option value="Test" />
				</form:select>
			</p>
			<p>
				<form:label path="description">Description</form:label>
				<form:errors path="description" style="color: red;"/>
				<form:textarea path="description" />
			</p>
			<input type="submit" value="Add New Product" />
		</form:form>
		<form action="/adminportal" method="get">
			<input type="submit" value="Return">
		</form>
	</div>
</body>
</html>