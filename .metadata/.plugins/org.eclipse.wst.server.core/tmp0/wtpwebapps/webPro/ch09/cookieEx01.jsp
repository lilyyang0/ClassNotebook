<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키</title>
</head>
<body>
<h4>쿠키(cookieEx01.jsp) - 교재p205</h4>
<%--jsp 주석문--%>
<!--HTML 주석문 -->
<%--이 문서에는 쿠키를 만들어서 response에 실어서 client에게 줄 예정 --%>
<%
//만약 여러개의 쿠키정보를 client에게 제공하고 싶으면 반복작업
//1. Cookie를 생성
Cookie cookie = new Cookie("nickName","ahahaha");

//value를 변경할 수 있다.
cookie.setValue("hohohoho");

//2. 저장위치를 지정
cookie.setPath("/");
//3. setMaxAge(): 생존기간 설정(선택)
cookie.setMaxAge(60*60*24);//초단위.//0이면 쿠키 삭제를 의미한다.
//4. ★이렇게해서 만들어진 쿠키를 response에 실어서 client에게 보낸다.
response.addCookie(cookie);
%>
<p>쿠키 굽는데 성공했어요!</p>
</body>
</html>