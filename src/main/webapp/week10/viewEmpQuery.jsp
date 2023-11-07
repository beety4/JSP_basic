<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="dbconn.jsp" %>
	<%
		int empno = Integer.parseInt(request.getParameter("empno"));
	
		Statement stat = null;
		ResultSet rs = null;
		
		String sql = "select * from emp where empno = " + empno;
		
		stat = conn.createStatement();
		rs = stat.executeQuery(sql);
		
		while(rs.next()) {
			request.setAttribute("empno", rs.getString("empno"));
			request.setAttribute("empname", rs.getString("empname"));
			request.setAttribute("empdept", rs.getString("empdept"));
			request.setAttribute("empjob", rs.getString("empjob"));
			request.setAttribute("empsal", rs.getString("empsal"));
		}
		
		rs.close();
		stat.close();
		conn.close();
	%>
	
	<jsp:forward page="viewEmpResult.jsp"></jsp:forward>
</body>
</html>