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
	<% 
		int[] list = {1,2,3,4,5,6,7,8,9,10};
	%>
	<c:if test="${list.length != 0 }">
		<c:forEach var="data" items="<%=list %>">
			${data }
		</c:forEach>
	</c:if>
	<c:if test="${list.length == 0 }">
		데이터가 없습니다.
	</c:if>
</body>
</html>