<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>국제화태그</title>
</head>
<body>
<h4>숫자 및 날짜 포맷팅 처리(p324)</h4>
<h3>Number Format:</h3>
<c:set var = "balance" value = "120000.2309" />
   
<p>Formatted Number (1): <fmt:formatNumber value = "${balance}" 
   type = "currency"/></p>
<p>Formatted Number (2): <fmt:formatNumber type = "number" 
   maxIntegerDigits = "3" value = "${balance}" /></p>
<p>Formatted Number (3): <fmt:formatNumber type = "number" 
   maxFractionDigits = "3" value = "${balance}" /></p>
<p>Formatted Number (4): <fmt:formatNumber type = "number" 
   groupingUsed = "false" value = "${balance}" /></p>
<p>Formatted Number (5): <fmt:formatNumber type = "percent" 
   maxIntegerDigits="3" value = "${balance}" /></p>
<p>Formatted Number (6): <fmt:formatNumber type = "percent" 
   minFractionDigits = "10" value = "${balance}" /></p>
<p>Formatted Number (7): <fmt:formatNumber type = "percent" 
   maxIntegerDigits = "3" value = "${balance}" /></p>
<p>Formatted Number (8): <fmt:formatNumber type = "number" 
   pattern = "###.###E0" value = "${balance}" /></p>
<p>Currency in USA :
   <fmt:setLocale value = "en_US"/>
   <fmt:formatNumber value = "${balance}" type = "currency"/>
</p>
<h3>Date Format: 현재 기준 처리 주문</h3> 
날짜, 보고서 기한, 게시판 작성 일자, 선수 기록 등에 활용<br/>
<c:set var = "now" value = "<%= new java.util.Date()%>" />
<p>Formatted Date (1): <fmt:formatDate type = "time" 
   value = "${now}" /></p>
<p>Formatted Date (2): <fmt:formatDate type = "date" 
   value = "${now}" /></p>
<p>Formatted Date (3): <fmt:formatDate type = "both" 
   value = "${now}" /></p>
<p>Formatted Date (4): <fmt:formatDate type = "both" 
   dateStyle = "short" timeStyle = "short" value = "${now}" /></p>
<p>Formatted Date (5): <fmt:formatDate type = "both" 
   dateStyle = "medium" timeStyle = "medium" value = "${now}" /></p>
<p>Formatted Date (6): <fmt:formatDate type = "both" 
   dateStyle = "long" timeStyle = "long" value = "${now}" /></p>
<p>Formatted Date (7): <fmt:formatDate pattern = "yyyy-MM-dd" 
   value = "${now}" /></p>
</body>
</html>