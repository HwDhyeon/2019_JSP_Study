<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Exception</title>
	</head>
	<body>
		<p>오류가 발생했습니다.
		<p>예외 우형 : <%= exception.getClass().getName() %>
		<p>오류 메시지 : <%= exception.getMessage() %>
	</body>
</html>