<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%!
			String name, id, pw, major, protocol;
			String[] hobby;
		%>
		<%	
			request.setCharacterEncoding("utf-8");
			name = request.getParameter("name");
			id = request.getParameter("id");
			pw = request.getParameter("pw");
			major = request.getParameter("major");
			protocol = request.getParameter("protocol");
			hobby = request.getParameterValues("hobby");
			
			out.println("이름 : " + name + "<br>");
			out.println("아이디 : " + id + "<br>");
			out.println("비밀번호 : " + pw + "<br>");
			out.println("전공 : " + major + "<br>");
			out.println("프로토콜 : " + protocol + "<br>");
			out.println("취미 : " + Arrays.toString(hobby) + "<br>");
		%>
	</body>
</html>