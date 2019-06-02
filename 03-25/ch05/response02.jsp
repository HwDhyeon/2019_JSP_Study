<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Implicit Objects</title>
	</head>
	<body>
		<p>이 페이지는 1초마다 새로고침 됩니다.
		<%
			response.setIntHeader("Refresh", 1);
		%>
		<p><%= new java.util.Date() %>
	</body>
</html>