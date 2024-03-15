<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>formEx</title>
<style>
/*css주석문*/
/*선택자 {css속성:값;css속성:값;}*/
/*선택자에는 tag, .클래스명 #id명*/
.c1 {width:100px;}
</style>
</head>
<body>
<h4>form(웹교재 p133)</h4>
<%--oninput은 input이벤트가 발생되면 parseInt(price.value)은 name 속성이 price인 요소의 값(value)을 정수화한다.
x.value는 name속성이 x인 요소의 값(value)을 의미
x.value=parseInt(price.value)은 price의 값을 정수화하여 output요소의 값으로 설정하라는 의미 --%>
<form name="frm" id="" method="get" action="ok.jsp" oninput="x.value=parseInt(price.value)" autocomplete="on">
<input type="submit" value="확인"/>
<input type="reset" value="취소"/>
<br/>
<input type="button" value="type속성값이button" onclick="alert('hello!!!');"/>
<button type="button">button요소(type="button")</button>
<button type="submit">button요소(type="submit")</button>
<button type="reset">button요소(type="reset")</button>
<fieldset>
<legend>html5의 여러 type속성값</legend>
<ul type="square">
<img src="http://localhost:8081/wp/imgs/submit.png" alt="submitIMG" title="전송이미지" class="c1"/ >
<input type="image" src="<%=request.getContextPath() %>/imgs/submit.png" title="submit역할이미지" class="c1"/>
<li><label class="reg" for="uid">학번:</label>
<input type="text" id="uid" placeholder="하이픈없이 입력"/></li>
<li><label class="reg" for="subj">HTML, CSS</label>
<input type="text" id="subj" value="열공해야합니다" readonly></li>
<% int bno=999; %>
<%--유저한테 노출시키지 않아도되지만 개발자입장에서는 필요로하는 중요한 데이터들을 넘긴다--%>
<li>★★★★hidden: <input type="hidden" name="bno" id="bno" value="<%=bno %>"/></li>
<li>검색 search:<input type="search" name="search" id="search" autofocus="autofocus" placeholder="검색어를 입력하세요"/></li>
<li><label for="price">범위 range: <span id="minPrice">1000</span>
</label><input type="range" name="price" id="price" value="1000" max="10000" min="100" step="1"/><span id="maxPrice">10000</span>
=>선택한값:<output name="x" for="price"></output>
</li>
<%--file은 파일 이름의 문자열 데이터 및 실제 파일을 복사해서 서버쪽에 복사본을 역할을 한다. --%>
<%--file upload 기능은 별도의 인코딩타입을 지정하여 처리해줘야한다. jsp교재 p700 --%>
<%--file 업로드 기능 구현시 반드시 method="post" enctype="multipart/form-data" 속성값으로 설정해야한다.--%>
<li><label for="file">file:<input type="file" name="file" id="file"/></label></li>
<%--black선택 시 ?col=%23000000, red - ##ff0000넘어간다--%>
<li><label for="col">color:</label><input type="color" name="col" id="col"/></li>
<%--2024년 2월 26일 선택시 date=2024-02-26--%>
<li><label for="d">date:</label><input type="date" name="date" id="d"/></li>
<%--2024년 3월 1일 오후 2시 29분 선택시 datetime-local=2024-03-01T14%3A29--%>
<li><label for="date-local">datetime-local:</label><input type="datetime-local" name="datetime-local" id="date-local"/></li>
<%--2024년 2월 선택 시 month=2024-02--%>
<li><label for="mon">month</label><input type="month" name="month" id="mon"/></li>
<%--2024년 1월 1일을 선택시 2024-W01--%>
<li><label for="wk">week</label><input type="week" name="week" id="wk"/></li>
<%--오후 1시 31분 선택시 time=13%3A31--%>
<li><label for="t">time</label><input type="time" name="time" id="t"/></li>
<%--browser마다 지원현태가 다르다. javaScript, jQuery를 이용해서 유효성 검사를 해야한다.--%>
<%--완전한이메일주소(@xxx.com)을 입력하지 않으면 다음 페이지로 넘어가지 않는다 --%>
<li><label for="email">email:<input type="email" name="eamil" id="email"/></label></li>
<li><label for="tel">tel:<input type="tel" name="tel" id="tel"/></label></li>
<%--http://를 적지 않으면 페이지가 넘어가지 않는 것을 확인할 수 있다 --%>
<li><label for="url">url:<input type="url" name="url" id="url"/></label></li>
<li><label for="orderQty">주문수량 number:
</label><input type="number" name="orderQty" id="orderQty" value="1" max="10" min="0" step="2"/>
</li>
</ul>
</fieldset>
<ul>
<li>이름(maxlength):<input type="text" name="uName" id="uName" value="성이름" required="required" size="15" maxlength="10"/></li>
<li>비번(size속성="20"):<input type="password" name="uPwd" id="uPwd" value="12345" required="required" size="20"/></li>
<li>성별(단일선택):
		<input type="radio" name="gender" id="Female" value="F" checked="checked"/><label for="Female">여성</label>
		<input type="radio" name="gender" id="male" value="M"/><label for="male">남성</label>
