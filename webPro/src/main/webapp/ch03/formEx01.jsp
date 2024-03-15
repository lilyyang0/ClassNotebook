<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form태그</title>
</head>
<body>
<h3>form요소</h3>
<pre>
http://도메인네임또는아이피주소:포트번호/컨텍스트페스/경로/파일명.확장자
http://localhost:<%=request.getServerPort() %><%= request.getRequestURI()%>
</pre>
<%
out.println(request.getRequestURI());
out.println(request.getContextPath());
out.println(request.getProtocol());
out.println(request.getContentType());
%>

<form action="ok.jsp" method="get">
<ul>
	<li>이름: <input type="text" name="userName" id="userId" value="dummyName" required="required"/></li>
	<li>비밀번호: <input type="password" name="userPwd" id="" value="dummyPwd" required="required"/></li>
	<li>SNS수신여부: 
	<input type="radio" name="snsYN" value="Y">수신허용
	<input type="radio" name="snsYN" value="N">수신불허
	</li>
	<li>좋아하는 계절:
	<input type="checkbox" name="season" id="season1" value="spring"/>봄
	<input type="checkbox" name="season" id="season2" value="summer"/>여름
	<input type="checkbox" name="season" id="season3" value="autumn" checked="checked"/>가을
	<input type="checkbox" name="season" id="season4" value="winter"/>겨울
	</li>
	<li>
		<input type="submit" value="전송"/>
		<input type="reset" value="취소"/>
	</li>
</ul>
</form>
</body>
</html>