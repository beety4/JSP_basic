<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="week06.Member" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Member member = new Member("홍길동", 25);
		request.setAttribute("mem", member);
	%>
	
	<h3>멤버 정보</h3>
	이름 변경 전 : ${mem.getName() } / ${mem.getAge() } 세
	${mem.setName("이순신") }<br>
	이름 변경 후 : ${mem.getName() }
</body>
</html>