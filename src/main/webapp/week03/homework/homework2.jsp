<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table {
		border: 1px solid #ffffff;
		border-collapse: collapse;
		text-align: center;
	}
	th,td {
		border: 1px solid #ffffff;
	}
	.tTitle {
		background-color: darkblue;
		color: #ffffff;
	}
</style>
</head>
<body style="background-color: lightgray">
	<%
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String gender = request.getParameter("gender");
		String addr = request.getParameter("addr");
		String[] fav = request.getParameterValues("fav");
		String f = "";
		
		for(String val : fav) {
			f += val+" ";
		}
		String value = f.strip().replaceAll(" ", ",");
	%>
	<h4>&lt;개인정보 입력 결과&gt;</h4>
	<table>
		<tr class="tTitle">
			<td>구분</td>
			<td>내용</td>
		</tr><tr>
			<td>이름</td>
			<td><%= name %></td>
		</tr><tr>
			<td>나이</td>
			<td><%= age %></td>
		</tr><tr>
			<td>성별</td>
			<td><%= gender %></td>
		</tr><tr>
			<td>주소</td>
			<td><%= addr %></td>
		</tr><tr>
			<td>좋아하는 운동</td>
			<td><%= value %></td>
		</tr>
	</table>
</body>
</html>