<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		public int multiply(int x, int y) {
		return x*y;
	}
	%>
	
		<h1>두 수의 곱 구하기</h1>
		<h2>13 * 19 = <%= multiply(13,19) %></h2>
</body>
</html>