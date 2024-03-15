<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request객체(P73)</title>
<h3>request객체(p73)</h3>
<h4>URL</h4>
<h4>프로토콜://도메인네임또는아이피주소:포트번호/컨텍스트패스/경로/파일명.확장자</h4>
<h4>http://localhost:8081/webPro/ch03/requestP73.jsp</h4>
<h4>http://127.0.0.1:8081/webPro/ch03/requestP73.jsp</h4>
</head>
<body>
<hr/>
<%	//scriptlit 02-123-1234 031-111-9999
	//801206-1234567
	String ssn="801206-1234567";
	System.out.println(ssn);
	System.out.println(ssn.substring(7));//1234567
	System.out.println(ssn.substring(2,6));//1206
	System.out.println(ssn.length());//글자길이
	//-------------------
	String uri = request.getRequestURI();
	String conPath = request.getContextPath();
	out.println(uri); // /webPro/ch03/requestP73.jsp
	out.println("<br/>");
	out.println(conPath);// /webPro
	out.println("<br/>");
	out.println(conPath.length());//7
	out.println("<br/>");
	out.println(uri.substring(7));// /ch03/requestP73.jsp
	out.println("<br/>");
	out.println(uri.substring(conPath.length())); // /ch03/requestP73.jsp
	out.println("<br/>");
	out.println(uri.substring(request.getContextPath().length()));
%>
<hr/>
<ul>
<li>클라이언트IP-getRemoteAddr(): <%=request.getRemoteAddr() %></li>
<li>요청정보길이-getContentLength(): <%=request.getContentLength() %></li>
<li>요청정보 인코딩-getCharacterEncoding(): <%=request.getCharacterEncoding() %></li>
<li>요청정보 컨텐츠타입-getContentType(): <%=request.getContentType() %></li>
<li>요청정보 프로토콜-getProtocol(): <%=request.getProtocol() %></li>
<li>요청정보 전송방식-getMethod(): <%=request.getMethod() %></li>
<li>●●●요청URI-getRequestURI() <%=request.getRequestURI() %></li>
<li>●●●컨텍스트 경로-getContextPath(): <%=request.getContextPath() %></li>
<li>서버이름-getServerName(): <%=request.getServerName() %></li>
<li>서버포트-getServerPort(): <%=request.getServerPort() %></li>
</ul>

<%//Scriptlit
	String remoteURI = request.getRequestURI();
	String contextPath = request.getContextPath();
	
	out.println(remoteURI);
	out.println("<br/>");
	out.println(contextPath);
%>
</body>
</html>