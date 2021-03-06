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
<title>Administrator Update</title>
</head>
<body style="display: flex; justify-content: center; background-color: #404040;">
	<div>
		<h1>Update product</h1>

		<form:form action="/update/products/${product.id}" method="post"
			modelAttribute="product">
			<input type="hidden" name="_method" value="put">
			<p>
				<form:label path="name">Name</form:label>
				<form:errors path="name" />
				<form:input path="name" />
			</p>
			<p>
				<form:label path="url">Image URL</form:label>
				<form:errors path="url" />
				<form:input path="url" />
			</p>
			<img alt="product image" src="${product.url}" width="300px">
			<p>
				<form:label path="price">Price</form:label>
				<form:errors path="price" />
				<form:input path="price" />
			</p>
			<p>
				<form:label path="category">Category</form:label>
				<form:errors path="category" />
				<form:select path="category">
					<form:option value="weddingdresses" />
					<form:option value="bridesmaiddresses" />
					<form:option value="tuxedos" />
					<form:option value="formal Suits" />
					<form:option value="ties" />
					<form:option value="tiara" />
					<form:option value="veils" />
					<form:option value="jewelry" />
				</form:select>
			</p>
			<p>
				<form:label path="description">Description</form:label>
				<form:errors path="description" />
				<form:textarea path="description" />
			</p>
			<input type="submit" value="Update Product" />
		</form:form>

		<form action="/adminportal" method="get">
			<input type="submit" value="Return">
		</form>
	</div>
</body>
</html>