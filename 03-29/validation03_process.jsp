<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Validation</title>
	</head>
	<body>
		<h3>입력에 성공했습니다.</h3>
		<%
			request.setCharacterEncoding("utf-8");
			String id = request.getParameter("id");
			String passwd = request.getParameter("passwd");
			
			out.println("아이디 : " + id + "<br>비밀번호 : " + passwd);
		%>
	</body>
</html>