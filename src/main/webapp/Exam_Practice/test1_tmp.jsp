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
		//String var = (String)request.getParameter("var");
	%>
	<hr>
	<h3>이건 include 파일이여 : ${param.var }</h3>
	<hr><br>
	
	${paramValues.a[0] }<br>
	${paramValues.a[1] }<br>
	
	${sum = (x,y) -> x+y; ''} <br>
	${sum(2,3) }
	${v = "hihi"; '' }
	
	<hr>
	${paramValues.a }
	
</body>
</html>