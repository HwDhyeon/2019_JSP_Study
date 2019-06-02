<%@page import="java.io.PrintWriter"%>
<%@ page isErrorPage = "true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Directives Tag</title>
	</head>
	<body>
		<h4>오류가 발생했습니다.</h4>
		<h5>exception 내장 객체 변수</h5>
		<%
			exception.printStackTrace(new PrintWriter(out));
		%>
	</body>
</html>