</li>
<li>좋아하는 동물(다중선택):
<input type="checkbox" name="animals" id="ao1" value="dog"/><label for="ao1">개</label>
<input type="checkbox" name="animals" id="ao2" value="cat"/><label for="ao2">고양이</label>
<input type="checkbox" name="animals" id="ao3" value="panda"/><label for="ao3">판다</label>
<input type="checkbox" name="animals" id="ao4" value="rabbit"/><label for="ao4">토끼</label>
</li>
<li>언어:select는 유일하게 자식element를 가진다.
<select name="language" id="language">
	<option value="0">선택</option>
	<option value="korean">Korean</option>
	<option value="english">English</option>
	<option value="french">French</option>
	<option value="spanish">Spanish</option>
	<option value="japanese">Japanese</option>
	<option value="chinese">Chinese</option>
</select>
</li>
<li>언어(다중선택):
<select name="language1" id="language1" size="7" multiple="multiple">
	<option value="1">선택</option>
	<option value="korean">Korean</option>
	<option value="english">English</option>
	<option value="french">French</option>
	<option value="spanish">Spanish</option>
	<option value="japanese">Japanese</option>
	<option value="chinese">Chinese</option>
	<option value="hebrew">hebrew</option>
</select>
</li>
<li>브라우저 선택(input-datalist):
  <input list="browsers" name="browsers">
  <datalist id="browsers">
    <option value="Edge">
    <option value="Firefox">
    <option value="Chrome">
    <option value="Opera">
    <option value="Safari">
  </datalist>
</form>
</li>
<li>자기소개(textarea의 rows,cols속성 적용):<textarea name="mySelf" id="mySelf" rows="5" cols="30"/>tx기본값</textarea></li>
<li>자기소개(textarea의 style 속성 적용 style="css속성명:값;"):<textarea name="mySelf1" id="mySelf1" style="height:80px;width:120px;color:red;"/>tx기본값</textarea></li>
<li><form oninput="result.value=parseInt(num1.value)+parseInt(num2.value)">
<input type="number" name="num1" value="0">
+<input type="number" name="num2" value="0">
=<output name="result" for="num"></output></form>
</li>
<li><label>자바왕이 되기까지 진행률 99%</label>
<progress value="90" max="100"></progress></li>
<li>
	<label>적절한 점유율</label>
	<meter value="0.5" optimum="0.8"></meter>
</li>
<li>
	<label>초과된 값</label>
	<meter min="1024" max="10240" low="2048" high="8192" value="9216"></meter>
</li>
<li>
<form>
  <label for="nomod">수정불가:</label><br>
  <input type="text" id="nomod" name="nomod" value="수정불가부분" disabled><br>
  <label for="nomod">수정가능:</label><br>
  <input type="text" id="nomod" name="nomod" value="수정가능부분">
</form>
</li>
</ul>
<hr/>
<pre>
<a href="https://www.w3schools.com/html/html_forms.asp" target="_blank">form참고</a>
</pre>

<hr/>
</body>
</html>