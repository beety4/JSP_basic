<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat, java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.txtWhite {
		color : white;
	}
</style>
</head>
<body>
	<% 	request.setCharacterEncoding("utf-8");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String strDate = sdf.format(date);
	%>
	
	<jsp:useBean id="Book" class="week05.Book" />
	<jsp:setProperty property="*" name="Book" />
	<jsp:setProperty property="pubDate" name="Book"
		value="<%=strDate %>" />
	
	<h3>◆ 도서 등록 결과 ◆</h3>
	<table border="1">
		<tr>
		<th bgcolor="000099" class="txtWhite">코드</th>
		<th bgcolor="000099" class="txtWhite">제목</th>
		<th bgcolor="000099" class="txtWhite">저자</th>
		<th bgcolor="000099" class="txtWhite">출판일자</th>
		</tr>
		
		<tr><td>
			<jsp:getProperty property="code" name="Book" />
		</td><td>
			<jsp:getProperty property="title" name="Book" />
		</td><td>
			<jsp:getProperty property="writer" name="Book" />
		</td><td>
			<jsp:getProperty property="pubDate" name="Book" />
		</td></tr>
	</table>
</body>
</html>