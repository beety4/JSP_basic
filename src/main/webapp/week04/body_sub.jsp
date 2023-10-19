<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	body_sub에서 name 파라미터 값: <%=request.getParameter("name") %>
	<br>
	name 파라미터 값 목록:
	<ul>
		<%
			String[] nameArray = request.getParameterValues("name");
			String test = request.getParameter("name");
			System.out.println(test);
			for(String name : nameArray) {
		%>
			<li><%=name %></li>
		<% } %>
	</ul>
</body>
</html>