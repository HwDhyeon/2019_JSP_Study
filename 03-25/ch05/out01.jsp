<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Implicit Objects</title>
	</head>
	<body>
		<%
			out.println("오늘의 날짜 및 시각 <br>");
			out.println(java.util.Calendar.getInstance().getTime());
		%>
	</body>
</html>