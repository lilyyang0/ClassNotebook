<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>C for each</title>
</head>
<body>
<b>for each</b><br/>
<c:forEach var = "i" begin = "0" end = "9" step="1">
<c:out value = "${'야호'}"/><br/>
</c:forEach>
<br/>
</body>
</html>