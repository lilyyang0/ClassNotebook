<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="student.StudentDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생목록</title>
</head>
<body>
<h3>학생목록(studentList.jsp)</h3>
<h4>with StudentDTO</h4>
<hr/>
<pre>
http://localhost:8081/webPro/cf/studentList.jsp
</pre>
<%
		System.out.println("==List에 studentDTO객체 추가=");
		//List에 StudentDTO객체를 추가
		List<StudentDTO> list = new ArrayList<StudentDTO>();
		StudentDTO s1 = new StudentDTO("0012345","홍GD",new Date());
		//System.out.println("s1="+s1);
		//System.out.println("s1.toString()="+s1.toString());
		list.add(s1);
		list.add(new StudentDTO("0012346","세종대왕",new Date()));
		list.add(new StudentDTO("0012347","이순신",new Date()));
		out.println("<h4>List에 저장된 학생정보</h4>");
		for(int i=0;i<list.size() ;i++) {
			StudentDTO studentDto= list.get(i);
			System.out.println("studentDto="+studentDto);//콘솔출력
			out.println(studentDto+"<br/>");//브라우저출력
		}
		out.println("<hr/>");
		System.out.println("==\r\nSet에 studentDTO객체 추가=");
		//Set에 studentDTO객체를 추가
		//여기에서는 기본생성자를 이용해서 객체를 생성->필드값x, 필드초기
		//setter()를 이용해서 필드값 설정
		Set<StudentDTO> set = new HashSet<StudentDTO>();
		//1번째 학생
		StudentDTO sDto1= new StudentDTO();
		sDto1.setStuNo("0122225");
		sDto1.setStuName("진1");
		sDto1.setEnrollmentDate(new Date());
		set.add(sDto1);

		//2번째 학생
		StudentDTO sDto2= new StudentDTO();
		sDto2.setStuNo("0122226");
		sDto2.setStuName("진2");
		sDto2.setEnrollmentDate(new Date());
		set.add(sDto2);
		
		//3번째 학생
		StudentDTO sDto3= new StudentDTO();
		sDto3.setStuNo("0122227");
		sDto3.setStuName("진3");
		sDto3.setEnrollmentDate(new Date());
		set.add(sDto3);
		out.println("<h4>Set에 저장된 학생정보</h4>");
		for(StudentDTO studentDto :set) {
			System.out.println(studentDto);//콘솔 출력
			out.println(studentDto+"<br/>");//브라우저 출력
		}	
		out.println("<hr/>");
		System.out.println("==\r\nMap에 studentDTO객체 추가=");
		//Map에 studentDTO객체를 추가
		Map<String, StudentDTO> map = new HashMap<String,StudentDTO>();
		//put으로 넣기
		map.put("1",new StudentDTO("0033333","유관순",new Date()));
		//setMethod통해 넣기
		StudentDTO sDto = new StudentDTO();
		sDto.setStuNo("0033344");
		sDto.setStuName("신사임당");
		sDto.setEnrollmentDate(new Date());
		map.put("2", sDto);
		//Key는 중복되면 안되지만, value는 중복 가능하다.
		map.put("3", sDto);//map의 value는 중복허용
		StudentDTO sDto4= new StudentDTO();
		sDto4.setStuNo("0122228");
		sDto4.setStuName("진4");
		sDto4.setEnrollmentDate(new Date());
		map.put(sDto4.getStuNo(),sDto4);
		out.println("<h4>Map에 저장된 학생정보</h4>");
		Set<String> keys =map.keySet();
		Iterator<String> keyIterator = keys.iterator();
		while(keyIterator.hasNext()) {
			String key = keyIterator.next();
			StudentDTO value= map.get(key);
			System.out.println("\t"+key+":"+value);//콘솔출력
			out.println(key+":"+value+"<br/>");//브라우저출력
		}
		System.out.println();
		out.println("<hr/>");
%>
</body>
</html>