<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 이 페이지는 JSP에 의해 생성된 HTML 문서입니다 -->
	
	<%
		int result = 1;		// 곱셈 결과를 저장하는 변수
		
		/* 1부터 10까지 곱하는 반복문 */
		for(int cnt=1;cnt<=10;cnt++) {
			result *= cnt;
		}
	%>
	<br>
	1부터 10까지 곱한 값은 ? <%-- <%= result %> --%> 
</body>
</html>