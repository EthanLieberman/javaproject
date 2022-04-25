<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- c:out ; c:forEach etc. --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- Formatting (dates) --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shopping Bag</title>
</head>
<body>
<h1>Shopping bag</h1>

<form action="/cart/4" method="post">
<input type="hidden" name="_method" value="put">
<input type="submit" value="add to cart">
</form>

${cart.products}
<c:forEach items="${cart.products}" var="i">
${i.name}
</c:forEach>

</body>
</html>