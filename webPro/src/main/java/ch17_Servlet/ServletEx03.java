package ch17_Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//서블릿(p498~)3
//P500예제-브라우저에 현재 시간을 출력하는 웹문서
//web.xml로 매핑하기
//요청주소 http://localhost:8081/webPro/myInfo
//실제 주소와 상관없는 경로와 파일명으로 불러줄 수 있다.
@WebServlet(urlPatterns="/myInfo")
public class ServletEx03 extends HttpServlet {

	//get방식 요청요청시 호출되는 메서드
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doGet()호출");//콘솔출력
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");
		
		//현재 시간을 브라우저에 출력
		//out은 jsp의 내장 객체, 지금은 class
		//out이라는 참조 변수 앞에 타입을 선언해줘야 한다.
		PrintWriter out =resp.getWriter();
		out.println("<html>");
		out.println("<head><title>myInfo</title></head>");
		out.println("<body>");
		out.println("이름 : 이순신<br/>");
		out.println("좋아하는 색: red<br/>");
		out.println("거주도시 : 서울<br/>");
		out.println("<h2>web.xml로 매핑하기</h2>");
		out.println("<h3>현재시간</h3>");
		out.println("<h4>Date객체:"+new Date()+"</h4>");
		out.println("<h4>Calendar:"+Calendar.getInstance()+"</h4>");
		Calendar cal = Calendar.getInstance();
		//cal.getTime();//Date리턴받는 메소드
		long millis =cal.getTimeInMillis();
		Date today= new Date(millis);
		out.println("<h4>Calendar를 이용하여 생성한 Date객체: "+ today+"</h4>");
		out.println("</body>");
		out.println("</html>");
	}
	//현재시간을 브라우저에 출력	
}
