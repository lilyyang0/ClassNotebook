<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>링크linkEx01</title>
</head>
<body>
<h4>linkEx01.jsp</h4>
<xmp>
-HTML
<a href="URL" target="_blank|_self">글자 또는 이미지</a>
<a href="http://www.naver.com">네이버</a>
-javascript
<span onclick="location.href='URL'">글자</span>
</xmp>
<hr/>
<ul>
html의 a요소 이용:
<li><a href="http://www.naver.com">네이버</a></li>
<li><a href="http://www.naver.com" target="_self">네이버(_self): 기본</a></li>
<li><a href="http://www.naver.com" target="_blank">네이버(_blank): 새window, 새tab</a></li>
</ul>
<hr/>
<ol>
javascript 이용:
<br/><br/>
<li><span onclick="location.href='http://www.nate.com/'">네이트</span></li>
<li><span onclick="location.href='<%=request.getContextPath()%>/html/formEx.jsp'">클릭</span></li>
</ol>
<hr/>
<iframe name="innerFrame" src="http://www.nate.com/"></iframe>
</body>
</html>