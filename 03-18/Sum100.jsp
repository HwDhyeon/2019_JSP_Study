<%@page import="java.util.stream.IntStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>100 Th</title>
	</head>
	<body>
		<%
			/*
			int sum = 0;
			for(int i=1;i<101;i++) {
				sum += i;
			}
			*/
			out.println("1 + 2 + 3 + ..... + 99 + 100 = " + IntStream.rangeClosed(1, 100).sum());
		%>
	</body>
</html>