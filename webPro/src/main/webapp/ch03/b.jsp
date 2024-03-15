<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>b</title>
</head>
<body>
<h4>b.jsp문서</h4>
<xmp>
출발페이지->a.jsp문서 거쳐서->b.jsp
User가 보게되는, 서버가 유저에게 제시해주는 응답페이지가 될 예정
</xmp>
<%
String id=request.getParameter("id");//id
String age=request.getParameter("age");//age
System.out.println("b.jsp문서입니다.");//콘솔출력
System.out.println("a.jsp를 통해서 건내받은 파라미터 id="+id);//콘솔출력
System.out.println("a.jsp를 통해서 건내받은 파라미터  age="+age);//콘솔출력

//브라우저에 출력
out.println("a.jsp를 통해서 건내받은 파라미터 id="+id+"<br/>");
out.println("a.jsp를 통해서 건내받은 파라미터  age="+age);
%>
</body>
</html>