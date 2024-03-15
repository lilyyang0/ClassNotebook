<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ok</title>
</head>
<body>
<h5>ok.jsp</h5>
<hr/>
★getMethod:<%=request.getMethod() %><br/>
<pre>
교재-비번변경 기능구현에서 p622~623
교재에서는 form에서의 요청방식을 파악하여
get방식이면 processForm()메서드를 호출, =>p622 22라인
post방식이면 processSubmit()메서드를 호출하는 방식으로 진행한다. =>P622 24라인
-------------
교재-글목록보기 기능구현 p641
get방식이면 processForm()메서드를 호출=>p641 21라인
post방식이면 processSubmit()메서드를 호출하는 방식으로 진행=>p641 23라인

-------------
교재-글수정 기능 구현 p669
get방식이면 processForm()메서드를 호출=>p669 28라인
post방식이면 processForm()메서드를 호출=>p669 30라인
</pre>
<hr/>
http://127.0.0.1:8081/wp/ch03/ok.jsp<br/>
http://<%=request.getServerName() %>:<%=request.getServerPort() %><%=request.getRequestURI() %>
<br/>
<h5><a href="./formEx01.jsp">돌아가기</a></h5>
<hr/>
<%/*이 문서는 client의 request를 받아서 비즈니스로직 처리하는 server측 문서이다.*/
//이름: <input type="text" name="userName" id="userId" value="hong길동"/>
//비밀번호: <input type="password" name="userPwd" id="" value="1234"/>
//http://localhost:8081/wp/ch03/ok.jsp?userName=kimyoon&userPwd=1234&snsYN=Y&season=autumn
//client의 요청request를 받아서 변수에 할당.
String name = request.getParameter("userName");//이름
String pwd = request.getParameter("userPwd");//비밀번호
String sns = request.getParameter("snsYN");
String[] seasons = request.getParameterValues("season");
out.println("seasons=" + seasons);
%>
<%
//browser에 출력
out.println("<br/>"+"user가 입력한 내용"+"<br/>");
out.println("이름:" + name + "<br/>");
out.println("비밀번호:" +pwd + "<br/>");
out.println("SNS수신여부:" +sns + "<br/>");
out.println("좋아하는계절:" +Arrays.toString(seasons));
if(seasons!=null){
for(String season : seasons){
	out.println("<br/>좋아하는 계절:" + season);
	}
}
%>
<hr/>
<%
//p77 25라인 참고
//request.getParameterNames(); 파라미터 이름들 가져오기.
out.println("파라미터 이름:user가 입력 선택값 출력하기<br/>");
Enumeration<String> names = request.getParameterNames();
while(names.hasMoreElements()){
	String parameterName = names.nextElement();
	//p77 37라인 참고
	//request.getParameterMap(): 브라우저가 전송한 파라미터의 맵
	//다중선택이 있으니까 배열로 받는다.
	Map<String, String[]> map= request.getParameterMap();
	String[] value= map.get(parameterName);
	
	//브라우저에 파라미터명: user가 입력 선택한 값 출력
	for(String v:value){
	out.println(parameterName+":"+v+"<br/>");	
	}
}
%>

</body>
</html>