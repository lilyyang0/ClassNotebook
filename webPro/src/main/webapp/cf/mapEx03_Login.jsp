<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hashtable 이용-로그인</title>
</head>
<body>
<h3>URL형식</h3>
<h4>protocol://domainName:port/path</h4>
<h4>프로토콜://ip주소:포트번호/컨텍스트페스/경로/파일명.확장자</h4>
<h4>http://localhost:8081/webPro/cf/mapEx03_Login.jsp</h4>
<h4>http://127.0.0.1:8081/webPro/cf/mapEx03_Login.jsp</h4>
<hr/>
<h2>로그인처리Page</h2>
<a href="http://127.0.0.1:8081/webPro/cf/loginForm.jsp">절대경로로 이동: http://127.0.0.1:8081/webPro/cf/loginForm.jsp</a><br/>
<a href="loginForm.jsp">상대경로로 이동: loginForm.jsp</a><br/>
<a href="./loginForm.jsp">상대경로로 이동: ./loginForm.jsp</a><br/>
<a href="../cf/loginForm.jsp">상대경로로 이동: ../cf/loginForm.jsp</a><br/>
<hr/>
<!-- html주석문 -->
<%--jsp주석문 
	이 문서는 client가 입력한 내용을 받아서 처리하는 서버측 페이지이다.
	client가 전송한 id와 비밀번호 data를 받아->회원정보와 비교->결과 출력 
--%>
<% //scriptlet(스크립틀릿)-java코드작성
	//client가 전송한 id와 비밀번호 data를 받기
	String inputedId=request.getParameter("userId");//id
	String inputedPwd=request.getParameter("userPwd");//비밀번호

	//hashtable 에 회원id와 비번 정보 미리 저장
	Map<String, String> map = new Hashtable<String, String>();
	map.put("spring", "1");
	map.put("summer", "12");
	map.put("fall", "123");
	map.put("winter", "1234");
	map.put("morning", "1235");
	
	//비즈니스로직수행
	//입력받은 내용과 저장된 내용이 일치하면 "로그인성공"
	//그렇지 않으면 "로그인fail"
	String result = null;
	if(map.containsKey(inputedId)) { //아이디인 키가 존재하는지 확인
		String memberPwd = map.get(inputedId);
		if(memberPwd.equals(inputedPwd)) {//아이디와 비밀번호를 비교
			result = "로그인성공";
		}else {
			result = "비번 불일치로 인한 로그인fail";
		}
		}else {
		result = "해당 id가 존재하지 않습니다";
	}
	System.out.println(result);	//콘솔 결과 출력
	out.println(result); //브라우저에 결과 출력
%>
</body>
</html>