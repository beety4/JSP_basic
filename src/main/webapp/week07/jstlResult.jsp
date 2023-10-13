<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>JSTL 코어 태그 결과</h3>
	이름 : ${name }<br>
	성별 : ${gender }<br>
	나이 : ${age }<br>
	배열 데이터 : <c:forEach var="data" items="${array }">
					${data }
			   </c:forEach><br>
	하나씩 건너 뛴 데이터 :
	<c:forEach var="data" begin="0" end="4" step="2" items="${array }">
		${data }
	</c:forEach>
</body>
</html>