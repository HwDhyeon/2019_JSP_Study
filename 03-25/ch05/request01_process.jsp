<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Implicit Objects</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
			String useId = request.getParameter("id"), usePassword = request.getParameter("password");
			
			out.println("아이디 : " + useId + "<br>비밀번호 : " + usePassword);
		%>
	</body>
</html>