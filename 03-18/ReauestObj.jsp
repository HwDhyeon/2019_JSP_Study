<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Obj</title>
	</head>
	<body>
		<%
			out.println("Server   : " + request.getServerName() + "<br>");
			out.println("Port     : " + request.getServerPort() + "<br>");
			out.println("Method   : " + request.getMethod() + "<br>");
			out.println("Protocol : " + request.getProtocol() + "<br>");
			out.println("URL      : " + request.getRequestURL() + "<br>");
			out.println("URI      : " + request.getRequestURI() + "<br>");
		%>
	</body>
</html>