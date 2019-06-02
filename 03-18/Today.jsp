<%@page import="java.util.GregorianCalendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Today</title>
	</head>
	<body>
		<%
			GregorianCalendar now = new GregorianCalendar();
			out.println("현재 날짜는 " + String.format("%TY년 %Tm월 %Td일", now, now, now) + "입니다.");
		%>
	</body>
</html>