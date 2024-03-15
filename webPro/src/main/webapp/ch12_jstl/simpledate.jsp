<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.Date, java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>현재 날짜와 시간</title>
</head>
<body>
    <%
        Date now = new Date();
        
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
    %>
    
    <p>현재 날짜와 시간: <b><%= sdf.format(now) %></b></p>
</body>
</html>