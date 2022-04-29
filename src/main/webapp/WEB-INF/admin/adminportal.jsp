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
<title>Administrator Portal</title>
</head>
<body style="display: flex; justify-content: center; background-color: #404040;">

	<div>
		<h1>Administrator Portal</h1>

		<form action="/productAdd" method="get">
			<input type="submit" value="Add">
		</form>
		<form action="/" method="get">
			<input type="submit" value="Home">
		</form>

		<table>
			<thead>
				<tr>
					<th>Product</th>
					<th>Category</th>
					<th>Price</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${products}" var="p">
					<tr>
						<td><c:out value="${p.name}" /></td>
						<td><c:out value="${p.category}" /></td>
						<td>$<c:out value="${p.price}" /></td>

						<td>
							<form action="/update/products/${p.id}" method="post">
								<input type="hidden" name="_method" value="put"> <input
									type="submit" value="Edit">
							</form>
						</td>

						<td>
							<form action="/delete/products/${p.id}" method="post">
								<input type="hidden" name="_method" value="delete"> <input
									type="submit" value="Delete">
							</form>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>