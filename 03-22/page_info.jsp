<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Directives Tag</title>
	</head>
	<body>
		<%@
			page info = "Date 클래스를 이용한 날짜 출력하기"
		%>
		Today is <%= new java.util.Date() %>
	</body>
</html>