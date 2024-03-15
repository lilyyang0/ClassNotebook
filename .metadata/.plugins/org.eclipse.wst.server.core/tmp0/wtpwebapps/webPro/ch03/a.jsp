<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>a</title>
</head>
<body>
<h4>a.jsp문서</h4>
<xmp>
출발페이지->이 a.jsp문서
곧 목적지가 아닌 경유페이지가 될 예정
</xmp>
<%
String id=request.getParameter("id");//id
String age=request.getParameter("age");//age
response.sendRedirect("b.jsp");
System.out.println("a.jsp문서입니다.");//콘솔출력
System.out.println("parameter id="+id);//콘솔출력
System.out.println("parameter age="+age);//콘솔출력
%>
</body>
</html>