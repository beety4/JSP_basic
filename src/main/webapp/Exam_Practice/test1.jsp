<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String var = "Success!!";
	%>

	<form action="test1_go.jsp" method="get">
		<input type="text" name="id" value="admin"><br>
		<input type="Text" name="pw" value="password">
		<input type="submit">
	</form>
	<br>
	
	<jsp:include page="test1_tmp.jsp">
		<jsp:param name="a" value="4" />
	</jsp:include>
	
	
</body>
</html>