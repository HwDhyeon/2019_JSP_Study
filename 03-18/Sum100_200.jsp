<%@page import="java.util.stream.IntStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>1 to 200</title>
	</head>
	<body>
		<%
			/*
			int total = 0;
		
			for(int i=0;i<101;i++) {
				total += i;
			}
			
			out.println("Sum 1 to 100 = " + total + "<br>");
			
			for(int i=101;i<201;i++) {
				total += i;
			}

			out.println("Sum 1 to 200 = " + total + "<br>");
			*/
			
			out.println("Sum 1 to 100 = " + IntStream.rangeClosed(1, 100).sum() + "<br>");
			out.println("Sum 1 to 200 = " + IntStream.rangeClosed(1, 200).sum() + "<br>");
		%>
	</body>
</html>