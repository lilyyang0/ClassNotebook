<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>link</title>
</head>
<body>
String uri = request.getRequestURI();<br/>
String conPath = request.getContextPath();<br/>
out.println(uri.substring(contextPath().length()));<br/>
out.println(uri.substring(request.getContextPath().length()));<br/>
<h4>http://localhost:8081/webPro/link.jsp</h4>
<ul>
<li><a href="http://localhost:8081/webPro/ch03/requestP73.jsp">request기본객체(requestP73.jsp로 이동)</a></li>
<li><a href="./ch03/requestP73.jsp">request기본객체(상대경로)</a></li>
<li><a href="<%=request.getContextPath()%>/ch03/requestP73.jsp">request기본객체(request객체활용: 절대경로)</a></li>
<li><a href="<%=request.getContextPath()%>">response기본객체</a></li>
</ul>
</body>
</html>