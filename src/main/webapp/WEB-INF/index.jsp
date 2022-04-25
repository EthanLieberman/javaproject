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
<link rel="icon" type="image/ico" href="/favicon.png">
<title>Insert title here</title>
</head>
<body>
<h1>index</h1>
<p>Hi ${userName}</p>
<a href="/enter">Login</a>
<a href="/logout">Logout</a>

${cart.products}
<c:forEach items="${cart.products}" var="i">
${i.name}
</c:forEach>

</body>
</html>