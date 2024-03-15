<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
</head>
<body>
<h1>메인페이지(index.jsp)</h1>
프로토콜://localhost:8081/webPro/contextPath<br/>
http://localhost:8081/webPro/index.jsp<br/>
<%=request.getContextPath() %>/index.jsp<br/>
<%=request.getContextPath() %>

<%
Object sessionObj =session.getAttribute("AUTH_USER_ID");
if(sessionObj!=null){
String loginId = (String) session.getAttribute("AUTH_USER_ID");
%>
<%-- 로그인 후 메뉴 --%>
<ul>
<li><%=loginId %>님 <a href="<%=request.getContextPath()%>/ch10/logout.jsp">로그아웃</a></li>
</ul>
<%-- 로그인 전 메뉴 --%>
<%} else{%>
<ul>
<li>회원가입=> 회원가입폼요청</li>
<li><a href="<%=request.getContextPath()%>/ch10/loginForm.jsp">로그인(loginForm.jsp이동)=>로그인폼 요청</a>
a href="/login.do"로 변경할 예정(p608)</li>
</ul>
<%} %>
</body>
</html>