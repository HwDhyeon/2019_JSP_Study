<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Session</title>
	</head>
	<body>
		<%
			String user_id = session.getAttribute("userID").toString();
			String user_pw = session.getAttribute("userPW").toString();
			
			out.println("설정된 세션의 속성 값 [1] : " + user_id + "<br>");
			out.println("설정된 세션의 속성 값 [2] : " + user_pw);
		%>
	</body>
</html>