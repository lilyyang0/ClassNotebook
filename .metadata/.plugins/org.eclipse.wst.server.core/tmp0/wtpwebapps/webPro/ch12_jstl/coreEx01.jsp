<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
<h4>JSTL(Standard Tag Library) 교재-p292</h4>
<h5>Core태그: 변수설정, 조건문, 반복문 등을 제공</h5>
<% //jsp의 out기본 객체를 이용해서 브라우저 출력
out.println("*스크립틀릿을 이용해서 출력<br/>");
String msg="hello";
%>
<b>*jsp의 표현식을 이용해서 브라우저 출력:</b><%=msg %><br/>
<hr/>
*JSTL - core의 out태그를 이용해서 브라우저 출력:<br/>
<c:out value = "내용"/><br/>
<c:out value = "${'<tag> , &'}"/><br/>
<hr/>
<b>*JSTL - core의 set태그를 이용해서 브라우저 출력:</b><br/>
<%--
<c:set var="변수명" scope="영역session" value="변수값"/>
 --%>
<c:set var = "salary" scope = "session" value = "${2000*2}"/>
<c:out value = "${salary}"/>
<hr/>
<b>*JSTL - core의 remove태그를 이용해서 브라우저 출력:</b><br/>
<c:set var = "salary" scope = "session" value = "${2000*2}"/>
<p>Before Remove Value: <c:out value = "${salary}"/></p>
<c:remove var = "salary"/>
<p>After Remove Value: <c:out value = "${salary}"/></p>
<hr/>
<c:set var = "salary" scope = "session" value = "${2000*2}"/>
<p>Your salary is : <c:out value = "${salary}"/></p>
<c:choose>
   <c:when test = "${salary <= 0}">
      Salary is very low to survive.
   </c:when>
   
   <c:when test = "${salary > 1000}">
      Salary is very good.
   </c:when>
   
   <c:otherwise>
      No comment sir...
   </c:otherwise>
</c:choose>
<br/>
<b>for each</b><br/>
//--for(int i=1; i<=5; i++){syso("item")}<br/>
<c:forEach var = "i" begin = "1" end = "5" step="1">
   Item <c:out value = "${i} 번입니다"/><br/>
</c:forEach>
<br/>
<hr/>
<b>forTokens</b><br/>
//forTokens items="값1, 값2, 값n" delims="구분자, 공백 등" var="변수명"<br/>
<c:forTokens items = "love,happy,like" delims = "," var = "name">
   <c:out value = "${name}"/><br/>
</c:forTokens>
<hr/>

=====연습해보기====<br/>
</body>
</html>