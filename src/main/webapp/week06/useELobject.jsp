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
		request.setAttribute("name", "홍길동");
		session.setAttribute("ID", "admin");
		application.setAttribute("appValue", "EL Object");
	%>
	
	<!--
	<h3>
		요청 URI : ${pageContext.request.requestURI } <br>
		code의 파라미터 : ${param.code } <br>
		쿠키의 JSESSIONID 값 : ${cookie.JSESSIONID.value } <br>
		request의 name 속성 : ${requestScope.name } <br>
		session의 ID 속성 : ${sessionScope.ID } <br>
		application의 appValue 속성 : ${applicationScope.appValue }
	</h3>
	-->
	
	<br><br>
	
	<h3>
		request의 name 속성 : ${name } <br>
		session의 ID 속성 : ${ID } <br>
		application의 appValue 속성 : ${appValue }
	</h3>

</body>
</html>