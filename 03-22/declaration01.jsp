<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Scripting Tag</title>
	</head>
	<body>
		<%!
			int data = 50;
		%>
		<%
			out.println("Value of the Varlable is : " + data);
		%>
	</body>
</html>