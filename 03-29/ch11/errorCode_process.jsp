<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Exception</title>
	</head>
	<body>
		<%
			String[] num = { request.getParameter("num1"), request.getParameter("num2") };
			int[] a = { Integer.parseInt(num[0]), Integer.parseInt(num[1]) };
			
			PrintWriter pw = response.getWriter();
			pw.printf("%d / %d = %d", a[0], a[1], (a[0] / a[1]));
		%>
	</body>
</html>