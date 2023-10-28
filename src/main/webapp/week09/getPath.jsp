<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>application 기본 객체</h3>
	<%
		String realPath = application.getRealPath("/");
		String contPath = application.getContextPath();
	%>
	루트의 실제파일 경로명 = <%=realPath %><br>
	웹 어플리케이션의 URL 경로명 = <%=contPath %>
</body>
</html>