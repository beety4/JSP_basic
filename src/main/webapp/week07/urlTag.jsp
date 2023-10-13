<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.FileReader" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:url value="http://search.daum.net/search" var="searchUrl">
		<c:param name="code" value="blog" />
		<c:param name="place" value="park" />
	</c:url>
	<ul>
		<li>${searchUrl }</li>
		<li><c:url value="/outTag.jsp" /></li>
		<li><c:url value="/tokenTag.jsp" /></li>
	</ul>
</body>
</html>