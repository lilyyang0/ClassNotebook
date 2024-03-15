<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>c</title>
</head>
<body>
<h4>c.jsp문서</h4>
<xmp>
출발페이지->이 c.jsp문서
c.jsp?id=hongid&age=33
곧 목적지가 아닌 경유페이지가 될 예정
</xmp>
<%
String vid=request.getParameter("vid");//id
String vage=request.getParameter("vage");//age
//포워드액션태그 변경
System.out.println("c.jsp문서입니다.");//콘솔출력
System.out.println("parameter id="+vid);//콘솔출력
System.out.println("parameter age="+vage);//콘솔출력
%>
//포워드액션태그는 여기에 써야 한다.
<jsp:forward page="d.jsp"/>
</body>
</html>