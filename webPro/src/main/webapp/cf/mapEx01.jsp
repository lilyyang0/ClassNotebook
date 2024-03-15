<%@page import="java.util.*"%>
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
	<h3>http://127.0.0.1:8081/webPro/cf/mapEx01.jsp</h3>

	<hr/>
	<h2>회원명단(구현클래스 사용)</h2>
<%//java코드작성
//클래스 참조변수 = new 클래스명();
//상위클래스 참조변수=new 하위클래스명();
//인터페이스 참조변수 = new 구현클래스명();
//HashMap객체를 생성하여 임의의 이름 5개를 저장하여 console에 출력하시오.
Map<String, String> map = new HashMap<String, String>();
map.put("1", "heesu");
map.put("2", "hyeona");
map.put("3", "lily");
map.put("4", "nanus");
map.put("5", "lovely");

//특정K를 사용하여 브라우저에 출력
//map참조변수.get(K);
String name=map.get("5");
out.println("*5회원명:"+name+"<hr/>");

Set<String>keySet = map.keySet();
Iterator<String> iter = keySet.iterator();
while(iter.hasNext()){
	String key= iter.next();//키
	String value = map.get(key);//값
	System.out.println(key+":"+value);//console에출력
	out.println(key+" : "+value+"<br/>");//브라우저에 출력
}
%>
</body>
</html>