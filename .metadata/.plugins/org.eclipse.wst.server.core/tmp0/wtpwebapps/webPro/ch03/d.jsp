<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>d</title>
</head>
<body>
<h4>d.jsp문서</h4>
<xmp>
출발페이지->c.jsp문서거쳐서->이 d.jsp문서
user가 보게되는 응답페이지가 될 예정
</xmp>
<%
String id=request.getParameter("id");//id
String age=request.getParameter("age");//age
//포워드액션태그 변경
System.out.println("d.jsp문서입니다.");//콘솔출력
System.out.println("c.jsp를 통해서 건내받은 파라미터 id="+id);//콘솔출력
System.out.println("c.jsp를 통해서 건내받은 파라미터  age="+age);//콘솔출력

//브라우저에 출력
out.println("c.jsp를 통해서 건내받은 파라미터 id="+id+"<br/>");
out.println("c.jsp를 통해서 건내받은 파라미터  age="+age);
%>
</body>
</html>