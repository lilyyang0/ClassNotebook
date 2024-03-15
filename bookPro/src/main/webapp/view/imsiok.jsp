<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>imsiok</title>
</head>
<body>
<div>imsiok.jsp</div>
<div>
<%
//이 문서는 로그인폼에서 요청한 값을 받아서 로그인을 처리하는 페이지다
//로그인폼에서 get방식 요청하면 -> 로그인 폼 문서로 이동
//로그인폼에서 post방식 요청하면 -> 로그인처리(컨트롤러->서비스->DB예정)

String method=request.getMethod();
out.println("요청방식="+method);
String form_view="loginForm.jsp";

if(method.equalsIgnoreCase("GET")){
	System.out.println("GET방식요청시 로그인폼 문서로이동");//콘솔출력
	response.sendRedirect("loginForm.jsp");
	out.println("GET방식 요청시 로그인 폼 문서로 이동");
	out.println("<br/><a href='loginForm.jsp'>로그인 폼 문서로 이동</a>");
}else if(method.equalsIgnoreCase("POST")){
	System.out.println("POST방식요청시 로그인폼 문서로이동");//콘솔출력
	out.println("POST방식 요청시 로그인 처리할 예정");
}
%>
<br/>
<a href="loginForm.jsp">돌아가기</a>
</div>
</body>
</html>