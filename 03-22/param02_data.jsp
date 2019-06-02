<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Action Tag</title>
	</head>
	<body>
		<%
			String title = request.getParameter("title");
		%>
		<h3><%= java.net.URLDecoder.decode(title) %></h3>
		Today is : <%= request.getParameter("date") %>
	</body>
</html>