<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Date, java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginOk2</title>
</head>
<body>
<h4>loginOk2.jsp</h4>
이 문서는 loginForm.jsp에서 client가 보낸 id, 비번을 받아 처리하는 server측 페이지 이다.<br/>
나중에는 LoginHandler.java(p606)에서 처리할 예정이다.<br/>
<br/>
<button type="button" onclick="location.href='loginForm2.jsp'">back</button> 
<br/><hr/>


<% 	//MVC패턴: client->요청(request)->server->
	//server는 요청에 따라 비즈니스 로직 수행
	//Controller가 호출
	/* Controller가 해야할 일 - 외워요!
	1. parameter얻기
	2. 비즈니스로직 수행->Service<->DAO<->DB
	//여기에서는 회원DB의 id를 java/비번 qwert가정하고 진행
	//비교하여 id와 비번이 모두 일치해야지만 세션에 정보를 저장
	//id또는 비번이 불일치하면 "id나 비번이 불일치합니다" 메시지를 클라이언트에게 보내줄 예정
	3. Model - session객체를 이용.
	//session.setAttribute(String속성명, Object값)
	session.setAttribute(String 속성명, Object값)
	session.setAttribute("","아무id");
	4. View지정	
	//out.println("id나 비번이 불일치");//loginOk.jsp브라우저에 출력
	*/

	//세션이 생성된 시간
	
	//1. parameter
	String id = request.getParameter("id");//name속성 값 가져옴
	String pw = request.getParameter("password");//name속성 값 가져옴

	
	String dbid="java";
	String dbpwd="qwert";
	if(dbid.equals(id)&&dbpwd.equals(pw)){
		session.setAttribute("AUTH_USER_ID",dbid);
		session.setAttribute("AUTH_USER_PWD",dbpwd);
		out.println("===로그인 성공 했습니다.===<br/>");
		}else{
		//id또는 비번이 불일치하면 "id나 비번이 불일치합니다" 메시지를 클라이언트에게 보내줄 예정
		//"id나 비번이 불일치합니다" 메시지를
		//client에게 보내줄 예정
		//Model
		//request.setAttribute(String 속성명, Object 값)
		request.setAttribute("errMSG", "id나 비번이 불일치합니다");
		//out.println("===id나 비번이 불일치 합니다===<br/>");//loginOk.jsp 브라우저에 출력	
		System.out.println(request.getAttribute("errMSG"));//콘솔출력
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("loginForm2.jsp");
		dispatcher.forward(request, response);
		
		//response.sendRedirect("loginForm.jsp");
		}
%>
<%	
	//3. Model
	String loginId = (String) session.getAttribute("AUTH_USER_ID");
	String loginpw = (String) session.getAttribute("AUTH_USER_PWD");//비번->제거	
	
	long ct= session.getCreationTime();
	Date time = new Date(ct);
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");//p235 7라인
%>
<hr/>

* jsp에는 기본객체session이 이미 내장되어 있다.<br/>
* servlet에서는 HttpSession을 얻어야 한다.<br/>
<br/>
<ul>
<li>session의 id:<%=session.getId() %></li>
<li>session이 생성된 시간.session.getCreationTime() : <%=session.getCreationTime() %><br/>
									Date객체 이용:<%=time %><br/>
									포맷에 Date객체를 적용:<%=formatter.format(time) %><br/>
</li>
<li>최근접근시간 session.getLastAccessedTime():<%=session.getLastAccessedTime() %></li>
</ul>

<!--  불필요한 코드 영역 -->
<ol>
<li>세션에 저장된 id: <%=session.getAttribute("AUTH_USER_ID") %></li>
<li>세션에 저장된 id: <%=loginId%></li>
<li>세션에 저장된 pw: <%=session.getAttribute("AUTH_USER_PWD") %></li>
<li>세션에 저장된 pw: <%=loginpw%></li>
<li><%=loginId %>님 <a href="logout2.jsp">로그아웃</a></li>
</ol>

<a href="logout2.jsp"/>로그아웃</a>
</body>
</html>