<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.HashMap" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		HashMap<String, Object> mapData = new HashMap<String, Object>();
		mapData.put("id", "admin");
		mapData.put("today", new Date());
	%>
	
	<c:set var="map" value="<%=mapData %>" />
	<c:forEach var="m" items="${map }">
		${m.key} = ${m.value }<br>
	</c:forEach>
	<hr>
	
	<c:set var="intArray" value="<%=new int[]{1,2,3,4,5 }%>" />
	<c:forEach var="aVal" items="${intArray }" begin="2" end="4" varStatus="status">
		${status.index } - ${status.count } - [${aVal }]<br>
	</c:forEach>
	<hr>
	
	<h3>구구단 : 7단</h3>
	<ul>
		<c:forEach var="num" begin="1" end="9">
			<li> 7 * ${num } = ${7*num }
		</c:forEach>
	</ul>
</body>
</html>