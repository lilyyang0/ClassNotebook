<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>로그인화면(loginForm.jsp)</h2>
<form name="loginForm" action="./mapEx03_Login.jsp" method="get">
*아이디:<input type="text" name="userId" required="required"/><br/>
*비밀번호:<input type="password" name="userPwd" required="required"/><br/>
<input type="submit" value="로그인"/>
<input type="reset" value="취소"/>
<xmp>
mapEx03_Login.jsp?userId=hongid&userPwd=1234
서버측페이지?파라미터명=값&파라미터명=값
<form name="폼요소명" action="서버측의 페이지" method="get|post"></form>
</xmp>
</form>
<hr/>
<xmp>
링크문법
<a href="">text 또는 이미지 등의 여러가지 요소</a>
</xmp>
<h2>protocol://domainName:port/path/</h2>
<pre>
* 절대경로(Absolute Path)
현재문서URL: http://localhost:8081/webPro/cf/loginForm.jsp
이동문서URL: http://127.0.0.1:8081/webPro/cf/mapEx03_Login.jsp
* 상대경로(Relative Path)
현재위치 .
상위위치 ..
현재문서URL: http://localhost:8081/webPro/cf/loginForm.jsp
이동문서URL: http://127.0.0.1:8081/webPro/cf/mapEx03_Login.jsp
</pre>
<a href="../cf/mapEx03_Login.jsp">상대경로: mapEx03_Login이동</a><br/>
<a href="./mapEx03_Login.jsp">상대경로: mapEx03_Login이동</a><br/>
<a href="mapEx03_Login.jsp">상대경로: mapEx03_Login이동</a>
<br/>
<a href="http://127.0.0.1:8081/webPro/cf/mapEx03_Login.jsp">절대경로: mapEx03_Login이동</a>
</body>
</html>