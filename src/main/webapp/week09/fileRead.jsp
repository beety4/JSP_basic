<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.FileReader" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>절대 경로를 이용한 파일 읽기</h3>
	<%
		// 같은 WebContent 폴더에 있다고 해서 바로 읽어올 수 없다.
		// String path = "test.txt";
	
		// 반드시 workspace 경로를 통해 프로젝트 폴더까지 지정해 주어야 한다.
		String path = "C:\\test.txt";
		
		// 상대 경로 이용
		// 기본 최상위 루트는 webapp 이다.
		// String path = application.getRealPath("test.txt");
		BufferedReader br = new BufferedReader(new FileReader(path));
	
		while(true) {
			String str = br.readLine();
			if(str == null) {
				break;
			}
			out.println(str + "<br>");
		}
		br.close();
	%>
</body>
</html>