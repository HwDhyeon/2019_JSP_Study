<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Action Tag</title>
	</head>
	<body>
		<h3>Param Action Tag</h3>
		<jsp:forward page="param01_data.jsp">
			<jsp:param value="admin" name="id"/>
			<jsp:param value='<%= java.net.URLEncoder.encode("관리자") %>' name="name"/>
		</jsp:forward>
		<p>Java Server page</p>
	</body>
</html>