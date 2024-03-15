<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List, java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List</title>
</head>
<body>
	<h3>protocol://domain name:port/path</h3>
	<h3>http://127.0.0.1:8081/webPro/cf/listEx01.jsp</h3>
<%//java코드작성
//클래스 참조변수 = new 클래스명();
//상위클래스 참조변수=new 하위클래스명();
//인터페이스 참조변수 = new 구현클래스명();
//ArrayList객체를 생성하여 임의의 이름 5개를 저장하여 console에 출력하시오.
//ArrayList<String> nameList = new ArrayList<String>();
List<String> nameList = new ArrayList<String>();
nameList.add("heesu");
nameList.add("hyeona");
nameList.add("lily");
nameList.add("nanus");
nameList.add("lovely");

//console에 출력
for(int i=0; i<nameList.size(); i++){
		System.out.println(nameList.get(i));
}
%>
	<hr/>
<h2>회원명단(ArrayList구현클래스)</h2>
<%
//브라우저에 출력
for(int i=0; i<nameList.size(); i++){
		String name=nameList.get(i);
%>
		<%=name %><br/>
<%}
%>

</body>
</html>