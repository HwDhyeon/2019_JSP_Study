<%@page import="java.util.GregorianCalendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Times</title>
	</head>
	<body>
		<%
			GregorianCalendar now = new GregorianCalendar();
		
			String data = String.format("%TF", now);
			String time = String.format("%TT", now);
			
			out.println("Tody date : " + data + "<br>");
			out.println("This time : " + time + "<br>");
			
			out.println(String.format("%TY년 %Tm월 %Td일", now, now, now) + "<br>");
			out.println(String.format("%TH시 %TM분 %TS초", now, now, now) + "<br>");
		%>
	</body>
</html>