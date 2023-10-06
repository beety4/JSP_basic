<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="week06.Member" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		List<Member> memberList = Arrays.asList(new Member("홍길동", 20),
												new Member("이순신", 54),
												new Member("유관순", 19),
												new Member("왕건", 42));
		request.setAttribute("member", memberList);
	%>
	
	${ageList = member.stream().map(mem -> mem.age).toList(); '' }
	${ageList }<br>
	${member.stream().map(map->map.age).filter(x->x>=40).toList() }<br>
	${member.stream().map(map->map.age).filter(x->x>=20).average().get() }<br>
	${member.stream().filter(m->m.age >= 20).map(m->m.age).average().get() }<br>
	${sortedMem = member.stream().sorted((x1,x2) -> x1.getAge()>x2.getAge()?1:-1).toList(); '' }
	${sortedMem.stream().map(m->m.name).toList() }<br>
	
	${nameList = member.stream().map(m->m.name).toList(); '' } <br>
	${nameList }<br>
	
</body>
</html>