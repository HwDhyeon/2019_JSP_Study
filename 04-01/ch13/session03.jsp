<%@page import="java.io.PrintWriter"%>
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
			String name, value;
			Enumeration<?> enumeration = session.getAttributeNames();
			int i = 0;
			PrintWriter printWriter = response.getWriter();
			
			while(enumeration.hasMoreElements()) {
				i++;
				name = enumeration.nextElement().toString();
				value = session.getAttribute(name).toString();
				printWriter.printf("설전된 세션의 속성 이름[%d] : %s<br>", i, name);
				printWriter.printf("설전된 세션의 속성 값[%d] : %s<br>", i, value);
			}
		%>
	</body>
</html>