<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import java.io.PrintWriter %> %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>out내장객체</title>
</head>
<body>
<h3>out내장객체</h3>
out.println(), out.print()는 브라우저에서 출력하는 메서드<br/>
소스보기에서 차이점을 찾아보세요.<br/>
<%
out.println("1. println은 소스보기에서 줄바꿈이 되어보임");
out.println("2. println은 소스보기에서 줄바꿈이 되어보임");
out.print("3. print는 소스보기에서 그대로보임");
out.newLine();
out.print("4. print는 소스보기에서 그대로보임.");
%>

</body>
</html>