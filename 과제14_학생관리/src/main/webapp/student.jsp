<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 예제 student.jsp</title>
</head>
<body>

	<h2>JavaBean StudentBean을 이용한 예제</h2>
	<% request.setCharacterEncoding("utf-8"); %>
	<jsp:useBean id="student" class="javabean.StudentBean" scope="page" />
	
	<hr>
	<h3>폼에서 전달받은 학생 정보를 그대로 자바빈 StudentBean에 저장</h3><p>
	<jsp:setProperty name="student" property="*"/>
	
	<hr>
	<h3>JavaBean StudentBean에 저장된 정보를 조회 출력</h3><p>
	
	학생 ID : <jsp:getProperty name="student" property="id"/><br>
	학생 이름 : <jsp:getProperty name="student" property="name"/><br>
	학생 번호 : <jsp:getProperty name="student" property="snum"/><br>
	나이 (생년) : <%=student.getAge() %>(<jsp:getProperty name="student" property="year"/>)<br>
	암호 : <jsp:getProperty name="student" property="pass"/><br>
	전자메일 : <jsp:getProperty name="student" property="email"/><br>
</body>
</html>