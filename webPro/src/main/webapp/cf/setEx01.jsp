<%@page import="java.util.Set,java.util.HashSet,java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List</title>
</head>
<body>
	<h3>protocol://domain name:port/path</h3>
	<h3>http://127.0.0.1:8081/webPro/cf/setEx01.jsp</h3>
	<hr/>
	<h2>회원명단(구현클래스 사용)</h2>
<%//java코드작성
//클래스 참조변수 = new 클래스명();
//상위클래스 참조변수=new 하위클래스명();
//인터페이스 참조변수 = new 구현클래스명();
//HashSet객체를 생성하여 임의의 이름 5개를 저장하여 console에 출력하시오.
Set<String> set = new HashSet<String>();
set.add("heesu");
set.add("hyeona");
set.add("lily");
set.add("nanus");
set.add("lovely");
for(String name:set){
	System.out.println(name);//console에 출력
	out.println(name+"<br/>");//브라우저에 출력
}
%>
</body>
</html>