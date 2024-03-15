<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>current time</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8"); 
String name = request.getParameter("a");
String hobby  = request.getParameter("c");

out.println(name);
out.println(hobby);
%>

</body>
</html>