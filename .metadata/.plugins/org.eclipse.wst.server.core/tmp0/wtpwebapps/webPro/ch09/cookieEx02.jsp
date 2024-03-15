<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키</title>
</head>
<body>
<h4>cookieEx02.jsp(교재p205)</h4>
<%--이 문서는 이미 만들어진 쿠키를 달라고 요청하여 쿠키에 담겨진 정보를 사용하는 문서 --%>
<%
//client에게 쿠키 달라고 요청
Cookie[] cookies = request.getCookies();
//반드시 client에게에게 제공한 쿠키가 존재하는지 확인해야 한다.
if(cookies==null || cookies.length==0){
	//쿠키가 delete되었다는 의미
	out.println("쿠키가 delete되었기에 정보를 사용할 수 없어요");
}else{
	//쿠키는 존재하지만, server가 원하는 정보가없는 경우가 있을 수 있다.
	boolean isCookie = false;
	for(int i=0;i<cookies.length;i++){
		Cookie temp=cookies[i];
		String name=temp.getName();
		//out.println("<h5>귀하(client)의 별명은"+value+"</h5>");
		
		if(name.equals("nickName")){
			isCookie=true;
			String value=temp.getValue();
			out.println("<h5>"+name+":"+value+"</h5>");
		}
	}
	if(isCookie==false){
		out.println("서버가 요구한 쿠키 정보를 찾을 수 없습니다.");
	}
}

%>
</body>
</html>