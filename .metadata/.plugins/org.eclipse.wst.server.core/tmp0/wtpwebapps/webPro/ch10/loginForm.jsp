<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginForm</title>
</head>
<body>
<xmp>
p608에서는 action="login.do"로 지정
여기에서는 임시로 loginOk.jsp로 지정
</xmp>
<hr/>
<%//로그인 실패시 서버로부터 받은 로그인 실패 원인에 따른 메시지를 출력
String model=(String)request.getAttribute("errMSG");
if(model!=null){
	out.println("모델내용:"+model);
	out.println("<hr/>");
}%>
<!-- 삭제
모델내용: ${errMSG}
-->
<a href="<%=request.getContextPath() %>/index.jsp">메인(Index)</a>
<hr/>
<h4>loginForm(p608)</h4>
<form name="loginFrm" id="loginFrm" action="loginOk.jsp" method="get">
<div>
<p>
아이디:<br/><input type="text" name="id" id="id"/>
</p>
</div>
<div>
<p>
암호:<br/><input type="password" name="password" id="password"/>
</p>
</div>
<div>
<input type="submit" value="로그인">
<input type="reset" value="취소">
</div>
</form>
<br/>====주소정리====<br/>
http://<%=request.getServerName() %>:<%=request.getServerPort() %><%=request.getRequestURI() %>
<br/>
</body>
</html>